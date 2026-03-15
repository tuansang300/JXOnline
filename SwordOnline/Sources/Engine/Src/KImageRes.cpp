#include "KWin32.h"
#include "KImageRes.h"
#include "JpgLib.h"
#include "KPakFile.h"
#include "KDDraw.h"
#include "crtdbg.h"
#include "KFilePath.h"
#include "KPakList.h"

KImageRes::KImageRes()
{
}

KImageRes::~KImageRes()
{
}

// �ͷ��ڴ�
void KImageRes::Release()
{
}

//***********************************************************
ImageResBmp::ImageResBmp()
{
	ResetVar();
}

ImageResBmp::~ImageResBmp()
{
	Release();
}

// ����Ա������Ϊ��ʼֵ
void ImageResBmp::ResetVar()
{
	m_pData = NULL;
	m_nWidth = 0;
	m_nHeight = 0;
	m_nType = ISI_T_BITMAP16;

	m_nMemUsed = 0;
	m_bLastFrameUsed = false;
}

// �����ڴ���Դ
bool ImageResBmp::CreateImage(const char* szImage, int nWidth, int nHeight, unsigned int nType)
{
	if (!szImage || !szImage[0])
		return false;

	if (nType != ISI_T_BITMAP16)
		goto error;

	Release();

	m_nWidth = nWidth;
	m_nHeight = nHeight;

	m_pData = new BYTE[nWidth * nHeight * 2];
	m_nMemUsed = nWidth * nHeight * 2;
	return true;

error:
	Release();
	return false;
}

// ���ļ�������Դ
bool ImageResBmp::LoadImage(char* szImage, unsigned int nType)
{
	if (!szImage || !szImage[0] || nType != ISI_T_BITMAP16)
		return false;

	Release();

	m_nType = nType;

	if(!LoadJpegFile(szImage))
			return false;

	return true;
}

bool ImageResBmp::LoadJpegFile(char* szImage)
{
	KPakFile	File;
	PBYTE		pJpg = NULL;
	JPEG_INFO	JpegInfo;

	if (File.Open(szImage))
	{
		// ���ڰ���
		pJpg = new BYTE[File.Size()];
		if (!pJpg)
			goto error;

		// read file into mem buffer
		File.Read(pJpg, File.Size());

		bool bRGB565 = true;
		if(g_pDirectDraw && g_pDirectDraw->GetRGBBitMask16() == RGB_555)
			bRGB565 = false;

		// decode init
		if (!jpeg_decode_init(!bRGB565, TRUE))
			goto error;

		// decode info
		if (!jpeg_decode_info(pJpg, &JpegInfo))
			goto error;

		m_nWidth = JpegInfo.width;
		m_nHeight = JpegInfo.height;

		m_pData = new BYTE[m_nWidth * m_nHeight * 2];

		// decode frame
		if (!jpeg_decode_data((PWORD)m_pData, &JpegInfo))
			goto error;

		SAFE_DELETE_ARRAY(pJpg);
		m_nMemUsed = m_nWidth * m_nHeight * 2;
	}
	else
	{
		// �ڰ���
		//to do
		//��ѹ�����ж�ȡsprͷ�����ݣ���дm_pData��m_nWidth,m_nHeight�������������
	}

	return true;

error:
	SAFE_DELETE_ARRAY(pJpg);
	Release();
	return false;
}

// �ͷ��ڴ�
void ImageResBmp::Release()
{
	SAFE_DELETE_ARRAY(m_pData);
	ResetVar();
}

//*************************************************************

ImageResSpr::ImageResSpr()
{
	ResetVar();
}

ImageResSpr::~ImageResSpr()
{
	Release();
}

// ����Ա������Ϊ��ʼֵ
void ImageResSpr::ResetVar()
{
	m_bInPackage = false;
	ZeroMemory((void*)&m_Header, sizeof(SPRHEAD));
	m_pPal24		= NULL;
	m_pPal16		= NULL;
	m_pFrameInfo	= NULL;

	m_nMemUsed = 0;
	m_bLastFrameUsed = false;
}

// �����ڴ���Դ
bool ImageResSpr::CreateImage(const char* szImage, int nWidth, int nHeight, unsigned int nType)
{
	return false;
}

// ���ļ�������Դ
bool ImageResSpr::LoadImage(char* szImage, unsigned int nType)
{
	if (!szImage || !szImage[0] || nType != ISI_T_SPR)
		return false;

	Release();

	m_nType = nType;

	if(!LoadSprFile(szImage))
		return false;

	return true;
}

