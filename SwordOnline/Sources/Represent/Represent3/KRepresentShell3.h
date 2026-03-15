/*****************************************************************************************
//  ����ģ��Ķ���ӿڵĶ�ά�汾ʵ�֡�
//	Copyright : Kingsoft 2002
//	Author	:   Wooy(Wu yue)
//	CreateTime:	2002-11-11
------------------------------------------------------------------------------------------
*****************************************************************************************/

#ifndef KREPRESENTSHELL3_H_HEADER_INCLUDED_C2314D70
#define KREPRESENTSHELL3_H_HEADER_INCLUDED_C2314D70
#define _REPRESENT_INTERNAL_SIGNATURE_
#include "../iRepresent/iRepresentShell.h"
#include "../../Engine/Src/KEngine.h"
#include "../iRepresent/Text/TextProcess.h"
#include <d3d9.h>
#ifndef _NO_D3DX9
#include <d3dx9.h>
#endif

#include "TextureResMgr.h"

#define VERTEX_BUFFER_SIZE	3000	// ���㻺��ĳߴ� 
#define SPR_PRERENDER_TEXSIZE1 128	// ����Ԥ��Ⱦ��ͼ�ߴ�
#define SPR_PRERENDER_TEXSIZE2 256	// ����Ԥ��Ⱦ��ͼ�ߴ�

// ���ڷ�͸����Ⱦ�Ķ����ʽ
#define D3DFVF_VERTEX2D (D3DFVF_XYZRHW|D3DFVF_DIFFUSE|D3DFVF_TEX1)
// ����͸����Ⱦ�Ķ����ʽ
#define D3DFVF_VERTEX3D (D3DFVF_XYZ|D3DFVF_DIFFUSE|D3DFVF_TEX1)

struct VERTEX2D
{
    D3DXVECTOR4 position; // The transformed position for the vertex.
    DWORD		color;    // The vertex color.
	FLOAT       tu, tv;   // The texture coordinates.
};

struct VERTEX3D
{
    D3DXVECTOR3 position; // The transformed position for the vertex.
    DWORD		color;    // The vertex color.
	FLOAT       tu, tv;   // The texture coordinates.
};

struct RECTFLOAT
{
	float top;
	float left;
	float bottom;
	float right;
};

// 3D��Ⱦ����
struct RenderParam3D
{
    D3DXVECTOR3	m_pos[4];
};

struct	KImageParam;
class	TextureResBmp;
class	TextureResSpr;
class	KFont3;


//## ����ģ��Ķ���ӿڵ���ά�汾ʵ�֡�
class KRepresentShell3 : public iRepresentShell
{
public:
	KRepresentShell3();
//=======================================
//=====iRepresentShell����Ľӿں���=====
//=======================================

    //## �ͷ����ٽӿڶ���
    void Release();

//---------��ͼ�豸���---------------

    //## ������ͼ�豸�������ͼ������
    //## ֱ�ӵ���Reset������
    bool Create(
        //## �豸�����ڣ��������λ�����ص㣩
        int nWidth, 
        //## �豸�����ڣ��ݿ�����λ�����ص㣩
        int nHeight, 
        //## �Ƿ��ռȫ��Ļ
        bool bFullScreen);

    //## ���û�ͼ�豸
    bool Reset(
        //## �豸�����ڣ��������λ�����ص㣩
        int nWidth, 
        //## �豸�����ڣ��ݿ�����λ�����ص㣩
        int nHeight, 
        //## �Ƿ��ռȫ��Ļ
        bool bFullScreen);

//---------�������������---------------

    //## ����һ���������
	bool CreateAFont(
        //## �ֿ��ļ�����
        const char* pszFontFile, 
        //## �ֿ�ʹ�õ��ַ����뼯��
        CHARACTER_CODE_SET CharaSet, 
        //## �������id.
        int nId);

