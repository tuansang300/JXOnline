/*****************************************************************************************
//	�浵��ɫѡ��
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-9-12
------------------------------------------------------------------------------------------
*****************************************************************************************/
#include "KWin32.h"
#include <time.h>
#include <crtdbg.h>
#include "KEngine.h"
#include "SelSavedCharacter.h"
#include "../../Core/Src/CoreShell.h"
#include "../../Core/Src/KNpcRes.h"

#pragma comment (lib, "Ws2_32.lib")

extern iCoreShell*		g_pCoreShell;

static unsigned gs_holdrand = time(NULL);

static inline unsigned _Rand()
{
    gs_holdrand = gs_holdrand * 244213L + 1541021L;
     
    return gs_holdrand;
}

static void RandMemSet(int nSize, unsigned char *pbyBuffer)
{
    _ASSERT(nSize);
    _ASSERT(pbyBuffer);

    while (nSize--)
    {
        *pbyBuffer++ = (unsigned char)_Rand();
    }
}
//--------------------------------------------------------------------------
//	���ܣ����캯��
//--------------------------------------------------------------------------
KSelSavedCharacter::KSelSavedCharacter()
{
	m_AccountName[0] = 0;
	m_szProcessingRoleName[0] = 0;
	m_Status = SSC_S_IDLE;
	m_nNumCharacter = 0;
	m_nRequestTime = 0;
	m_nLastOperResult = SSC_R_NOTHING;
}

KSelSavedCharacter::~KSelSavedCharacter()
{
	FreeData();
}

//--------------------------------------------------------------------------
//	���ܣ���ʼ�����ɫ����
//--------------------------------------------------------------------------
int KSelSavedCharacter::LoadData()
{
	if (m_Status != SSC_S_IDLE)
		return false;
	g_NetConnectAgent.UpdateClientRequestTime(false);
	m_Status = SSC_S_LOADING_DATA;
	return true;
}

//--------------------------------------------------------------------------
//	���ܣ�����ֵΪ÷��SSC_STATUS��ȡֵ֮һ������ֵ�����뿴��ص�ֵ����
//--------------------------------------------------------------------------
int	KSelSavedCharacter::GetStatus()
{
	return ((int)m_Status);
}

//--------------------------------------------------------------------------
//	���ܣ��������һ�β����ķ��ؽ��
//--------------------------------------------------------------------------
void KSelSavedCharacter::SetLastActionResult(int nResult)
{
	m_nLastOperResult = nResult;
}

//--------------------------------------------------------------------------
//	���ܣ��õ����һ�β����ķ��ؽ��
//--------------------------------------------------------------------------
int	KSelSavedCharacter::GetLastActionResult()
{
	int	nRet = m_nLastOperResult;
	m_nLastOperResult = SSC_R_NOTHING;
	return nRet;
}

//--------------------------------------------------------------------------
//	���ܣ���ȡ��ɫ����Ŀ
//--------------------------------------------------------------------------
int KSelSavedCharacter::GetCharacterNum()
{
	return m_nNumCharacter;
}

//--------------------------------------------------------------------------
//	���ܣ���ȡĳ����ɫ����Ϣ
//--------------------------------------------------------------------------
int	KSelSavedCharacter::GetCharacterInfo(int nIndex, KNewCharacterInfo* pInfo)
{
	if (nIndex >= 0 && nIndex < m_nNumCharacter)
	{
		if (pInfo)
		{
			strcpy(pInfo->Name, m_BaseInfo[nIndex].szName);
			pInfo->Gender = m_BaseInfo[nIndex].Sex;
			pInfo->Attribute = m_BaseInfo[nIndex].Series;
			pInfo->nLevel = m_BaseInfo[nIndex].Level;
		}
		return true;
	}
	return false;
}

