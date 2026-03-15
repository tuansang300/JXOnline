//---------------------------------------------------------------------------
// Sword3 Engine (c) 1999-2000 by Kingsoft
//
// File:	KWavFile.cpp
// Date:	2000.08.08
// Code:	Daniel Wang
// Desc:	Wave File Loading Class
//---------------------------------------------------------------------------
#include "KWin32.h"
#include "KDebug.h"
#include "KMemBase.h"
#include "KWavCodec.h"
#include "KWavFile.h"
//---------------------------------------------------------------------------
// 函数:	KWavFile
// 功能:	购造函数
// 参数:	void
// 返回:	void
//---------------------------------------------------------------------------
KWavFile::KWavFile()
{
	m_nWaveSize = 0;
	m_nWaveData = 0;
	m_pImaBuffer = NULL;
}
//---------------------------------------------------------------------------
// 函数:	~KWavFile
// 功能:	析购函数
// 参数:	void
// 返回:	void
//---------------------------------------------------------------------------
KWavFile::~KWavFile()
{
	Close();
}
//---------------------------------------------------------------------------
// 函数:	Open
// 功能:	打开WAV文件
// 参数:	FileName	文件名
// 返回:	TRUE－成功 FALSE－失败
//---------------------------------------------------------------------------
BOOL KWavFile::Open(LPSTR FileName)
{
	WAVEHEADER Header;
	DWORD dwDataId;

	// close opened file
	if (m_nWaveData != 0)
		Close();
	
	// open the wave file
	if (!m_File.Open(FileName))
		return FALSE;
	
	// read the file header
	m_File.Read(&Header, sizeof(Header));
	
	// validate that it's a WAVE file
	if ((Header.RiffId != 0x46464952) || // " RIFF"
		(Header.WaveId != 0x45564157) || // " WAVE"
		(Header.fmt_Id != 0x20746d66))   // "fmt "
		return FALSE;
	
	// read the wave format
	// 有些文件类型的wfSize 比 m_WaveFormat结构要大 -- spe 2003.5.17
	if (Header.wfSize > sizeof(m_WaveFormat))
		return FALSE;

	m_File.Read(&m_WaveFormat, Header.wfSize);

	// if format is not PCM or IMA-ADPCM return FALSE
	if ((m_WaveFormat.wFormatTag != WAVE_FORMAT_PCM) &&
		(m_WaveFormat.wFormatTag != WAVE_FORMAT_IMA_ADPCM))
		return FALSE;
	
	// deal with IMA-ADPCM wave format
	if (m_WaveFormat.wFormatTag == WAVE_FORMAT_IMA_ADPCM)
	{	
		// unsuport one chanel format
		if (m_WaveFormat.nChannels == 1)
		{
			g_MessageBox("KWavFile: Unsuport one channel IMA-ADPCM file");
			return FALSE;
		}
	}
	
	// read data id
	m_File.Read(&dwDataId, sizeof(DWORD));
	if (dwDataId != 0x61746164) // "data"
	{
		m_File.Seek(8, FILE_CURRENT); // skip "fact"
		m_File.Read(&dwDataId, sizeof(DWORD));
		if (dwDataId != 0x61746164) // "data"
			return FALSE;
	}
	
	// read wave data size
	m_File.Read(&m_nWaveSize, sizeof(DWORD));
	
	// save the wave data start pos
	m_nWaveData = m_File.Tell();
	
	return TRUE;
}
//---------------------------------------------------------------------------
// 函数:	Read
// 功能:	读取数据
// 参数:	lpPcmBuffer		缓存
//			dwPcmBytes		长度
// 返回:	实际读取长度
//---------------------------------------------------------------------------
DWORD KWavFile::Read(PVOID lpPcmBuffer, DWORD dwPcmBytes)
{
	// read PCM data directly
	if (m_WaveFormat.wFormatTag == WAVE_FORMAT_PCM)
		return m_File.Read(lpPcmBuffer, dwPcmBytes);

	// decode IMA-ADPCM data
	DWORD dwImaBytes = 0;
	DWORD dwImaReadBytes = 0;
	DWORD dwPcmReadBytes = 0;

	// decide how many ima data should be readed
	dwImaBytes = dwPcmBytes / (4 * (m_WaveFormat.nBlockAlign - 7))
		* m_WaveFormat.nBlockAlign;

	// alloc ima data buffer
	if (m_pImaBuffer == NULL)
		m_pImaBuffer = g_MemAlloc(dwImaBytes);

	// read in ima data
	dwImaReadBytes = m_File.Read(m_pImaBuffer, dwImaBytes);

	// decode to pcm buffer
	dwPcmReadBytes = g_ImaAdpcmDecode(m_pImaBuffer, dwImaReadBytes, 
		lpPcmBuffer, m_WaveFormat.nBlockAlign);
	return dwPcmReadBytes;
}
//---------------------------------------------------------------------------
// 函数:	Rewind
// 功能:	回到文件头
// 参数:	void
// 返回:	void
//---------------------------------------------------------------------------
void KWavFile::Rewind()
{
	m_File.Seek(m_nWaveData, FILE_BEGIN);
}
//---------------------------------------------------------------------------
// 函数:	Close
// 功能:	关闭文件
// 参数:	void
// 返回:	void
//---------------------------------------------------------------------------
void KWavFile::Close()
{
	m_File.Close();
	m_nWaveSize = 0;
	m_nWaveData = 0;
	if (m_pImaBuffer)
	{
		g_MemFree(m_pImaBuffer);
		m_pImaBuffer = NULL;
	}
}
//---------------------------------------------------------------------------
// 函数:	GetSilenceByte
// 功能:	取得静音字节
// 参数:	void
// 返回:	静音字节
//---------------------------------------------------------------------------
BYTE KWavFile::GetSilenceByte()
{
	BYTE bSilenceByte = 0;
	
	// Silence data depends on format of Wave file
	if (m_WaveFormat.wBitsPerSample == 8)
	{
		// For 8-bit formats (unsigned, 0 to 255)
		// Packed DWORD = 0x80808080;
		bSilenceByte = 0x80;
	}
	if (m_WaveFormat.wBitsPerSample == 16)
	{
		// For 16-bit formats (signed, -32768 to 32767)
		// Packed DWORD = 0x00000000;
		bSilenceByte = 0x00;
	}
	return bSilenceByte;
}
//---------------------------------------------------------------------------
// 函数:	GetSilenceByte
// 功能:	取得静音字节
// 参数:	void
// 返回:	静音字节
//---------------------------------------------------------------------------
void KWavFile::GetPcmWavFormat(PWAVEFORMATEX pPcmWavFmt)
{
	if (m_WaveFormat.wFormatTag == WAVE_FORMAT_PCM)
	{
		*pPcmWavFmt = m_WaveFormat;
		return;
	}

	// IMA-ADPCM
	pPcmWavFmt->wFormatTag     = WAVE_FORMAT_PCM;
	pPcmWavFmt->nChannels      = 2;
	pPcmWavFmt->nSamplesPerSec = m_WaveFormat.nSamplesPerSec;
	pPcmWavFmt->nBlockAlign    = 4;
	pPcmWavFmt->wBitsPerSample = 16;
	pPcmWavFmt->cbSize         = 0;

	// bytes per second
	switch (m_WaveFormat.nAvgBytesPerSec)
	{
	case 0xacdb: // 44.100KHZ
		pPcmWavFmt->nAvgBytesPerSec = 0x02b110;
		break;
	case 0x56b9: // 22.050KHZ
		pPcmWavFmt->nAvgBytesPerSec = 0x15888;
		break;
	case 0x2ba9: // 11.025KHZ
		pPcmWavFmt->nAvgBytesPerSec = 0xac44;
		break;
	case 0x1fae: // 8KHZ
		pPcmWavFmt->nAvgBytesPerSec = 0x7d00;
		break;
	}
}
//---------------------------------------------------------------------------

