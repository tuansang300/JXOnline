#include "stdafx.h"
#include "IDBRoleServer.h"
#include "DBTable.h"
#include "DBBackup.h"
#include "../../../../Headers/KGmProtocol.h"
#include "CRC32.h"

#include <iostream>
#include <strstream>

using namespace std;

#include "Macro.h"

static ZDBTable *db_table = NULL;
static size_t nMaxRoleCount_InAccount = 3;
static CDBBackup::TStatData GameStatData;//��Ϸͳ�����ݣ���������ʼ��ʱ���룩
static CDBBackup* DBBackup = NULL;

static HANDLE hDeadLockThread = NULL;		//������ݿ���û���������߳�
static HANDLE hRemoveLogThread = NULL;	//ɾ��û����־�ļ����߳�

HWND hListOutput = NULL;	//���list

int get_account(DB *db, const DBT *pkey, const DBT *pdata, DBT *ikey) 
{
	//����һ��������buffer���õ�account��Ϊ����
	memset( ikey, 0, sizeof( DBT ) );
	TRoleData *pRoleData = (TRoleData *)pdata->data;

	ikey->data = pRoleData->BaseInfo.caccname;
	ikey->size = strlen( pRoleData->BaseInfo.caccname ) + 1;

	return 0;
}

//==========������ݿ���û���������߳� Add By Fellow 2003.9.10==============
DWORD WINAPI DeadlockProc(LPVOID lpParameter) {
	while(!db_table->bStop) {
		Sleep(5 * 1000);	//5����һ��
		db_table->deadlock();
	}
	return 0;
}
//==========ɾ��û����־�ļ����߳� Add By Fellow 2003.9.10==============
DWORD WINAPI RemoveLogProc(LPVOID lpParameter) {
	while(!db_table->bStop) {
		db_table->removeLog();
		Sleep(60 * 60 * 1000);			//1Сʱһ��
	}
	return 0;
}

BOOL InitDBInterface( size_t nMaxRoleCount )
{
	nMaxRoleCount_InAccount = nMaxRoleCount;

	db_table = new ZDBTable( "database", "roledb" );

	db_table->addIndex( get_account );
	if ( db_table->open() )
	{
		DWORD dwThreadId, dwThrdParam = 1;
/*

		hDeadLockThread = CreateThread(
			NULL,				// no security attributes 
			0,					// use default stack size  
			DeadlockProc,		// thread function 
			&dwThrdParam,		// argument to thread function 
			0,					// use default creation flags 
			&dwThreadId);		// returns the thread identifier 
		if(!hDeadLockThread)
		{
			//�����߳�ʧ��,��ʱû�д���
		}
*/

		hRemoveLogThread = CreateThread(
			NULL,				// no security attributes 
			0,					// use default stack size  
			RemoveLogProc,		// thread function 
			&dwThrdParam,		// argument to thread function 
			0,					// use default creation flags 
			&dwThreadId);		// returns the thread identifier 
		if(!hRemoveLogThread)
		{
			//�����߳�ʧ��,��ʱû�д���
		}

		return TRUE;
	}
		
	return FALSE;
}

void ReleaseDBInterface()		//�ͷ����ݿ�����
{
	if ( db_table )
	{
		db_table->commit();
/*

		if(!hDeadLockThread)
			TerminateThread(hDeadLockThread, 0);
*/

		if(!hRemoveLogThread)
			TerminateThread(hRemoveLogThread, 0);

		db_table->removeLog();
		
		StopBackupTimer();//ֹͣ�����߳�
		
		db_table->close();
		delete db_table;
	}
}

//[wxb 2003-7-23]
void SetRoleInfoForGM(int nInfoID, char* pRoleBuffer, char* strUser, int nBufLen)
{
	char* aBuffer = new char[64 * 1024];
	TRoleData* pRoleData = NULL;
	int size;

	GetRoleInfo(aBuffer, strUser, size);
	if(size)
	{
		pRoleData = (TRoleData*)aBuffer;
		switch (nInfoID)
		{
		case gm_role_entergame_position:
			ASSERT(nBufLen == sizeof(GM_ROLE_DATA_SUB_ENTER_POS));
			memcpy(&(pRoleData->BaseInfo.ientergameid), pRoleBuffer, sizeof(GM_ROLE_DATA_SUB_ENTER_POS));
			break;
		default:
			ASSERT(0);
			return;
			break;
		}
		SaveRoleInfo(aBuffer, strUser, false);
	}
	
    delete aBuffer;
}

//[wxb 2003-7-22]
void *GetRoleInfoForGM(int nInfoID, char * pRoleBuffer, char * strUser, int &nBufLen)
{
	int size = 0;
	ZCursor *cursor = db_table->search( strUser, strlen( strUser ) + 1 );
//	char *buffer = db_table->search( strUser, strlen( strUser ) + 1, size );
	if ( cursor )
	{
		TRoleData* pRole = (TRoleData*)cursor->data;
		switch(nInfoID) {
		case gm_role_entergame_position:
			nBufLen = sizeof(pRole->BaseInfo.ientergameid) + sizeof(pRole->BaseInfo.ientergamex) + sizeof(pRole->BaseInfo.ientergamey);
			memcpy( pRoleBuffer, &(pRole->BaseInfo.ientergameid), nBufLen );
			break;
		default:
			ASSERT(0);
			nBufLen = 0;
			break;
		}

		db_table->closeCursor(cursor);
	}
	else
	{
		nBufLen = 0;
	}

	return pRoleBuffer;
}