    //## ������֡�
    void OutputText(
        //## ʹ�õ��������id��
        int nFontId, 
        //## Ҫ������ַ�����
        const char* psText, 
        //## Ҫ������ַ����ĳ���(BYTE)��
        //## ��nCount���ڵ���0ʱ���ַ������Բ���������Ľ�����������ʾ����ַ��Ľ�����
        //## ��nCountС��0ʱ����ʾ���ַ�������'\0'��β�������ݽ����ַ���ȷ������ַ����ĳ��ȡ�
        //## Ĭ��ֵΪ-1��
        int nCount, 
        //## �ַ�����ʾ�������X���������ֵΪKF_FOLLOW��
        //## ����ַ����������ϴ��ַ��������λ��֮��
        //## Ĭ��ֵΪKF_FOLLOW��
        int nX, 
        //## �ַ�����ʾ�������Y, �������ֵΪKF_FOLLOW��
        //## ���ַ�����ǰһ������ַ�����ͬһ�е�λ�á�
        //## Ĭ��ֵΪKF_FOLLOW��
        int nY, 
        //## �ַ�����ʾ��ɫ��Ĭ��Ϊ��ɫ����32bit����ARGB�ĸ�
        //## ʽ��ʾ��ɫ��ÿ������8bit��
        unsigned int Color, 
        //## �Զ����е��п����ƣ������ֵС��һ��ȫ���ַ����������Զ����д�����Ĭ��ֵΪ0���Ȳ����Զ����д�����
        int nLineWidth = 0,
		int nZ = TEXT_IN_SINGLE_PLANE_COORD,
		//�ֵı�Ե��ɫ
		unsigned int BorderColor = 0);

    //## ������֡�
    int OutputRichText(
        //## ʹ�õ��������id��
        int nFontId, 
		KOutputTextParam* pParam,
        //## Ҫ������ַ�����
        const char* psText, 
        //## Ҫ������ַ����ĳ���(BYTE)��
        //## ��nCount���ڵ���0ʱ���ַ������Բ���������Ľ�����������ʾ����ַ��Ľ�����
        //## ��nCountС��0ʱ����ʾ���ַ�������'\0'��β�����м䲻����'\0'���ַ���
        //## Ĭ��ֵΪ-1
        int nCount = KRF_ZERO_END, 
        //##Documentation
        //## �Զ����е��п����ƣ������ֵС��һ��ȫ���ַ����������Զ����д�����Ĭ��ֵΪ0���Ȳ����Զ����д�����
        int nLineWidth = 0);

    //## ����ָ���������ַ�����������ַ�ƫ��
    int LocateRichText(
		//## ָ��������
		int nX, int nY,

        //## ʹ�õ��������id��
        int nFontId, 
		KOutputTextParam* pParam,
        //## Ҫ������ַ�����
        const char* psText, 
        //## Ҫ������ַ����ĳ���(BYTE)��
        //## ��nCount���ڵ���0ʱ���ַ������Բ���������Ľ�����������ʾ����ַ��Ľ�����
        //## ��nCountС��0ʱ����ʾ���ַ�������'\0'��β�����м䲻����'\0'���ַ���
        //## Ĭ��ֵΪ-1��		
        int nCount = KRF_ZERO_END, 
        //##Documentation
        //## �Զ����е��п����ƣ������ֵС��һ��ȫ���ַ����������Զ����д�����Ĭ��ֵΪ0���Ȳ����Զ����д�����
        int nLineWidth = 0);

    //## �ͷ�һ���������
    void ReleaseAFont(
        //## ��������id
        int nId);

//---------ͼ��Դ���---------------

    //## ����ڴ�ͼ�ζ���ʧ�ܣ��򷵻�0�����򷵻ظ���ͼ������ת�����ɵ���ֵid��
    unsigned int CreateImage(
        //##Documentation
        //## ͼ�ε����֡�
        const char* pszName, 
        //##Documentation
        //## ͼ�κ��
        int nWidth, 
        //##Documentation
        //## ͼ���ݿ�
        int nHeight,
		//##Documentation
        //## ͼ������
        int nType);

