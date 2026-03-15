#include "KCore.h"
#include "MyAssert.H"
#include "KTabFile.h"
#include "KNpc.h"
#include "KItem.h"
#include "KItemSet.h"
#ifndef _STANDALONE
#include "../../Headers/S3DBInterface.h"
#else
#include "S3DBInterface.h"
#endif

#ifndef _SERVER
#include "ImgRef.h"
#include "KPlayer.h"
#include "../../Represent/iRepresent/iRepresentshell.h"
#include "KMagicDesc.h"
#endif

KItem	Item[MAX_ITEM];
int GetRandomNumber(int nMin, int nMax);

KItem::KItem()
{
	::memset(&m_CommonAttrib,    0, sizeof(m_CommonAttrib));
	::memset(m_aryBaseAttrib,    0, sizeof(m_aryBaseAttrib));
	::memset(m_aryRequireAttrib, 0, sizeof(m_aryRequireAttrib));
	::memset(m_aryMagicAttrib,   0, sizeof(m_aryMagicAttrib));
	::memset(&m_GeneratorParam,	 0, sizeof(m_GeneratorParam));
	m_nCurrentDur = -1;
#ifndef _SERVER
	::memset(&m_Image,   0, sizeof(KRUImage));
#endif
	m_nIndex = 0;
}

KItem::~KItem()
{
}

void* KItem::GetRequirement(IN int nReq)
{
	int i = sizeof(m_aryRequireAttrib)/sizeof(m_aryRequireAttrib[0]);
	if (nReq >= i)
		return NULL;

	return &m_aryRequireAttrib[nReq];
}
/******************************************************************************
����:	��item�ϵ�ħ��Ӧ�õ�NPC����
��ڣ�	pNPC: ָ��NPC��ָ�룬nMagicAcive���򿪵�����������Ŀ
����:	ħ����Ӧ�á�
		���幤����KNpc�ĳ�Ա������ɡ�
		KItem ������û�г�Ա�������޸�
******************************************************************************/
void KItem::ApplyMagicAttribToNPC(IN KNpc* pNPC, IN int nMagicActive /* = 0 */) const
{
	_ASSERT(this != NULL);
	_ASSERT(nMagicActive >= 0);

	int nCount = nMagicActive;
	int i;

	// �������Ե���NPC
	for (i = 0; i < sizeof(m_aryBaseAttrib)/sizeof(m_aryBaseAttrib[0]); i++)
	{
		const KItemNormalAttrib* pAttrib;
		pAttrib = &(m_aryBaseAttrib[i]);
		if (INVALID_ATTRIB != pAttrib->nAttribType)
		{
			pNPC->ModifyAttrib(pNPC->m_Index, (void *)pAttrib);
		}
	}
	// ħ�����Ե���NPC
	for (i = 0; i < sizeof(m_aryMagicAttrib)/sizeof(m_aryMagicAttrib[0]); i++)
	{
		const KItemNormalAttrib* pAttrib;
		pAttrib = &(m_aryMagicAttrib[i]);

		if (INVALID_ATTRIB != pAttrib->nAttribType)
		{
			if (i & 1)						// Ϊ�������Ǻ�׺��i���㿪ʼ��
			{
				if (nCount > 0)
				{
					pNPC->ModifyAttrib(pNPC->m_Index, (void *)pAttrib);
					nCount--;
				}
			}
			else
			{
				pNPC->ModifyAttrib(pNPC->m_Index, (void *)pAttrib);
			}
		}
	}
}