void *GetRoleInfo( char * pRoleBuffer, char * strUser, int &nBufLen )
{
	//�������======
	char aStr[1024];
	sprintf(aStr,"GetRoleInfo:%s",strUser);
	AddOutputString(hListOutput,aStr);
	//===============
	int size = 0;
	ZCursor *cursor = db_table->search( strUser, strlen( strUser ) + 1 );
//	char *buffer = db_table->search( strUser, strlen( strUser ) + 1, size );
	if ( cursor )
	{
		nBufLen = size;
		memcpy( pRoleBuffer, cursor->data, cursor->size );
		nBufLen = cursor->size;
		db_table->closeCursor(cursor);
	}
	else
	{
		nBufLen = 0;
	}

	return pRoleBuffer;
}

//�����ɫ����Ϣ��������ݿⲻ���ڸ���ң������Ӹ����
//bAutoInsertWhenNoExistUser ��ΪTRUEʱ��ʾ�������Ҫ����ĸ���������ݿ��в����������Զ����뵽���ݿ��У�FALSE������ֱ�ӷ��ش���
//ע��INI�ļ�ֻ���Ž���Ҫ�Ķ������ݣ�����Ķ������ݽ��Զ�����ԭ״��
int	SaveRoleInfo( char * pRoleBuffer, const char *strUser, BOOL bAutoInsertWhenNoExistUser )
{
	ASSERT( pRoleBuffer );

	//��Ҫ����ʺ������ҵ�����
	TRoleData *pRoleData = ( TRoleData * )pRoleBuffer;
	
	//�������======
	char aStr[1024];
	sprintf(aStr,"SaveRoleInfo:%s dwDataLen=%d",pRoleData->BaseInfo.szName,pRoleData->dwDataLen);
	AddOutputString(hListOutput,aStr);
	//===============

	if(pRoleData->dwDataLen >= 64 * 1024) return 0;//������ݴ���64K�Ͳ����ӵ����ݿ�

	if(bAutoInsertWhenNoExistUser)
	{//�����������ɫ�Ͱ��˺���ת��Сд
		char *ptr = pRoleData->BaseInfo.caccname;	//���˺���ת��Сд
		while(*ptr) {
		if(*ptr >= 'A' && *ptr <= 'Z') *ptr += 'a' - 'A';
		ptr++;
		}
	}

	if (!bAutoInsertWhenNoExistUser)
	{
		DWORD	dwCRC = 0;
		dwCRC = CRC32(dwCRC, pRoleData, pRoleData->dwDataLen - 4);
		DWORD	dwOrigCRC = *(DWORD *)(pRoleBuffer + pRoleData->dwDataLen - 4);
		if (dwCRC != dwOrigCRC)
		{
			// TODO:
			FILE *fLog = fopen("crc_error", "a+b");
			if(fLog) {
				char buffer[255];
				sprintf(buffer, "----\r\n%s\r\b%s\r\n", pRoleData->BaseInfo.szName, pRoleData->BaseInfo.caccname);
				fwrite(buffer, 1, strlen(buffer), fLog);
				fwrite(pRoleBuffer, 1, pRoleData->dwDataLen, fLog);
				fclose(fLog);
			}
			return 0;
		}
	}

	char szAccountName[32];

	int nLength = strlen( pRoleData->BaseInfo.caccname );

	ASSERT( nLength > 0 );

	nLength = nLength > 31 ? 31 : nLength;

	memcpy( szAccountName, pRoleData->BaseInfo.caccname, nLength );
	szAccountName[nLength] = '\0';

	char szName[32];
	const char *pName = szName;

	if ( NULL == strUser || strUser[0] == 0 )
	{
		int len = strlen( pRoleData->BaseInfo.szName );

		ASSERT( len > 0 );

		len = len > 31 ? 31 : len;

		memcpy( szName, pRoleData->BaseInfo.szName, len );
		szName[len] = '\0';
	}
	else
	{
		int len = strlen( strUser );

		ASSERT( len > 0 );

		memcpy( szName, strUser, len );
		szName[len] = '\0';
	}
	
	if ( bAutoInsertWhenNoExistUser )
	{
		int nCount = 0;
		int size = 0;

		/*
		 * Role of same name only
		 */
		ZCursor *user_cursor = db_table->search(pName, strlen( pName ) + 1 );
//		char *user_data = db_table->search( pName, strlen( pName ) + 1, size );
		if ( user_cursor )
		{
			db_table->closeCursor(user_cursor);

			return 0;
		}

		/*
		 * Get count of role by the key of account
		 */
		ZCursor *cursor = db_table->search( szAccountName, strlen( szAccountName ) + 1, 0 );
//		char *buffer = db_table->search( szAccountName, strlen( szAccountName ) + 1, size, 0 );

		while ( cursor )
		{
			nCount ++;
			if(!db_table->next( cursor ))break;
		}

		if ( nCount >= nMaxRoleCount_InAccount )
		{
			return 0;
		}
	}

	if ( db_table->add( pName, strlen( pName ) + 1, pRoleBuffer, pRoleData->dwDataLen ) )
	{
		return 1;
	}

	return 0;
}