    //## ָ���ͷ�ĳ��ͼ��Դ��
    void FreeImage(
        //## ͼ���ļ���/ͼ������
        const char* pszImage 
        );

    //## �ͷ�ȫ����ͼ�ζ���
    void FreeAllImage();

    //## ��ȡͼ��������ݻ����������ؿգ����ʾʧ��
    virtual void* GetBitmapDataBuffer(
        //## ͼ����
        const char* pszImage,
		//���ڻ�ȡͼ�����ݻ������������Ϣ���ݣ���������ָ�룬�������Щ��Ϣ��
		KBitmapDataBuffInfo* pInfo);

	//##�ͷŶ�(ͨ��GetBitmapDataBuffer���û�ȡ�õ�)ͼ��������ݻ������Ŀ���
	virtual void ReleaseBitmapDataBuffer(
		//## ͼ����
		const char* pszImage,
		//ͨ��GetBitmapDataBuffer���û�ȡ�õ�ͼ��������ݻ�����ָ��
		void* pBuffer);

    //## ��ȡĳ��ͼ����Ϣ��
    bool GetImageParam(
        //## ͼ�ε���Դ�ļ���/ͼ����
        const char* pszImage,
        //## ͼ����Ϣ�洢�ṹ��ָ��
        KImageParam* pImageData,
		//## ͼ������
		int nType);
	
	//## ��ȡĳ��ͼ��ĳ֡����Ϣ
	virtual bool GetImageFrameParam(
        //## ָ�򱣴�ͼ����Դ�ļ���/ͼ�����Ļ�����
        const char* pszImage,
		//ͼ��֡����
		int		nFrame,
        //## ֡ͼ�����������ͼ�ε�ƫ��
		KRPosition2* pOffset,
		//## ֡ͼ�δ�С
		KRPosition2* pSize,
        //## ͼ��Դ����
		int nType);

    //## ��ȡĳ��ͼ��ĳ֡��ָ������alphaֵ��������β����ڣ������������ͼ�η�Χ֮���򷵻�0��
    int GetImagePixelAlpha(
        //## ͼ����Դ�ļ���/ͼ����
        const char* pszImage, 
        //## ͼ�ε�֡������
        int nFrame, 
        //## �����ͼ�к�����
        int nX, 
        //## �����ͼ��������
        int nY,
        //## ͼ������
        int nType);

    //## ����ͼ�ζ�̬����ƽ�������
    void SetImageStoreBalanceParam(
        //## ����ͼ�ε���Ŀ��ƽ��ֵ��
        int nNumImage, 
        //## ÿ���ٴ�����ͼ�ζ������һ��ƽ���顣
        unsigned int uCheckPoint = 1000);

    //## ����ͼ�ε��ļ��������ļ�ֻ��ISI_T_BITMAP16��ʽ��ͼ����Ч������ָ����ͼ���Ƿ�ɹ����浽�ļ���
    bool SaveImage(
        //## �����ļ������֡�
        const char* pszFile, 
        //## ͼ����
        const char* pszImage, 
        //## Ŀ��ͼ���ļ�������
        int nFileType);
    
	
//---------���Ʋ���---------------
	
    //## ����ͼԪ
    void DrawPrimitives(
        //## ���Ƶ�ͼԪ����Ŀ
        int nPrimitiveCount,
        //## ����ͼԪ�Ľṹ������
        KRepresentUnit* pPrimitives, 
        //## Primitive���ͣ�ȡֵ����ö��ֵREPRESENT_UNIT_TYPE
        unsigned int uGenre,
        //## ͼԪ���Ʋ����ṩ�������Ƿ�Ϊ��ֱ�����ߵĵ�ƽ�����ꡣ������ǣ���ͼԪ���Ʋ����ṩ����������ά�ռ����ꡣ
        int bSinglePlaneCoord);

	void DrawPrimitivesOnImage(
        //## ���Ƶ�ͼԪ����Ŀ
        int nPrimitiveCount,
        //## ����ͼԪ�Ľṹ������
        KRepresentUnit* pPrimitives, 
        //## Primitive���ͣ�ȡֵ����ö��ֵREPRESENT_UNIT_TYPE
        unsigned int uGenre, 
        //## ͼ����
        const char* pszImage, 
        //## Ŀ��ͼ�ε�id
        unsigned int uImage,
		short &nImagePosition);

