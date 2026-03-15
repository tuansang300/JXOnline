#ifndef _KUPDATE_STATUS_INFO_H_
#define _KUPDATE_STATUS_INFO_H_

/*
 * Stub header: reconstructed from usage in AutoupdateDlg.cpp.
 * The original header was missing from the source archive.
 */

#include <afxmt.h>  // CSingleLock, CCriticalSection

typedef struct tagSTATUSINFO
{
	int   nTotalPos;
	char  szTotalStatusInfo[MAX_PATH];
	int   nCurrentPos;
	int   nFinish;
	char  szCurrentStatusInfo[MAX_PATH];
} STATUSINFO, *LPSTATUSINFO;

class KUpdateStatusInfo
{
public:
	KUpdateStatusInfo();
	~KUpdateStatusInfo();

	BOOL Write(const LPSTATUSINFO p);
	BOOL Read(LPSTATUSINFO p);

private:
	STATUSINFO         m_info;
	CCriticalSection   m_csUpdateLock;
	CSingleLock       *m_plock;
};

#endif // _KUPDATE_STATUS_INFO_H_