/******************************************************************************
����:	��item�ϵ�ħ����NPC�����Ƴ�
��ڣ�	pNPC: ָ��NPC��ָ�룬nMagicAcive���򿪵�����������Ŀ
����:	ħ����Ӧ�á�
		���幤����KNpc�ĳ�Ա������ɡ�
		KItem ������û�г�Ա�������޸�
******************************************************************************/
void KItem::RemoveMagicAttribFromNPC(IN KNpc* pNPC, IN int nMagicActive /* = 0 */) const
{
	_ASSERT(this != NULL);
	_ASSERT(nMagicActive >= 0);

	int nCount = nMagicActive;
	int	i;
	
	// �������Ե���NPC
	for (i = 0; i < sizeof(m_aryBaseAttrib)/sizeof(m_aryBaseAttrib[0]); i++)
	{
		const KItemNormalAttrib* pAttrib;
		pAttrib = &(m_aryBaseAttrib[i]);
		if (INVALID_ATTRIB != pAttrib->nAttribType)
		{
			KItemNormalAttrib RemoveAttrib;
			RemoveAttrib.nAttribType = pAttrib->nAttribType;
			RemoveAttrib.nValue[0] = -pAttrib->nValue[0];
			RemoveAttrib.nValue[1] = -pAttrib->nValue[1];
			RemoveAttrib.nValue[2] = -pAttrib->nValue[2];
			pNPC->ModifyAttrib(pNPC->m_Index, (void *)&RemoveAttrib);
		}
	}

	for (i = 0; i < sizeof(m_aryMagicAttrib)/sizeof(m_aryMagicAttrib[0]); i++)
	{
		const KItemNormalAttrib* pAttrib;
		pAttrib = &(m_aryMagicAttrib[i]);

		if (INVALID_ATTRIB != pAttrib->nAttribType)		// TODO: Ϊ -1 ����һ������?
		{
			KItemNormalAttrib RemoveAttrib;
			if (i & 1)						// Ϊ�������Ǻ�׺��i���㿪ʼ��
			{
				if (nCount > 0)
				{
					RemoveAttrib.nAttribType = pAttrib->nAttribType;
					RemoveAttrib.nValue[0] = -pAttrib->nValue[0];
					RemoveAttrib.nValue[1] = -pAttrib->nValue[1];
					RemoveAttrib.nValue[2] = -pAttrib->nValue[2];
					pNPC->ModifyAttrib(pNPC->m_Index, (void *)&RemoveAttrib);
					nCount--;
				}
			}
			else
			{
				RemoveAttrib.nAttribType = pAttrib->nAttribType;
				RemoveAttrib.nValue[0] = -pAttrib->nValue[0];
				RemoveAttrib.nValue[1] = -pAttrib->nValue[1];
				RemoveAttrib.nValue[2] = -pAttrib->nValue[2];
				pNPC->ModifyAttrib(pNPC->m_Index, (void *)&RemoveAttrib);
			}
		}
	}
}

/******************************************************************************
����:	��item�ϵĵ�N������ħ������Ӧ�õ�NPC����
��ڣ�	pNPC: ָ��NPC��ָ��
����:	ħ����Ӧ�á�
		���幤����KNpc�ĳ�Ա������ɡ�
		KItem ������û�г�Ա�������޸�
******************************************************************************/
void KItem::ApplyHiddenMagicAttribToNPC(IN KNpc* pNPC, IN int nMagicActive) const
{
	_ASSERT(this != NULL);
	if (nMagicActive <= 0)
		return;

	const KItemNormalAttrib* pAttrib;
	pAttrib = &(m_aryMagicAttrib[(nMagicActive << 1) - 1]);	// ��׺Ϊ�����������Գ�2��һ
	if (-1 != pAttrib->nAttribType)
	{
		pNPC->ModifyAttrib(pNPC->m_Index, (void *)pAttrib);
	}
}

/******************************************************************************
����:	��item�ϵĵ�N������ħ�����Դ�NPC�����Ƴ�
��ڣ�	pNPC: ָ��NPC��ָ�룬nMagicActive����n��ħ������
����:	ħ�����Ƴ���
		���幤����KNpc�ĳ�Ա������ɡ�
		KItem ������û�г�Ա�������޸�
******************************************************************************/
void KItem::RemoveHiddenMagicAttribFromNPC(IN KNpc* pNPC, IN int nMagicActive) const
{
	_ASSERT(this != NULL);
	if (nMagicActive <= 0)
		return;

	const KItemNormalAttrib* pAttrib;
	pAttrib = &(m_aryMagicAttrib[(nMagicActive << 1) - 1]);	// ��׺Ϊ�����������Գ�2��һ
	if (-1 != pAttrib->nAttribType)
	{
		KItemNormalAttrib RemoveAttrib;
		RemoveAttrib.nAttribType = pAttrib->nAttribType;
		RemoveAttrib.nValue[0] = -pAttrib->nValue[0];
		RemoveAttrib.nValue[1] = -pAttrib->nValue[1];
		RemoveAttrib.nValue[2] = -pAttrib->nValue[2];
		pNPC->ModifyAttrib(pNPC->m_Index, (void *)&RemoveAttrib);
	}
}