	//## ���ͼ������
	void ClearImageData(
        //## ͼ����
        const char* pszImage, 
        //## Ŀ��ͼ�ε�id
        unsigned int uImage,
		short nImagePosition);

    //## �����Ӿ��۲��Ŀ�Ľ��㡣
    //## (�����������������ʹ����z=0ƽ����)��
    //## �ѵ������������Ϊ��ͼ�豸���ĵ��Ӧ�����꣬��������������ͼ�豸���Ͻǵ��Ӧ�����꣺
    //## m_nLeft = nX - Width(��ͼ�豸) / 2
    //## m_nTop = nY - Height(��ͼ�豸) / 2 - nZ
    void LookAt(int nX, int nY, int nZ);

    //## ���ƻ�ͼ�豸�ϵ�ͼ��ͼ�ζ���
    //## Ŀ��ͼ����Դ���������Ŀǰֻ����ISI_T_BITMAP16�����Ŀ��ͼ�ζ��󲻴��ڻ��߸���ʧ���򷵻�false��
    bool CopyDeviceImageToImage(
        //## ͼ�ε����֡�
        const char* pszName, 
        //## ��ͼ�豸ͼ�θ��Ʒ�Χ�����Ͻǵ������
        int nDeviceX, 
        //## ��ͼ�豸ͼ�θ��Ʒ�Χ�����Ͻǵ�������
        int nDeviceY, 
        //## Ŀ��ͼ�θ��Ƶ���Χ�����Ͻǵ������
        int nImageX, 
        //## Ŀ��ͼ�θ��Ƶ���Χ�����Ͻǵ�������
        int nImageY, 
        //## ���Ʒ�Χ�ĺ��
        int nWidth, 
        //## ���Ʒ�Χ�ĺ��
        int nHeight);

	//## ��ʼһ�ֻ��Ʋ���
	bool RepresentBegin(
		//## �Ƿ�����豸�ϵ�ǰ��ͼ�Ρ�
		int bClear, 
		//## ���bClearΪ��0ֵ����Colorָ����ʲô��ɫֵ������豸ԭ����ͼ�Ρ�
		unsigned int Color);

	//## ����һ�ֻ��Ʋ���
	void RepresentEnd();

	//��ͼ/��ͼ�豸���� ת��Ϊ�ռ�����
	virtual void ViewPortCoordToSpaceCoord(
		int& nX,	//���룺��ͼ/��ͼ�豸�����x�����������ռ������x��
		int& nY,	//���룺��ͼ/��ͼ�豸�����y�����������ռ������y��
		int  nZ		//���������õ��Ŀռ������z��
		);
	
	//## ���ù�����Ϣ
	virtual void SetLightInfo(
		//## ��ǰ9���������Ͻǵ�x����
		int nX,
		//## ��ǰ9���������Ͻǵ�y����
		int nY,
		//## ��ǰ9������Ĺ�����Ϣ��DWORD���飬��ʾ������ڵ��Ϲ�������ֵ
		//## ���pLightingΪNULL����ʾ�������մ���
		unsigned int *pLighting);
	
	//## ���ñ���ģ��ѡ��
	virtual void SetOption(
		//## ѡ������
		RepresentOption eOption,
		//## ѡ���Ƿ��
		bool bOn);
	
	//## �ҽ�Ƕ�����ֵ�ͼƬ��ʾ [wxb 2003-6-20]
	virtual long AdviseRepresent(IInlinePicEngineSink*);
	virtual long UnAdviseRepresent(IInlinePicEngineSink*);
	
	virtual bool SaveScreenToFile(const char* pszName, ScreenFileType eType, unsigned int nQuality);
	
	virtual void SetGamma(int nGamma);
	