//--------------------------------------------------------------------------
//	���ܣ������½�һ����ɫ
//--------------------------------------------------------------------------
int KSelSavedCharacter::NewCharacter(KNewCharacterInfo* pData)
{
	if (!pData)
		return false;
	if (pData->Gender < 0 || pData->Gender >= ROLE_NO || pData->Attribute < 0 || pData->Attribute >= series_num)
		return false;
	int nNameLen = strlen(pData->Name);
	if (nNameLen < 1)
		return false;

	char	Data[sizeof(TProcessData) + sizeof(NEW_PLAYER_COMMAND)];
	TProcessData*	pNetCommand = (TProcessData*)&Data;
	NEW_PLAYER_COMMAND* pInfo = (NEW_PLAYER_COMMAND*)pNetCommand->pDataBuffer;
	pInfo->m_btRoleNo = pData->Gender;
	pInfo->m_btSeries = pData->Attribute;
	pInfo->m_NativePlaceId = pData->NativePlaceId;
	memcpy(pInfo->m_szName, pData->Name, nNameLen);
	pInfo->m_szName[nNameLen] = '\0';
	
	strcpy(m_szProcessingRoleName, pData->Name);
	
	pNetCommand->nProtoId = c2s_newplayer;
	pNetCommand->nDataLen = sizeof(NEW_PLAYER_COMMAND) - sizeof(pInfo->m_szName) + nNameLen + 1/* sizeof( '\0' ) */;
	pNetCommand->ulIdentity = 0;

	g_NetConnectAgent.SendMsg(&Data, sizeof(TProcessData) - sizeof(pNetCommand->pDataBuffer) + pNetCommand->nDataLen);
	g_NetConnectAgent.UpdateClientRequestTime(false);

	m_Status = SSC_S_CREATING_CHARACTER;
	m_nLastOperResult = SSC_R_NOTHING;
	return true;
}

//--------------------------------------------------------------------------
//	���ܣ�����ɾ��һ����ɫ
//--------------------------------------------------------------------------
int KSelSavedCharacter::DeleteCharacter(int nIndex, const char* pszPassword)
{
	if (m_Status != SSC_S_STANDBY || nIndex < 0 || nIndex >= m_nNumCharacter || pszPassword == NULL)
		return false;

	tagDBDelPlayer	NetCommand;
	
	RandMemSet(sizeof(tagDBDelPlayer), (BYTE*)&NetCommand);	// random memory for make a cipher
	
	NetCommand.cProtocol = c2s_roleserver_deleteplayer;
	strcpy(NetCommand.szAccountName, m_AccountName);
	strcpy(NetCommand.Password.szPassword, pszPassword);
	strncpy(NetCommand.szRoleName, m_BaseInfo[nIndex].szName, sizeof(NetCommand.szRoleName));
	g_NetConnectAgent.SendMsg(&NetCommand, sizeof(tagDBDelPlayer));
	memset(&NetCommand.Password.szPassword, 0, sizeof(NetCommand.Password.szPassword));
	g_NetConnectAgent.UpdateClientRequestTime(false);
	strcpy(m_szProcessingRoleName, m_BaseInfo[nIndex].szName);

	m_Status = SSC_S_DELETING_CHARACTER;
	m_nLastOperResult = SSC_R_NOTHING;
	return true;
}

//--------------------------------------------------------------------------
//	���ܣ�ѡ��ĳ����ɫ
//--------------------------------------------------------------------------
int	KSelSavedCharacter::SelCharacter(int nIndex)
{
	if (m_Status != SSC_S_STANDBY || nIndex < 0 || nIndex >= m_nNumCharacter)
		return false;

	tagDBSelPlayer	NetCommand;
	NetCommand.cProtocol = c2s_dbplayerselect;
	strcpy(NetCommand.szRoleName, m_BaseInfo[nIndex].szName);
	g_NetConnectAgent.SendMsg(&NetCommand, sizeof(tagDBSelPlayer));
	g_NetConnectAgent.UpdateClientRequestTime(false);
	g_DebugLog("Send Select Message to Server");
	strcpy(m_szProcessingRoleName, m_BaseInfo[nIndex].szName);
	m_Status = SSC_S_LOADING_CHARACTER;
	m_nLastOperResult = SSC_R_NOTHING;
	return true;
}

//--------------------------------------------------------------------------
//	���ܣ��ͷŽ�ɫ����
//--------------------------------------------------------------------------
void KSelSavedCharacter::FreeData()
{
	m_Status = SSC_S_IDLE;
	m_nNumCharacter = 0;
	m_nRequestTime = 0;
	m_nLastOperResult = SSC_R_NOTHING;
}