/******************************************************************************
����:	���������ļ��е�����,Ϊitem�ĸ����ֵ
��ڣ�	pData: �������������ļ�������
����:	�ɹ�ʱ���ط���, ���³�Ա������ֵ:
			m_CommonAttrib,m_aryBaseAttrib,m_aryRequireAttrib
		ʧ��ʱ������
˵��:	CBR: Common,Base,Require
******************************************************************************/
BOOL KItem::SetAttrib_CBR(IN const KBASICPROP_EQUIPMENT* pData)
{
	_ASSERT(pData != NULL);
	
	BOOL bEC = FALSE;
	if (pData)
	{
		//SetAttrib_Common(pData);
		*this = *pData;		// ���������
		SetAttrib_Base(pData->m_aryPropBasic);
		SetAttrib_Req(pData->m_aryPropReq);
		bEC = TRUE;
	}
	return bEC;
}

BOOL KItem::SetAttrib_Base(const KEQCP_BASIC* pBasic)
{
	for (int i = 0;
		 i < sizeof(m_aryBaseAttrib)/sizeof(m_aryBaseAttrib[0]); i++)
	{
		KItemNormalAttrib* pDst;
		const KEQCP_BASIC* pSrc;
		pDst = &(m_aryBaseAttrib[i]);
		pSrc = &(pBasic[i]);
		pDst->nAttribType = pSrc->nType;
		pDst->nValue[0] = ::GetRandomNumber(pSrc->sRange.nMin, pSrc->sRange.nMax);
		pDst->nValue[1] = 0;	// RESERVED
		pDst->nValue[2] = 0;	// RESERVED
		if (pDst->nAttribType == magic_durability_v)
			SetDurability(pDst->nValue[0]);
	}
	if (m_nCurrentDur == 0)	// ˵��û���;ö�����
		m_nCurrentDur = -1;
	return TRUE;
}

BOOL KItem::SetAttrib_Req(const KEQCP_REQ* pReq)
{
	for (int i = 0;
		 i < sizeof(m_aryRequireAttrib)/sizeof(m_aryRequireAttrib[0]); i++)
	{
		KItemNormalAttrib* pDst;
		pDst = &(m_aryRequireAttrib[i]);
		pDst->nAttribType = pReq[i].nType;
		pDst->nValue[0] = pReq[i].nPara;
		pDst->nValue[1] = 0;	// RESERVED
		pDst->nValue[2] = 0;	// RESERVED
	}
	return TRUE;
}

/******************************************************************************
����:	���ݴ��������, Ϊitem��ħ�����Ը���ֵ
��ڣ�	pMA: ��������
����:	�ɹ�ʱ���ط���, ���³�Ա������ֵ:
			m_aryMagicAttrib
		ʧ��ʱ������
******************************************************************************/
BOOL KItem::SetAttrib_MA(IN const KItemNormalAttrib* pMA)
{
	if (NULL == pMA)
		{ _ASSERT(FALSE); return FALSE; }

	for (int i = 0; i < sizeof(m_aryMagicAttrib) / sizeof(m_aryMagicAttrib[0]); i++)
	{
		m_aryMagicAttrib[i] = pMA[i];
		// ����ĥ��
		if (m_aryMagicAttrib[i].nAttribType == magic_indestructible_b)
		{
			SetDurability(-1);
		}
	}
	return TRUE;
}

/******************************************************************************
����:	���ݴ��������, Ϊitem��ħ�����Ը���ֵ
��ڣ�	pMA: ��������
����:	�ɹ�ʱ���ط���, ���³�Ա������ֵ:
			m_aryMagicAttrib
		ʧ��ʱ������
******************************************************************************/
BOOL KItem::SetAttrib_MA(IN const KMACP* pMA)
{
	if (NULL == pMA)
		{ _ASSERT(FALSE); return FALSE; }

	for (int i = 0; i < sizeof(m_aryMagicAttrib) / sizeof(m_aryMagicAttrib[0]); i++)
	{
		const KMACP* pSrc;
		KItemNormalAttrib* pDst;
		pSrc = &(pMA[i]);
		pDst = &(m_aryRequireAttrib[i]);

		pDst->nAttribType = pSrc->nPropKind;
		pDst->nValue[0] =  ::GetRandomNumber(pSrc->aryRange[0].nMin, pSrc->aryRange[0].nMax);
		pDst->nValue[1] =  ::GetRandomNumber(pSrc->aryRange[1].nMin, pSrc->aryRange[1].nMax);
		pDst->nValue[2] =  ::GetRandomNumber(pSrc->aryRange[2].nMin, pSrc->aryRange[2].nMax);
	}
	return TRUE;
}

