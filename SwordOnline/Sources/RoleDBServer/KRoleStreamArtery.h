#ifndef __KROLESTREAM_ARTERY_H__
#define __KROLESTREAM_ARTERY_H__

/*
 * Stub header: the original KRoleStreamArtery/KRoleStreamVein source files
 * were missing from the source archive.  Minimal declarations are provided
 * here so that dependent projects (MGateWay, etc.) can compile.
 */

#include "KRoleDBHeader.h"

/*
 * KRoleStreamVein reassembles fragmented network blocks (KBlock / TRoleNetMsg)
 * into complete TProcessData packets that can be dispatched to game logic.
 */
class KRoleStreamVein
{
public:
	KRoleStreamVein() : m_pBuffer(NULL), m_nTotalLen(0), m_nRecvLen(0) {}
	~KRoleStreamVein() { ClearINStream((size_t)(-1)); }

	/*
	 * Block_IN  --  feed one network block into the stream.
	 * Returns a pointer to the reassembled TProcessData when all fragments
	 * have been received, or NULL if more blocks are expected.
	 */
	TStreamData* Block_IN(const KBlock* pBlock)
	{
		if (!pBlock)
			return NULL;

		if (pBlock->bDataState == 1)  /* first fragment */
		{
			ClearINStream(0);
			m_nTotalLen = pBlock->nOffset;   /* first block stores total length */
			if (m_nTotalLen == 0 || m_nTotalLen > 1024 * 1024)
				return NULL;
			m_pBuffer = new char[m_nTotalLen];
			m_nRecvLen = 0;
		}

		if (!m_pBuffer)
			return NULL;

		size_t nBlockDataLen = pBlock->nDataLen - sizeof(TRoleNetMsg) + 1;
		if (m_nRecvLen + nBlockDataLen > m_nTotalLen)
			nBlockDataLen = m_nTotalLen - m_nRecvLen;

		memcpy(m_pBuffer + m_nRecvLen, pBlock->pDataBuffer, nBlockDataLen);
		m_nRecvLen += nBlockDataLen;

		if (m_nRecvLen >= m_nTotalLen)
		{
			return reinterpret_cast<TStreamData*>(m_pBuffer);
		}

		return NULL;
	}

	/*
	 * ClearINStream  --  discard any partially received stream data.
	 */
	void ClearINStream(size_t /*reason*/)
	{
		if (m_pBuffer)
		{
			delete[] m_pBuffer;
			m_pBuffer = NULL;
		}
		m_nTotalLen = 0;
		m_nRecvLen  = 0;
	}

private:
	char*  m_pBuffer;
	size_t m_nTotalLen;
	size_t m_nRecvLen;
};

/*
 * KRoleStreamArtery -- sends TProcessData as fragmented KBlock packets.
 * (Stub -- not implemented since it is not used in the current build.)
 */
class KRoleStreamArtery
{
public:
	KRoleStreamArtery() {}
	~KRoleStreamArtery() {}
};

#endif // __KROLESTREAM_ARTERY_H__
