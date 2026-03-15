// DBBackup.h: interface for the CDBBackup class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(DBBACKUP_H)
#define DBBACKUP_H

#include "DBTable.h"
#include "KProtocol.h"
#include "S3DBInterface.h"

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define LEVELSTATNUM 1000
#define MONEYSTATNUM 1000
#define KILLERSTATNUM 10
#define SECTMAXSTATNUM 100
class CDBBackup  
{
public:
	struct TRoleList
	{
		char Name[20];
		//char Account[32];
		int Level;
		int Money;
		int Sect;			//����
		int FightExp;
		int KillNum;
		BYTE Sort;
	};
	struct TStatData
	{
		TRoleList LevelStat[LEVELSTATNUM];			//������������б�
		TRoleList MoneyStat[MONEYSTATNUM];			//��Ǯ��������б�
		TRoleList KillerStat[KILLERSTATNUM];			//ɱ����������б�
		TRoleList MoneyStatBySect[11][SECTMAXSTATNUM];	//�����ɽ�Ǯ��������б�[����][�����]
		TRoleList LevelStatBySect[11][SECTMAXSTATNUM];	//�����ɼ�����������б�[����][�����]
		int SectPlayerNum[11];				//�������ɵ������
		int SectMoneyMost[11];				//�Ƹ�����ǰMONEYSTATNUM����и�������ռ������
		int SectLevelMost[11];				//��������ǰLEVELSTATNUM����и�������ռ������
		
	};
private:
	enum StatType{stMoney, stLevel, stKiller};//��Ҫ�жϵ����stMoney, stLevel��

	static TRoleList* GetMin(			//���ҳ��б���Ǯ/���𣨻����������ٵ�һ��Ԫ��
		TRoleList* const aRoleList,	//�б�
		const int n,				//�б���С
		const StatType aType);		//��Ҫ�жϵ����stMoney, stLevel��

	static void ListSort(			//���б����ض�������
		TRoleList* const aRoleList,	
		const int n,
		const StatType aType);
	static int GetIndexByName(char* aName, TRoleList* aList, int aListSize);
	static void RoleDataCopy(TRoleList* Desc, TRoleData* Source);//��RoleData���õĽṹ���Ƶ�RoleList�ṹ��
	static char* LoadFilterName();		//ȡ��Ҫ���˵��û����б� ��ά���� [������ֳ���20][��Ŀ]
	static bool IsRoleFilter(char* aName, char* aList);		//����ĳЩ��ɫ
private:
	HANDLE m_hThread; 
	HANDLE m_hManualThread; 
	static void Backup();			//���ݺ�д��ͳ������
	static void MakeSendStatData();	//���ɷ��͸��ͻ��˵�ͳ�����ݽṹ
	static DWORD WINAPI TimerThreadFunc( LPVOID lpParam );	//���ݼ�ʱ�߳�
	static DWORD WINAPI ManualThreadFunc( LPVOID lpParam );	//�ֹ������߳�
public:
	CDBBackup(char* aPath, char* aName, ZDBTable* aRunTable);
	virtual ~CDBBackup(){};
	bool Open(int aTime);		//�������ݼ�ʱ
	bool Suspend();						//����
	bool Resume();						//����ִ���߳�
	bool Close();						//�ر�
	TGAME_STAT_DATA GetSendStatData();	//ȡ�÷��͸��ͻ��˵�ͳ�����ݽṹ
	bool IsWorking();					//�߳��Ƿ��ڹ���
	bool IsBackuping();				//�����Ƿ��ڹ���
	bool ManualBackup();				//�ֹ�����
	void SaveStatInfo();			//����Ϸ����ȼ�����д��ָ����ҽ�ɫ��
};

#endif // !defined(DBBACKUP_H)