	//����ƫɫ�б�
	virtual unsigned int SetAdjustColorList(
			unsigned int* puColorList,	//ƫɫ����ɫ�б���ÿ����ɫΪһ��unsigned int����
										//��32bit����0RGB�ĸ�ʽ��ʾ��ɫ��ÿ������8bit��
			unsigned int uCount			//��ɫ�б�����ɫ������Ŀ
			)
	{
		return uCount;
	}

private:
	class KRSFontItem
   {
      public:
        //## ��������id��һ��Ӧ��ʱ����id����������ִ�С��ֵ�����������Ӧ�����⡣
        int nId;

        //## ��������ָ�롣
        KFont3* pFontObj;

    };

	enum RS2_FONT_ITEM_PARAM { 
        //## �ӿ�������ά��������������Ŀ���ٹ�����Ŀʱ�������������ʧ�ܡ�
        RS2_MAX_FONT_ITEM_NUM = 5 };

private:
	D3DGAMMARAMP m_ramp;				// ����ԭʼ��gammaУ׼����
	DWORD m_dwWindowStyle;				// ��Ⱦ��������
	TextureResMgr m_TextureResMgr;		// ��ͼ��Դ������
	//## �������ļ��ϡ�
    KRSFontItem m_FontTable[RS2_MAX_FONT_ITEM_NUM];
	bool m_bDeviceLost;					// ��Ⱦ�豸�Ƿ�ʧ�ı�־

	int m_nLeft;
    int m_nTop;

	LPDIRECT3DTEXTURE9 m_pPreRenderTexture128;	// Ԥ��Ⱦ���ǵ���ͼָ��
	LPDIRECT3DTEXTURE9 m_pPreRenderTexture256;	// Ԥ��Ⱦ���ǵ���ͼָ��
	LPDIRECT3DVERTEXBUFFER9 m_pVB2D;	// ����Buffer
	LPDIRECT3DVERTEXBUFFER9 m_pVB3D;	// ����Buffer
	D3DXMATRIX m_matView;				// �������굽���������ϵ�ı任����
	D3DXMATRIX m_matViewInverse;		// �������굽���������ϵ�ı任����������
	D3DXMATRIX m_matProj;				// ͶӰ�任����
	D3DXVECTOR3 m_vCamera;				// �����λ��
	D3DXVECTOR3 m_vCamera1;				// �����λ��

	bool m_bDoLighting;					// �Ƿ������ռ���
	int m_nLightingAreaX;				// ��ǰ9���������Ͻǵ�x����
	int m_nLightingAreaY;				// ��ǰ9���������Ͻǵ�y����
	DWORD pLightingArray[LIGHTING_GRID_WIDTH * LIGHTING_GRID_HEIGHT];	// ����ͼ��Ϣ����

	// ����ͳ�����

private:
	~KRepresentShell3();

	// ��ʼ���豸����
	bool InitDeviceObjects();

	// �ͷ��豸����
	void DeleteDeviceObjects();

	// �ͷſ��ܶ�ʧ���豸����
	bool InvalidateDeviceObjects();

	// �ָ��豸��ض����״̬
	bool RestoreDeviceObjects();

	void D3DTerm();
	 //## �ռ����굽��ά(��ʾ��)ƽ������ı任
    void CoordinateTransform(
        //## ������ά����x������������ά����x(ˮƽ)����
        int& nX, 
        //## ������ά����y������������ά����y(��ֱ)����
        int& nY, 
        //## ������ά����z����
        int nZ);
	
	// ����g_renderModel����ͶӰ�任����
	void SetUpProjectionMatrix();

	// ��Ⱦ����
	void DrawImage2D(int nPrimitiveCount, KRepresentUnit* pPrimitives, int bSinglePlaneCoord);
	// �����ŵ�2d���ƣ�����video���ţ�ֻ�����ڵ�ƽ�������ISI_T_BITMAP16��ʽ����Դ
	void DrawImage2DStretch(int nPrimitiveCount, KRepresentUnit* pPrimitives);

