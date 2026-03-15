//---------------------------------------------------------------------------
// Sword3 Engine (c) 1999-2000 by Kingsoft
//
// File:	KCodec.h
// Date:	2000.08.08
// Code:	WangWei(Daphnis)
// Desc:	Header File
//---------------------------------------------------------------------------
#ifndef KCodec_H
#define KCodec_H
//---------------------------------------------------------------------------
#define CODEC_NONE		0
#define CODEC_LHA		1
#define CODEC_LZO		2
//---------------------------------------------------------------------------
typedef struct {
	PBYTE		lpData;			// ��ѹ��&ѹ��ǰ ����ָ��
	DWORD		dwDataLen;		// ��ѹ��&ѹ��ǰ ���ݳ���
	PBYTE		lpPack;			// ѹ����&ѹ���� ����ָ��
	DWORD		dwPackLen;		// ѹ����&ѹ���� ���ݳ���
} TCodeInfo;
//---------------------------------------------------------------------------
class ENGINE_API KCodec
{
public:
	virtual DWORD	GetPackLen(DWORD dwDataLen);
	virtual BOOL	Encode(TCodeInfo* pCodeInfo);
	virtual BOOL	Decode(TCodeInfo* pCodeInfo);
	//lpData;dwDataLen;lpPack;������ȷ���ã�dwPackLen��Ϊ0����	
};
//---------------------------------------------------------------------------
ENGINE_API void	g_InitCodec(KCodec** ppCodec, int nCompressMethod);
ENGINE_API void	g_FreeCodec(KCodec** ppCodec, int nCompressMethod);
//---------------------------------------------------------------------------
#endif