int GetRoleListOfAccount( char * szAccountName, S3DBI_RoleBaseInfo * RoleBaseList, int nMaxCount )
{
	int size = 0;
	int count = 0;

	char *ptr = szAccountName;	//���˺���ת��Сд
	while(*ptr) {
		if(*ptr >= 'A' && *ptr <= 'Z') *ptr += 'a' - 'A';
		ptr++;
	}

	//�������======
	char aStr[1024];
	sprintf(aStr,"GetRoleListOfAccount:%s",szAccountName);
	AddOutputString(hListOutput,aStr);
	//===============

	S3DBI_RoleBaseInfo *base_ptr = RoleBaseList;

	ZCursor *cursor = db_table->search( szAccountName, strlen( szAccountName ) + 1, 0 );
//	char *buffer = db_table->search( szAccountName, strlen( szAccountName ) + 1, size, 0 );
	
	while ( count < nMaxCount && cursor )
	{
		TRoleData *pRoleData = (TRoleData *)cursor->data;
		
		strncpy( base_ptr->szName, pRoleData->BaseInfo.szName, 32 ); 
        base_ptr->szName[31] = '\0';
		
		base_ptr->Sex = pRoleData->BaseInfo.bSex;
		base_ptr->Series = pRoleData->BaseInfo.ifiveprop;
//		base_ptr->HelmType = pRoleData->BaseInfo.ihelmres;
//		base_ptr->ArmorType = pRoleData->BaseInfo.iarmorres;
//		base_ptr->WeaponType = pRoleData->BaseInfo.iweaponres;
		base_ptr->Level = pRoleData->BaseInfo.ifightlevel;
		
		base_ptr++;
		
		/*
		 * Get next info from database
		 */
		count++;
		if(!db_table->next( cursor ))break;
	}
	return count;
}

bool DeleteRole( const char * strUser )
{
	if ( db_table && strUser && strUser[0] )
	{
		return db_table->remove( strUser, strlen( strUser ) + 1 );
	}
	return false;
}

// ����ĺ������ܴ����ڴ�й©����
//char* GetAccountByUser(char * strUser)
//{//ͨ���û��������ʻ�
//	char* aBuffer = new char[64 * 1024];
//	TRoleData* pRoleData;
//	int size;
//
//	GetRoleInfo(aBuffer, strUser, size);
//	if(size)
//	{
//		pRoleData = (TRoleData*)aBuffer;
//		return pRoleData->BaseInfo.caccname;
//	}
//	else
//	{
//		return NULL;
//	}
//}

//------------------------------------------------------------------------
//���ݿⱸ��������ͳ�� Add By Fellow At 2003.08.14
bool StartBackupTimer(int aTime)
{//��ʼ���б����߳�
	DBBackup = new CDBBackup( "database", "roledb", db_table );
	DBBackup->SaveStatInfo();
	bool aStartResult = DBBackup->Open(aTime);
	return aStartResult;
}

bool StopBackupTimer()
{//�������б����߳�
	if(!DBBackup)return false;
	while(IsBackupWorking()){}//�ȴ������߳̽���

	bool aResult = DBBackup->Close();
	delete DBBackup;
	DBBackup = NULL;
	return aResult;
}

bool SuspendBackupTimer()
{//�����߳�
	if(!DBBackup)return false;
	return DBBackup->Suspend();
}

bool ResumeBackupTimer()
{//���������߳�
	if(!DBBackup)return false;
	return DBBackup->Resume();
}

bool IsBackupThreadWorking()
{//�߳��Ƿ���������
	if(!DBBackup)return false;
	return DBBackup->IsWorking();
}

bool IsBackupWorking()
{//�Ƿ��ڱ���
	if(!DBBackup)return false;
	return DBBackup->IsBackuping();
}

bool DoManualBackup()
{//�ֹ�����
	if(!DBBackup)return false;
	return DBBackup->ManualBackup();
}

bool GetGameStat(TGAME_STAT_DATA* aStatData)
{
	if(!DBBackup)return false;
	TGAME_STAT_DATA tmpStatData = DBBackup->GetSendStatData();
	memcpy(aStatData, &tmpStatData, sizeof(TGAME_STAT_DATA));
	return true;
}

void AddOutputString(HWND hListCtrl, char* aStr)
{//���Ӳ����������
	if ( hListCtrl && ::IsWindow( hListCtrl ) )
	{
		int nCount = ::SendMessage( hListCtrl, LB_GETCOUNT, 0, 0 );
		if(nCount >= 100)
		{
			::SendMessage( hListCtrl, LB_DELETESTRING, 100, 0 );
		}
		int nIndex = ::SendMessage( hListCtrl, LB_INSERTSTRING, 0, ( LPARAM )aStr );//���µ���Ϣ������һ��
	}
}