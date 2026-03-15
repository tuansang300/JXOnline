#include "stdafx.h"
#include "IDBRoleServer.h"
#include "DBTable.h"

#include <iostream>
#include <strstream>

using namespace std;

#include "Macro.h"

static ZDBTable *db_table = NULL;

int get_account(DB *db, const DBT *pkey, const DBT *pdata, DBT *ikey) 
{
	//����һ��������buffer���õ�account��Ϊ����
	memset( ikey, 0, sizeof( DBT ) );
	TRoleData *pRoleData = (TRoleData *)pdata->data;

	ikey->data = pRoleData->BaseInfo.caccname;
	ikey->size = strlen( pRoleData->BaseInfo.caccname ) + 1;

	return 0;
}

BOOL InitDBInterface()
{
	db_table = new ZDBTable( "database", "roledb" );

	db_table->addIndex( get_account );
	if ( db_table->open() )
	{
		return TRUE;
	}
	
	return FALSE;
}

void ReleaseDBInterface()		//�ͷ����ݿ�����
{
	if ( db_table )
	{
		db_table->commit();

		db_table->close();
		delete db_table;
	}
}

void *GetRoleInfo( char * pRoleBuffer, char * strUser, int &nBufLen )
{
	int size = 0;
	char *buffer = db_table->search( strUser, strlen( strUser ) + 1, size );

	if ( buffer )
	{
		nBufLen = size;
		memcpy( pRoleBuffer, buffer, size );

		delete[] buffer;
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
	
	static char szName[64];
	const char *pName = szName;

	if ( NULL == strUser || strUser[0] == 0 )
	{
		int len = strlen( pRoleData->BaseInfo.szName );

		ASSERT( len > 0 );

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
		int size;
		char *user_data = db_table->search( pName, strlen( pName ) + 1, size );

		if ( user_data )
		{
			cout << "Find a valid, your don't create a role! " << pName << endl;

			delete[] user_data;
			return 0;
		}
	}

	if ( db_table->add( pName, strlen( pName ) + 1, pRoleBuffer, pRoleData->dwDataLen ) )
	{
		//if ( bAutoInsertWhenNoExistUser )
		//{
		//	return ( int )( db_table->commit() );
		//}
		
		cout << "Create successful! " << pName << endl;

		return 1;
	}

	return 0;
}

int GetRoleListOfAccount( char * szAccountName, S3DBI_RoleBaseInfo * RoleBaseList, int nMaxCount )
{
	int size = 0;
	int count = 0;

	S3DBI_RoleBaseInfo *base_ptr = RoleBaseList;
	
	char *buffer = db_table->search( szAccountName, strlen( szAccountName ) + 1, size, 0 );
	
	while ( db_table && buffer )
	{
		if ( count < nMaxCount )
		{
			TRoleData *pRoleData = (TRoleData *)buffer;

			strncpy( base_ptr->szName, pRoleData->BaseInfo.szName, 32 );

			base_ptr->Sex = pRoleData->BaseInfo.bSex;
			//base_ptr->HelmType = pRoleData->BaseInfo.ihelmres;
			//base_ptr->ArmorType = pRoleData->BaseInfo.iarmorres;
			//base_ptr->WeaponType = pRoleData->BaseInfo.iweaponres;
			base_ptr->Level = pRoleData->BaseInfo.ifightlevel;

			base_ptr++;
		}

		count++;
		buffer = db_table->next( size );
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