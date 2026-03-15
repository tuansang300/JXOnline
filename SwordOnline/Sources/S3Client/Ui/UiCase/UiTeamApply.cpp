/*****************************************************************************************
//	����--����������
//	Copyright : Kingsoft 2003
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2003-2-26
*****************************************************************************************/
#include "KWin32.h"
#include "KIniFile.h"
#include "../elem/wnds.h"
#include "../Elem/WndMessage.h"
#include "../UiBase.h"
#include "UiTeamApply.h"
#include "../UiSoundSetting.h"
#include "../../../core/src/gamedatadef.h"
#include "../../../core/src/CoreShell.h"

extern iCoreShell*		g_pCoreShell;

#define	SCHEME_INI	"�������.ini"

KUiTeamApply* KUiTeamApply::m_pSelf = NULL;

//--------------------------------------------------------------------------
//	���ܣ��������������ʾ���򷵻�ʵ��ָ��
//--------------------------------------------------------------------------
KUiTeamApply* KUiTeamApply::GetIfVisible()
{
	if (m_pSelf && m_pSelf->IsVisible())
		return m_pSelf;
	return NULL;
}

KUiTeamApply::KUiTeamApply()
{
	m_pDataList = NULL;
	m_nCount = 0;
}

KUiTeamApply::~KUiTeamApply()
{
	Clear();
}

//--------------------------------------------------------------------------
//	���ܣ��򿪴��ڣ�����Ψһ��һ�������ʵ��
//--------------------------------------------------------------------------
KUiTeamApply* KUiTeamApply::OpenWindow()
{
	if (m_pSelf == NULL)
	{
		m_pSelf = new KUiTeamApply;
		if (m_pSelf)
			m_pSelf->Initialize();
	}
	if (m_pSelf)
	{
		UiSoundPlay(UI_SI_WND_OPENCLOSE);
		m_pSelf->m_RefuseBtn.CheckButton(
			g_pCoreShell->TeamOperation(TEAM_OI_GD_REFUSE_INVITE_STATUS, 0, 0));
		g_pCoreShell->TeamOperation(TEAM_OI_COLLECT_NEARBY_LIST, 0, 0);
		m_pSelf->BringToTop();
		m_pSelf->Show();
	}
	return m_pSelf;
}

//��ʼ��
void KUiTeamApply::Initialize()
{
	AddChild(&m_RefuseBtn);
	AddChild(&m_ApplyBtn);
	AddChild(&m_NewBtn);
	AddChild(&m_CloseBtn);
	AddChild(&m_TeamList);
	AddChild(&m_ListScroll);
	AddChild(&m_RefreshBtn);
	m_TeamList.SetScrollbar(&m_ListScroll);

	Wnd_AddWindow(this);

	char Scheme[256];
	g_UiBase.GetCurSchemePath(Scheme, 256);
	LoadScheme(Scheme);

}

//--------------------------------------------------------------------------
//	���ܣ��رմ��ڣ�ͬʱ����ѡ���Ƿ�ɾ������ʵ��
//--------------------------------------------------------------------------
void KUiTeamApply::CloseWindow()
{
	if (m_pSelf)
	{
		m_pSelf->Destroy();
		m_pSelf = NULL;
	}
}

void KUiTeamApply::LoadScheme(const char* pScheme)
{
	if (m_pSelf)
	{
		char		Buff[128];
		KIniFile	Ini;
		sprintf(Buff, "%s\\%s", pScheme, SCHEME_INI);
		if (Ini.Load(Buff))
		{
			m_pSelf->Init(&Ini, "Main");
			m_pSelf->m_RefuseBtn .Init(&Ini, "RefuseBtn");
			m_pSelf->m_ApplyBtn  .Init(&Ini, "ApplyBtn");
			m_pSelf->m_NewBtn    .Init(&Ini, "NewBtn");
			m_pSelf->m_CloseBtn  .Init(&Ini, "CloseBtn");
			m_pSelf->m_RefreshBtn.Init(&Ini, "RefreshBtn");
			m_pSelf->m_TeamList	.Init(&Ini, "TeamList");
			m_pSelf->m_ListScroll.Init(&Ini, "Scroll");
		}
	}
}

//�Լ��½�������
void KUiTeamApply::OnNewTeam()
{
	g_pCoreShell->TeamOperation(TEAM_OI_CREATE, 0, 0);
	CloseWindow();
}

//���ں���
int KUiTeamApply::WndProc(unsigned int uMsg, unsigned int uParam, int nParam)
{
	int nRet = 0;
	switch(uMsg)
	{
	case WND_N_BUTTON_CLICK:
		if (uParam == (unsigned int)(KWndWindow*)&m_NewBtn)
		{
			OnNewTeam();
		}
		else if (uParam == (unsigned int)(KWndWindow*)&m_RefuseBtn)
		{
			g_pCoreShell->TeamOperation(TEAM_OI_REFUSE_INVITE, 0, nParam);
			m_ApplyBtn.Enable(!nParam);
		}
		else if (uParam == (unsigned int)(KWndWindow*)&m_ApplyBtn)
			OnApply();
		else if (uParam == (unsigned int)(KWndWindow*)&m_CloseBtn)
			CloseWindow();
		else if (uParam == (unsigned int)(KWndWindow*)&m_RefreshBtn)
		{
			g_pCoreShell->TeamOperation(TEAM_OI_COLLECT_NEARBY_LIST, 0, 0);
		}
		break;
	case WND_N_SCORLLBAR_POS_CHANGED:
		if (uParam == (unsigned int)(KWndWindow*)&m_ListScroll)
			m_TeamList.SetTopItemIndex(nParam);
		break;
	default:
		nRet = KWndShowAnimate::WndProc(uMsg, uParam, nParam);
	}
	return nRet;
}

void KUiTeamApply::UpdateData(KUiTeamItem* pList, int nCount)
{
	if (m_pSelf == NULL)
		return;
	m_pSelf->Clear();
	if (pList && nCount)
	{		
		m_pSelf->m_pDataList = (KUiTeamItem*)malloc(sizeof(KUiTeamItem) * nCount);
		if (m_pSelf->m_pDataList)
		{
			memcpy(m_pSelf->m_pDataList, pList, sizeof(KUiTeamItem) * nCount);
			m_pSelf->m_nCount = nCount;
			m_pSelf->m_TeamList.SetContent((unsigned char*)m_pSelf->m_pDataList, nCount, sizeof(KUiPlayerItem),
				(char*)&(m_pSelf->m_pDataList->Leader.Name) - (char*)m_pSelf->m_pDataList);
			nCount = m_pSelf->m_TeamList.GetVisibleItemCount();
		}
	}
	int bRefused = m_pSelf->m_RefuseBtn.IsButtonChecked();
	m_pSelf->m_ApplyBtn.Enable(!bRefused);
}

void KUiTeamApply::OnApply()
{
	int nSel = m_TeamList.GetCurSel();
	if (nSel >= 0 && nSel < m_nCount)
	{
		g_pCoreShell->TeamOperation(TEAM_OI_APPLY,
			(unsigned int)&m_pDataList[nSel], 0);
		CloseWindow();
	}
}

void KUiTeamApply::Clear()
{
	m_TeamList.SetContent(0, 0, 0, 0);
	if (m_pDataList)
	{
		free(m_pDataList);
		m_pDataList = NULL;
	}
	m_nCount = 0;
}