void KSelSavedCharacter::SetCharacterBaseInfo(int nNum, const RoleBaseInfo *pInfo)
{
	if (nNum > MAX_PLAYER_PER_ACCOUNT)
		nNum = MAX_PLAYER_PER_ACCOUNT;

	m_nNumCharacter = 0;
	for (int i = 0; i < nNum; i++)
	{
		if (pInfo[i].szName[0])
			m_nNumCharacter++;
		else
			break;
	}

	if (m_nNumCharacter > 0)
		memcpy(m_BaseInfo, pInfo, sizeof(RoleBaseInfo) * m_nNumCharacter);
	m_Status = SSC_S_STANDBY;
	m_nLastOperResult = SSC_R_UPDATE;
}

// -------------------------------------------------------------------------
// ����		: KUiSelPlayer::AcceptNetMsg
// ����		: ����������Ϣ
// -------------------------------------------------------------------------
void KSelSavedCharacter::AcceptNetMsg(void* pMsgData)
{
	if (m_Status != SSC_S_STANDBY && m_Status != SSC_S_IDLE)
	{
		PROTOCOL_MSG_TYPE	eProtoId = *(PROTOCOL_MSG_TYPE*)pMsgData;
		switch(eProtoId)
		{
		case s2c_roleserver_getrolelist_result:
			if (m_Status == SSC_S_LOADING_DATA)
			{
				TProcessData* pProtocol = (TProcessData*)pMsgData;
				SetCharacterBaseInfo(pProtocol->pDataBuffer[0], (RoleBaseInfo*)&pProtocol->pDataBuffer[1]);
				g_NetConnectAgent.UpdateClientRequestTime(true);
			}
			break;
		case s2c_notifyplayerlogin:
			if (m_Status == SSC_S_LOADING_CHARACTER)
			{
				tagNotifyPlayerLogin* pNPL = (tagNotifyPlayerLogin*)pMsgData;
				if (strcmp((const char*)pNPL->szRoleName, m_szProcessingRoleName) == 0 && pNPL->bPermit)
				{
					// ��ʼ��GameSvr��������
					if (g_NetConnectAgent.ConnectToGameSvr((const unsigned char*)&pNPL->nIPAddr, pNPL->nPort, &pNPL->guid))
					{
						g_NetConnectAgent.UpdateClientRequestTime(false);
						m_nLastOperResult = SSC_R_IN_PROGRESS;
					}
					else
					{
						m_nLastOperResult = SSC_R_FAILED;
						m_Status = SSC_S_STANDBY;
					}

					// �Ͽ������ص�����
					g_NetConnectAgent.DisconnectClient();
					g_NetConnectAgent.UpdateClientRequestTime(true);

				}
				else
				{
						m_nLastOperResult = SSC_R_SVR_DOWN;
						m_Status = SSC_S_STANDBY;
				}
			}
			break;
		case s2c_rolenewdelresponse:
			tagNewDelRoleResponse* pResponse = (tagNewDelRoleResponse*)pMsgData;
//			if (strcmp(pResponse->szRoleName, m_szProcessingRoleName) == 0)	/* �������԰� */
			{
				if (m_Status == SSC_S_CREATING_CHARACTER)
				{
					if (pResponse->bSucceeded)
					{
						g_NetConnectAgent.UpdateClientRequestTime(false);
						m_nLastOperResult = SSC_R_CREATE_ROLE_SUCCEED;
						m_Status = SSC_S_LOADING_CHARACTER;
					}
					else
					{
						g_NetConnectAgent.UpdateClientRequestTime(true);
						m_nLastOperResult = SSC_R_INVALID_ROLENAME;
						m_Status = SSC_S_STANDBY;
					}
				}
				else if (m_Status == SSC_S_DELETING_CHARACTER)
				{
					g_NetConnectAgent.UpdateClientRequestTime(true);
					if (pResponse->bSucceeded)
					{
						m_nLastOperResult = SSC_R_UPDATE;

						for (int i = 0; i < m_nNumCharacter; i++)
						{
							if (strcmp(m_BaseInfo[i].szName, m_szProcessingRoleName) == 0)
							{
								m_nNumCharacter--;
								for (; i < m_nNumCharacter; i++)
									m_BaseInfo[i] = m_BaseInfo[i + 1];
								break;
							}
						}
					}
					else
					{
						m_nLastOperResult = SSC_R_FAILED;
					}
					m_Status = SSC_S_STANDBY;
				}
			}
			break;
		}
	}
}

void KSelSavedCharacter::SetAccountName(const char* pAccount)
{
	if (pAccount)
		strcpy(m_AccountName, pAccount);
}