void KItem::operator = (const KBASICPROP_EQUIPMENT& sData)
{
	KItemCommonAttrib* pCA = &m_CommonAttrib;
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = sData.m_nDetailType;
	pCA->nParticularType = sData.m_nParticularType;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->bStack			 = sData.m_bStack;
	pCA->nWidth			 = sData.m_nWidth;
	pCA->nHeight		 = sData.m_nHeight;
	pCA->nPrice			 = sData.m_nPrice;
	pCA->nLevel			 = sData.m_nLevel;
	pCA->nSeries		 = sData.m_nSeries;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);

	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif
}

void KItem::operator = (const KBASICPROP_MEDMATERIAL& sData)
{
	// ��ֵ: ��ͬ���Բ���
	KItemCommonAttrib* pCA = &(m_CommonAttrib);
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = sData.m_nDetailType;
	pCA->nParticularType = sData.m_nParticularType;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->bStack			 = sData.m_bStack;
	pCA->nWidth			 = sData.m_nWidth;
	pCA->nHeight		 = sData.m_nHeight;
	pCA->nPrice			 = sData.m_nPrice;
	pCA->nLevel			 = sData.m_nLevel;
	pCA->nSeries		 = sData.m_nSeries;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);
#endif
	// ��ֵ: �������Բ���
	KItemNormalAttrib* pBA = m_aryBaseAttrib;
	pBA[0].nAttribType = sData.m_nAttrib1_Type;
	pBA[0].nValue[0]   = sData.m_nAttrib1_Para;
	pBA[1].nAttribType = sData.m_nAttrib2_Type;
	pBA[1].nValue[0]   = sData.m_nAttrib2_Para;
	pBA[2].nAttribType = sData.m_nAttrib3_Type;
	pBA[2].nValue[0]   = sData.m_nAttrib3_Para;
	
	// ��ֵ: �������Բ���: ��
	// ��ֵ: ħ�����Բ���: ��
#ifndef _SERVER
	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif
}

void KItem::operator = (const KBASICPROP_MINE& sData)
{
	// ��ֵ: ��ͬ���Բ���
	KItemCommonAttrib* pCA = &m_CommonAttrib;
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = sData.m_nDetailType;
	pCA->nParticularType = sData.m_nParticularType;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->bStack			 = sData.m_bStack;
	pCA->nWidth			 = sData.m_nWidth;
	pCA->nHeight		 = sData.m_nHeight;
	pCA->nPrice			 = sData.m_nPrice;
	pCA->nLevel			 = sData.m_nLevel;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);
#endif
	// ��ֵ: �������Բ���: ��
	// ��ֵ: ħ�����Բ���: ��
#ifndef _SERVER
	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif
}

void KItem::operator = (const KBASICPROP_QUEST& sData)
{
	// ��ֵ: ��ͬ���Բ���
	KItemCommonAttrib* pCA = &m_CommonAttrib;
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = sData.m_nDetailType;
	pCA->nParticularType = 0;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->bStack			 = 0;
	pCA->nWidth			 = sData.m_nWidth;
	pCA->nHeight		 = sData.m_nHeight;
	pCA->nPrice			 = 0;
	pCA->nLevel			 = 1;
	pCA->nSeries		 = -1;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);
#endif
	ZeroMemory(m_aryBaseAttrib, sizeof(m_aryBaseAttrib));
	// ��ֵ: �������Բ���: ��
	ZeroMemory(m_aryRequireAttrib, sizeof(m_aryBaseAttrib));
	// ��ֵ: ħ�����Բ���: ��
	ZeroMemory(m_aryMagicAttrib, sizeof(m_aryBaseAttrib));
#ifndef _SERVER
	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif
}

void KItem::operator = (const KBASICPROP_TOWNPORTAL& sData)
{
	// ��ֵ: ��ͬ���Բ���
	KItemCommonAttrib* pCA = &m_CommonAttrib;
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = 0;
	pCA->nParticularType = 0;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->bStack			 = 0;
	pCA->nWidth			 = sData.m_nWidth;
	pCA->nHeight		 = sData.m_nHeight;
	pCA->nPrice			 = sData.m_nPrice;
	pCA->nLevel			 = 1;
	pCA->nSeries		 = -1;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);
