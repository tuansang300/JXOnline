/********************************************************************
	created:	2003/06/03
	file base:	IDBRoleServer
	file ext:	h
	author:		liupeng
	
	purpose:	
*********************************************************************/
#ifndef __INCLUDE_IDBROLESERVER_H__
#define __INCLUDE_IDBROLESERVER_H__

#include "KProtocol.h"
#include "S3DBInterface.h"

BOOL InitDBInterface( size_t nMaxRoleCount );

void ReleaseDBInterface();

void *GetRoleInfo( char * pRoleBuffer, char * strUser, int &nBufLen );
void *GetRoleInfoForGM(int nInfoID, char * pRoleBuffer, char * strUser, int &nBufLen);
void SetRoleInfoForGM(int nInfoID, char * pRoleBuffer, char * strUser, int nBufLen);

int	SaveRoleInfo( char * pRoleBuffer, const char * strUser, BOOL bAutoInsertWhenNoExistUser );

int GetRoleListOfAccount( char * szAccountName, S3DBI_RoleBaseInfo * RoleBaseList, int nMaxCount );

bool DeleteRole( const char * strUser );

char* GetAccountByUser(char * strUser);//ͨ���û��������ʻ�

//------------------------------------------------------------------------
//���ݿⱸ��������ͳ�� Add By Fellow At 2003.08.14
bool StartBackupTimer(int aTime);		//��ʼ���б����߳�
bool StopBackupTimer();							//�������б����߳�
bool SuspendBackupTimer();						//�����߳�
bool ResumeBackupTimer();						//���������߳�
bool IsBackupThreadWorking();					//�߳��Ƿ���������
bool IsBackupWorking();							//�Ƿ��ڱ���
bool DoManualBackup();							//�ֹ�����

bool GetGameStat(TGAME_STAT_DATA* aStatData);//ȡ���û�ͳ������
//------------------------------------------------------------------------
void AddOutputString(HWND hListCtrl, char* aStr);//���Ӳ����������
#endif // __INCLUDE_IDBROLESERVER_H__