	// ��͸��ģʽ�������ǣ�Ԥ�Ȼ��Ƶ���ͼ�ٻ��Ƶ���Ļ
	void DrawPlayer2D(int nPrimitiveCount, KRepresentUnit* pPrimitives, int bSinglePlaneCoord);
	
	// ͸��ģʽ�������ǣ�Ԥ�Ȼ��Ƶ���ͼ�ٻ��Ƶ���Ļ
	void DrawPlayer3D(int nPrimitiveCount, KRepresentUnit* pPrimitives, int bSinglePlaneCoord);

	// �����͸��ģʽ�µ������������
	void GetBoundBox2D(int nPrimitiveCount, KRepresentUnit* pPrimitives, int bSinglePlaneCoord, RECT &rect);

	// ����͸��ģʽ�µ������������
	void GetBoundBox3D(int nPrimitiveCount, KRepresentUnit* pPrimitives, RECTFLOAT &rect);

	void DrawSprOnTexture2D(int nPrimitiveCount, KRepresentUnit* pPrimitives, int bSinglePlaneCoord,
							RECT &rcBound, RECTFLOAT &rcRenderBound, int nTexSize, bool bLighting);
	void DrawImage3D(unsigned int uGenre, int nPrimitiveCount, KRepresentUnit* pPrimitives, int bSinglePlaneCoord);
	// bStretch�Ƿ�����λͼ
	void DrawBitmap16(int32 nX, int32 nY, int32 nWidth, int32 nHeight, TextureResBmp* pBitmap, bool bStretch = false);
	void DrawSpriteAlpha(int32 nX, int32 nY, int32 nWidth, int32 nHeight, int32 nFrame, 
									TextureResSpr* pSprite, DWORD color, int32 nRenderStyle);
	void DrawSpritePartAlpha(int32 nX, int32 nY, int32 nWidth, int32 nHeight, int32 nFrame, TextureResSpr* pSprite, RECT &rect);
	void DrawBitmap16Part(int32 nX, int32 nY, int32 nWidth, int32 nHeight, TextureResBmp* pBitmap, RECT &rect);

	void DrawBitmap163D(RenderParam3D &param, TextureResBmp* pBitmap);
	void DrawBitmap163DLighting(RenderParam3D &param, TextureResBmp* pBitmap);

	void DrawSpriteAlpha3D(RenderParam3D &param, int32 nFrame, TextureResSpr* pSprite, 
												DWORD color, int32 nRenderStyle, RECT *rect);
	void DrawSpriteAlpha3DLighting(RenderParam3D &param, int32 nFrame, TextureResSpr* pSprite, 
										DWORD color, int32 nRenderStyle, RECT *rect);

	void __fastcall SetPoint3dLighting(VERTEX3D& pDes, VERTEX3D& pSrc, DWORD color);
	inline unsigned int GetPoint3dLighting(D3DXVECTOR3& v);
	unsigned int GetPoint3dLightingLerp(D3DXVECTOR3& v);
	

	void RIO_CopyBitmap16ToBuffer(TextureResBmp* pBitmap, TextureResBmp* pDestBitmap, int32 nX, int32 nY);
	void RIO_CopySprToBufferAlpha(TextureResSpr* pSpr, int32 nFrame, TextureResBmp* pDestBitmap, int32 nX, int32 nY);

	// ����һ��ʵ�ľ���
	void DrawRect(int32 x1, int32 y1, int32 nWidth, int32 nHeight, DWORD color);

	// ����һ����
	void DrawPoint(int nPrimitiveCount, KRepresentUnit* pPrimitives, int bSinglePlaneCoord);

	// ����һ��ֱ��
	void DrawLine(int32 x1, int32 y1, int32 x2, int32 y2, DWORD color);

	// ����һ�������߿�
	void DrawRectFrame(int32 x1, int32 y1, int32 x2, int32 y2, DWORD color);
	// �������񣬼�������
	uint32 BuildMesh3D(VERTEX3D *pvbSrc, VERTEX3D* pvbDes, uint32 nNumDes, DWORD color);
};

#endif