#endif
	ZeroMemory(m_aryBaseAttrib, sizeof(m_aryBaseAttrib));
	// ��ֵ: �������Բ���: ��
	ZeroMemory(m_aryRequireAttrib, sizeof(m_aryBaseAttrib));
	// ��ֵ: ħ�����Բ���: ��
	ZeroMemory(m_aryMagicAttrib, sizeof(m_aryBaseAttrib));
#ifndef _SERVER
	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif
}

void KItem::operator = (const KBASICPROP_MEDICINE& sData)
{
	// ��ֵ: ��ͬ���Բ���
	KItemCommonAttrib* pCA = &m_CommonAttrib;
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = sData.m_nDetailType;
	pCA->nParticularType = sData.m_nParticularType;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->bStack			 = sData.m_bStack;
	pCA->nWidth			 = sData.m_nWidth;
	pCA->nHeight		 = sData.m_nHeight;
	pCA->nPrice			 = sData.m_nPrice;
	pCA->nLevel			 = sData.m_nLevel;
	pCA->nSeries		 = sData.m_nSeries;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);
#endif
	// ��ֵ: �������Բ���
	ZeroMemory(m_aryBaseAttrib, sizeof(m_aryBaseAttrib));
	KItemNormalAttrib* pBA = m_aryBaseAttrib;
	pBA[0].nAttribType = sData.m_aryAttrib[0].nAttrib;
	pBA[0].nValue[0]   = sData.m_aryAttrib[0].nValue;
	pBA[0].nValue[1]   = sData.m_aryAttrib[0].nTime;
	pBA[1].nAttribType = sData.m_aryAttrib[1].nAttrib;
	pBA[1].nValue[0]   = sData.m_aryAttrib[1].nValue;
	pBA[1].nValue[1]   = sData.m_aryAttrib[1].nTime;
	
	ZeroMemory(m_aryRequireAttrib, sizeof(m_aryRequireAttrib));
	ZeroMemory(m_aryMagicAttrib, sizeof(m_aryMagicAttrib));

#ifndef _SERVER
	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif

}

void KItem::operator = (const KBASICPROP_EQUIPMENT_UNIQUE& sData)
{
	// ��ֵ: ��ͬ���Բ���
	KItemCommonAttrib* pCA = &m_CommonAttrib;
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = sData.m_nDetailType;
	pCA->nParticularType = sData.m_nParticularType;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->nPrice			 = sData.m_nPrice;
	pCA->nLevel			 = sData.m_nLevel;
	pCA->nSeries		 = sData.m_nSeries;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);

	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif
}

//flying add this overloaded operator to generate a gold item.
void KItem::operator = (const KBASICPROP_EQUIPMENT_GOLD& sData)
{
	KItemCommonAttrib* pCA = &m_CommonAttrib;	
	pCA->nItemGenre		 = sData.m_nItemGenre;
	pCA->nDetailType	 = sData.m_nDetailType;
	pCA->nParticularType = sData.m_nParticularType;
	pCA->nObjIdx		 = sData.m_nObjIdx;
	pCA->nPrice			 = sData.m_nPrice;
	pCA->nLevel			 = sData.m_nLevel;
	pCA->nSeries		 = sData.m_nSeries;
	pCA->nWidth			 = sData.m_nWidth;
	pCA->nHeight		 = sData.m_nHeight;
	::strcpy(pCA->szItemName,  sData.m_szName);
#ifndef _SERVER
	::strcpy(pCA->szImageName, sData.m_szImageName);
	::strcpy(pCA->szIntro,	   sData.m_szIntro);
	m_Image.Color.Color_b.a = 255;
	m_Image.nFrame = 0;
	m_Image.nISPosition = IMAGE_IS_POSITION_INIT;
	m_Image.nType = ISI_T_SPR;
	::strcpy(m_Image.szImage, pCA->szImageName);
	m_Image.uImage = 0;
#endif
}