bool ImageResSpr::LoadSprFile(char* szImage)
{
	_ASSERT(szImage);
	if(!szImage || !szImage[0])
		return false;

	if(!g_pPakList)
		return false;

	KFile file;
	char Pack_Path[MAX_PATH];
	Pack_Path[0] = '\\';
	g_GetPackPath(Pack_Path + 1, (LPSTR)szImage);
	
	if(Pack_Path[1] == '\\') 
		szImage = Pack_Path + 1;
	else 
		szImage = Pack_Path;

	bool bInPackage = false;
	PBYTE pTemp, pFileData = NULL;
	if(file.Open((LPSTR)szImage))
	{
		SPRHEAD*	pHeader;
		SPROFFS* 	pOffset;
		PBYTE		pSprite;

		pFileData = pTemp = new BYTE[file.Size()];
		if (!pTemp)
			goto error;

		// read data from file
		file.Read(pTemp, file.Size());

		// check file header setup sprite member
		pHeader = (SPRHEAD*)pTemp;
		if (!g_MemComp(pHeader->Comment, " SPR", 3))
			goto error;

		m_Header = *pHeader;

		// setup palette pointer
		pTemp += sizeof(SPRHEAD);
		m_pPal24 = new KPAL24[pHeader->Colors];
		memcpy(m_pPal24, pTemp, pHeader->Colors * sizeof(KPAL24));

		// setup offset pointer
		pTemp += pHeader->Colors * sizeof(KPAL24);
		pOffset = (SPROFFS*)pTemp;

		// setup sprite pointer
		pTemp += pHeader->Frames * sizeof(SPROFFS);
		pSprite = (LPBYTE)pTemp; // ���ƫ��

		m_pFrameInfo = new SPRFRAME*[m_Header.Frames];
		ZeroMemory(m_pFrameInfo, sizeof(SPRFRAME*) * m_Header.Frames);

		for(int i=0; i<pHeader->Frames; i++)
		{
			SPRFRAME* pFrame = (SPRFRAME*)(pSprite + pOffset[i].Offset); 
			
			m_pFrameInfo[i] = (SPRFRAME*)new BYTE[pOffset[i].Length];
			memcpy(m_pFrameInfo[i], pFrame, pOffset[i].Length);
		}

		SAFE_DELETE_ARRAY(pFileData);
	}
	else
	{
		m_bInPackage = true;
		// File in package - use new KPakList API
		XPackElemFileRef ElemRef;
		if(!g_pPakList->FindElemFile(szImage, ElemRef))
			goto error;

		//to do
		//Read spr header data from package, populate m_Header and m_pPal24

		m_pFrameInfo = new SPRFRAME*[m_Header.Frames];
		ZeroMemory(m_pFrameInfo, sizeof(SPRFRAME*) * m_Header.Frames);
	}

	return true;

error:
	SAFE_DELETE_ARRAY(pFileData);
	Release();
	return false;
}

bool ImageResSpr::PrepareFrameData(char *pszImage, int nFrame)
{
	if(m_bInPackage)
	{
		//to do
		//��ѹ�����ж�ȡ���spr�ĵ�nFrame֡�����ݣ����䲢��дm_pFrameInfo[nFrame]
	}
	return true;
}

int ImageResSpr::GetPixelAlpha(int nFrame, int x, int y)
{
	int nAlpha = 0;

	if (nFrame < 0 && nFrame >= m_Header.Frames)
		return nAlpha;

	if(!m_pFrameInfo[nFrame])
		return nAlpha;

	SPRFRAME* pFrame = m_pFrameInfo[nFrame];
	SPRHEAD *header = &m_Header;

	if (header && pFrame)
	{
		x -= pFrame->OffsetX;
		y -= pFrame->OffsetY;
		if (x >= 0  && x < pFrame->Width && y >= 0 && y < pFrame->Height)
		{
			int	nNumPixels = pFrame->Width;
			void*	pSprite =  pFrame->Sprite;
			y++;
			_asm
			{
				//ʹSDIָ��sprite�е�ͼ������λ��
				mov		esi, pSprite
			dec_line:
				dec		y				//����һ��
				jz		last_line
				
				mov		edx, nNumPixels
			skip_line:
				movzx	eax, byte ptr[esi]
				inc		esi
				movzx	ebx, byte ptr[esi]
				inc		esi
				or		ebx, ebx
				jz		skip_line_continue
				add		esi, eax
			skip_line_continue:
				sub		edx, eax
				jg		skip_line
				jmp		dec_line

			last_line:
				mov		edx, x
			last_line_alpha_block:
				movzx	eax, byte ptr[esi]
				inc		esi
				movzx	ebx, byte ptr[esi]
				inc		esi
				or		ebx, ebx
				jz		last_line_continue
				add		esi, eax
			last_line_continue:
				sub		edx, eax
				jg		last_line_alpha_block
				mov		nAlpha, ebx
			}
		}
	}
	
	return nAlpha;
}

// �ͷ��ڴ�
void ImageResSpr::Release()
{
	SAFE_DELETE_ARRAY(m_pPal24);
	SAFE_DELETE_ARRAY(m_pPal16);

	// �ͷ�������ͼ��spr����
	if(m_pFrameInfo)
	{
		for(int i=0; i<m_Header.Frames; i++)
		{
			// �ͷŵ�i֡������
			SAFE_DELETE_ARRAY(m_pFrameInfo[i]);
		}
	}
	
	SAFE_DELETE_ARRAY(m_pFrameInfo);
	ResetVar();
}
