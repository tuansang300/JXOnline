//---------------------------------------------------------------------------
// Sword3 Engine (c) 1999-2000 by Kingsoft
//
// File:	KCanvas.h
// Date:	2000.08.08
// Code:	WangWei(Daphnis)
// Desc:	Header File
//---------------------------------------------------------------------------
#ifndef KCanvas_H
#define KCanvas_H
//---------------------------------------------------------------------------
#include "KList.h"
#include "KMemClass.h"
//---------------------------------------------------------------------------
//typedef void (* DRAW_FUNC)(void* pNode, void* pCanvas);
//---------------------------------------------------------------------------
class KDrawNode : public KNode
{
public:
//	DRAW_FUNC	m_pDrawFunc;
	BOOL		m_bChanged;
	long		m_nX;
	long		m_nY;
	long		m_nWidth;
	long		m_nHeight;
	long		m_nColor;
	long		m_nAlpha;
	void*		m_pBitmap;
	void*		m_pPalette;
};
//---------------------------------------------------------------------------
typedef struct {
	long		x;			// �ü����X����
	long		y;			// �ü����Y����
	long		width;		// �ü���Ŀ���
	long		height;		// �ü���ĸ߶�
	long		left;		// �ϱ߽�ü���
	long		top;		// ��߽�ü���
	long		right;		// �ұ߽�ü���
} KClipper;
/*/---------------------------------------------------------------------------
typedef struct {
	long		num;		// ��ǰ�Ķ�����
	long		changed;	// �ػ��־
	KDrawNode*	node[10];	// ���ƶ���ָ��
} KSubCanvas;*/
//---------------------------------------------------------------------------
class ENGINE_API KCanvas
{
private:
//	KList		m_DrawList;// �����б�
//	KMemClass	m_Canvas;// �����ڴ����
//	KMemClass	m_SubCanvas;//����������
	LPDIRECTDRAWSURFACE	m_pSurface;
	long		m_nWidth;// ��������
	long		m_nHeight;// �����߶�

public:
	void*		m_pCanvasAlloc;// ���仭���ڴ�
	void*		m_pCanvas;// �����ڴ�   // ����256�ֽ�
	long		m_nMask16;// 16bit RGB Mask
	long		m_nMask32;// 32bit RGB Mask
	long		m_nScreenWidth;// ��Ļ����
	long		m_nScreenHeight;// ��Ļ�߶�
	long		m_nScreenPitch;// ��Ļ���
	long		m_nPitch;// ��Ļ���
//	long		m_nSubRows;// ����Ŀ
//	long		m_nSubCols;// ����Ŀ
	RECT		m_ClipRect;// �ü�����
	BOOL		m_bChanged;// �ı��־
    BOOL        m_dwScreenMode;
private:
//	void		SubAddNode(int nX,int nY,int nW,int nH,KDrawNode* pNode);
//	void		SubAdd(int nCol, int nRow, KDrawNode* pNode);
//	void		SubChangedNode(int nX,int nY,int nW,int nH,KDrawNode* pNode);
//	void		SubChanged(int nCol, int nRow);
//	void		SubMarkChanged();
	void		UpdateBackBuffer(LPRECT lpRect);
	void		UpdateFrontBuffer(LPRECT lpRect);
	bool		GetUpdateRect(LPRECT lpSrc, LPRECT lpDest);
public:
	KCanvas();
	~KCanvas();
	bool		Init(int nWidth, int nHeight);
	void		Terminate();
	void		Changed(BOOL bChanged){m_bChanged = bChanged;};
	void		FillCanvas(WORD wColor);
	void		UpdateCanvas();
	void		UpdateScreen();
	int			GetWidth() { return m_nWidth; }
	int			GetHeight() { return m_nHeight; }
	void*		LockCanvas(int& nPitch);
	void		UnlockCanvas();
	void		BltSurface(LPDIRECTDRAWSURFACE pSurface, RECT* pDestRect);
//	void		UpdateScreen(LPRECT lpRect);
	BOOL		RectClip(LPRECT pRect);
	BOOL		MakeClip(long nX, long nY, long nWidth, long nHeight, KClipper* pClipper);
	void		SetClipRect(LPRECT pRect){m_ClipRect = *pRect;};
	void		GetClipRect(LPRECT pRect){*pRect = m_ClipRect;};
	void		DrawPixel(int nX, int nY, int nColor);
	void		DrawPixelAlpha(int nX, int nY, int nColor, int nAlpha);
	void		DrawLine(int nX1, int nY1, int nX2, int nY2, int nColor);
	void		DrawLineAlpha(int nX1, int nY1, int nX2, int nY2, int nColor, int nAlpha);
	void		DrawSprite(int nX, int nY, int nWidth, int nHeight, void* lpSprite, void* lpPalette);
    void		DrawSpriteMixColor(int nX, int nY, int nWidth, int nHeight, void* lpSprite, void* lpPalette,int nColor,int nAlpha);
    void		DrawSpriteWithColor(int nX, int nY, int nWidth, int nHeight, void* lpSprite, void* lpPalette,int nColor,int nAlpha);
	void		DrawSpriteAlpha(int nX, int nY, int nWidth, int nHeight, void* lpSprite, void* lpPalette, int nExAlpha);
	void		DrawSpriteBorder(int nX, int nY, int nWidth, int nHeight, int nColor, void* lpSprite);
	void		DrawSprite3LevelAlpha(int nX, int nY, int nWidth, int nHeight, void* lpSprite, void* lpPalette);
	void		DrawFont(int nX, int nY, int nWidth, int nHeight, int nColor, int nAlpha,void* lpFont);
	void		DrawFontWithBorder(int nX, int nY, int nWidth, int nHeight, int nColor, int nAlpha,void* lpFont, int nBorderColor);
	void		DrawFontSolid(int nX, int nY, int nWidth, int nHeight, int nColor, int nAlpha,void* lpFont);
	void		DrawBitmap(int nX, int nY, int nWidth, int nHeight, void* lpBitmap, void* lpPalette);
	void		DrawBitmap16(int nX, int nY, int nWidth, int nHeight, void* lpBitmap);
	void		DrawBitmap16mmx(int nX, int nY, int nWidth, int nHeight, void* lpBitmap);
	void		DrawBitmap16win(int nX, int nY, int nWidth, int nHeight, void* lpBitmap);
	void		DrawFade(int nX, int nY, int nWidth, int nHeight, int nAlpha);
    void        Clear(int nX, int nY, int nWidth, int nHeight, int nColor);
    void        DotClear(int nX, int nY, int nWidth, int nHeight, int nColor);
    void        ClearAlpha(int nX, int nY, int nWidth, int nHeight, int nColor,int nAlpha);
};


extern ENGINE_API KCanvas* g_pCanvas;
//---------------------------------------------------------------------------
#endif