BOOL KItem::Gen_Equipment_Unique(const KBASICPROP_EQUIPMENT* pEqu,
								 const KBASICPROP_EQUIPMENT_UNIQUE* pUni)
{
	_ASSERT(this != NULL);
	_ASSERT(pEqu != NULL);
	_ASSERT(pUni != NULL);

	if (NULL == pEqu || NULL == pUni)
		{ _ASSERT(FALSE); return FALSE; }

	// ��ֵ: ��ͬ���Բ���
	*this = *pUni;		// ���������
	KItemCommonAttrib* pCA = &m_CommonAttrib;
	pCA->bStack  = pEqu->m_bStack;
	pCA->nWidth  = pEqu->m_nWidth;
	pCA->nHeight = pEqu->m_nHeight;

	SetAttrib_Base(pEqu->m_aryPropBasic);		// ��ֵ: �������Բ���
	SetAttrib_Req(pUni->m_aryPropReq);			// ��ֵ: �������Բ���
	SetAttrib_MA(pUni->m_aryMagicAttribs);		// ��ֵ: ħ�����Բ���

	return TRUE;
}

void KItem::Remove()
{
	m_nIndex = 0;
}

BOOL KItem::SetBaseAttrib(IN const KItemNormalAttrib* pAttrib)
{
	if (!pAttrib)
		return FALSE;

	for (int i = 0; i < sizeof(m_aryBaseAttrib) / sizeof(m_aryBaseAttrib[0]); i++)
	{
		m_aryBaseAttrib[i] = pAttrib[i];
	}
	return TRUE;
}

BOOL KItem::SetRequireAttrib(IN const KItemNormalAttrib* pAttrib)
{
	if (!pAttrib)
		return FALSE;

	for (int i = 0; i < sizeof(m_aryRequireAttrib) / sizeof(m_aryRequireAttrib[0]); i++)
	{
		m_aryRequireAttrib[i] = pAttrib[i];
	}
	return TRUE;
}

BOOL KItem::SetMagicAttrib(IN const KItemNormalAttrib* pAttrib)
{
	return SetAttrib_MA(pAttrib);
}

//------------------------------------------------------------------
//	ĥ�𣬷���ֵ��ʾʣ���;ö�
//------------------------------------------------------------------
int KItem::Abrade(IN const int nRandRange)
{
	if (m_nCurrentDur == -1 || nRandRange == 0)	// ����ĥ��
		return -1;

	if (g_Random(nRandRange) == 0)	// nRandRange��֮һ�ĸ���
	{
		m_nCurrentDur--;
		if (m_nCurrentDur == 0)
		{
			return 0;
		}
	}
	return m_nCurrentDur;
}

#ifndef _SERVER
void KItem::Paint(int nX, int nY)
{
	m_Image.oPosition.nX = nX;
	m_Image.oPosition.nY = nY;
	m_Image.bRenderStyle = IMAGE_RENDER_STYLE_ALPHA;
	g_pRepresent->DrawPrimitives(1, &m_Image, RU_T_IMAGE, TRUE);
}

void KItem::GetDesc(char* pszMsg, bool bShowPrice, int nPriceScale, int nActiveAttrib)
{
	char	szColor[item_number][32] = 
	{
		"",
		"<color=White>",
		"",
		"",
		"<color=Yellow>",
	};

	if (m_CommonAttrib.nItemGenre == item_equip)
	{
		if (m_CommonAttrib.nLevel > 10)	// �ƽ�װ��
		{
			strcpy(szColor[item_equip], "<color=Yellow>");
		}
		else if (m_aryMagicAttrib[0].nAttribType)	// ħ��װ��
		{
			strcpy(szColor[item_equip], "<color=Blue>");
		}
		else
		{
			strcpy(szColor[item_equip], "<color=White>");
		}
	}
	strcpy(pszMsg, szColor[m_CommonAttrib.nItemGenre]);
	strcat(pszMsg, m_CommonAttrib.szItemName);
	strcat(pszMsg, "\n");
	if (bShowPrice && nPriceScale > 0)
	{
		char szPrice[32];
		sprintf(szPrice, "�۸�%d", m_CommonAttrib.nPrice / nPriceScale);
		strcat(pszMsg, szPrice);
		strcat(pszMsg, "\n");
	}
	if (m_CommonAttrib.nItemGenre == item_equip)
	{
		switch(m_CommonAttrib.nSeries)
		{
		case series_metal:
			strcat(pszMsg, "<color=White>�������ԣ�<color=Metal>��");
			break;
		case series_wood:
			strcat(pszMsg, "<color=White>�������ԣ�<color=Wood>ľ");
			break;
		case series_water:
			strcat(pszMsg, "<color=White>�������ԣ�<color=Water>ˮ");
			break;
		case series_fire:
			strcat(pszMsg, "<color=White>�������ԣ�<color=Fire>��");
			break;
		case series_earth:
			strcat(pszMsg, "<color=White>�������ԣ�<color=Earth>��");
			break;
		}
	}
	strcat(pszMsg, "\n");
	strcat(pszMsg, "<color=White>");
	strcat(pszMsg, m_CommonAttrib.szIntro);
	strcat(pszMsg, "\n");
	for (int i = 0; i < 7; i++)
	{
		if (!m_aryBaseAttrib[i].nAttribType)
		{
			continue;
		}
		if (m_aryBaseAttrib[i].nAttribType == magic_durability_v)
		{
			char	szDurInfo[32];
			if (m_nCurrentDur == -1)
				sprintf(szDurInfo, "<color=Yellow>����ĥ��<color=White>");
			else
				sprintf(szDurInfo, "�;ö� %3d / %3d", GetDurability(), GetMaxDurability());
			strcat(pszMsg, szDurInfo);
		}
		else
		{
			char* pszInfo = (char *)g_MagicDesc.GetDesc(&m_aryBaseAttrib[i]);
			if (!pszInfo || !pszInfo[0])
				continue;
			strcat(pszMsg, pszInfo);
		}
		strcat(pszMsg, "\n");
	}
	for (i = 0; i < 6; i++)
	{
		if (!m_aryRequireAttrib[i].nAttribType)
		{
			continue;
		}
		char* pszInfo = (char *)g_MagicDesc.GetDesc(&m_aryRequireAttrib[i]);
		if (!pszInfo || !pszInfo[0])
			continue;
		if (Player[CLIENT_PLAYER_INDEX].m_ItemList.EnoughAttrib(&m_aryRequireAttrib[i]))
		{
			strcat(pszMsg, "<color=White>");
		}
		else
		{
			strcat(pszMsg, "<color=Red>");
		}
		strcat(pszMsg, pszInfo);
		strcat(pszMsg, "\n");
	}

	for (i = 0; i < 6; i++)
	{
		if (!m_aryMagicAttrib[i].nAttribType)
		{
			continue;
		}
		char* pszInfo = (char *)g_MagicDesc.GetDesc(&m_aryMagicAttrib[i]);
		if (!pszInfo || !pszInfo[0])
			continue;
		if ((i & 1) == 0)
		{
			strcat(pszMsg, "<color=HBlue>");
		}
		else
		{
			if ((i>>1) < nActiveAttrib)
			{
				strcat(pszMsg, "<color=HBlue>");
			}
			else
			{
				strcat(pszMsg, "<color=DBlue>");
			}
		}
		strcat(pszMsg, pszInfo);
		strcat(pszMsg, "\n");
	}
}
#endif

int KItem::GetMaxDurability()
{
	for (int i = 0; i < 7; i++)
	{
		if (m_aryBaseAttrib[i].nAttribType == magic_durability_v)
		{
			return m_aryBaseAttrib[i].nValue[0];
		}
	}
	return -1;
}

int KItem::GetTotalMagicLevel()
{
	int nRet = 0;
	for (int i = 0; i < 6; i++)
	{
		nRet += m_GeneratorParam.nGeneratorLevel[i];
	}
	return nRet;
}

int KItem::GetRepairPrice()
{
	if (ItemSet.m_sRepairParam.nMagicScale == 0)
		return 0;

	if (GetGenre() != item_equip)
		return 0;

	if (m_nCurrentDur == -1)
		return 0;

	int nMaxDur = GetMaxDurability();
	int nSumMagic = GetTotalMagicLevel();

	if (nMaxDur <= 0)
		return 0;


	return m_CommonAttrib.nPrice * ItemSet.m_sRepairParam.nPriceScale / 100 * (nMaxDur - m_nCurrentDur) / nMaxDur * (ItemSet.m_sRepairParam.nMagicScale + nSumMagic) / ItemSet.m_sRepairParam.nMagicScale;
}

BOOL KItem::CanBeRepaired()
{
	if (GetGenre() != item_equip)
		return FALSE;

	if (m_nCurrentDur == -1)
		return FALSE;

	int nMaxDur = GetMaxDurability();
	if (m_nCurrentDur == nMaxDur)
		return FALSE;

	return TRUE;
}