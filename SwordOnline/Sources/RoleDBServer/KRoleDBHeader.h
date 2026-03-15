#pragma once
#define MAX_BLOCK_SIZE	350
enum	enumGame2DBServerProtol
{
	PROTOL_ONLYSAVEROLE,//��Ϸ�����������ݿ������Ҫ�󱣴�����
		PROTOL_SAVEORCREATEROLE,
		PROTOL_LOADROLE,//��ý�ɫ����
		PROTOL_GETROLELIST,//���ĳ���ʺŵĽ�ɫ�б�
		PROTOL_DELETEROLE,
};

enum   enumDBServer2DBProtol
{
	PROTOL_ROLEINFO,
		PROTOL_ROLELIST,
};

struct  TRoleHeader
{
	unsigned char	nProtoId;
	size_t			nDataLen;
	//unsigned long	ulIdentity;
};

struct 	TRoleNetMsg	:TRoleHeader	//	ÿ�����ݰ��Ľṹ
{
	unsigned char	bDataState;// 1 ��ʾ���µĵ�һ�Σ�0��ʾ����һ�εİ��ļ���
	size_t			nOffset;//When First ,it means TotalLen;Later, it means offset;
	char 			pDataBuffer[1];
};


/* Only define TProcessData here if KProtocol.h has NOT already defined it.
   KProtocol.h defines a different TProcessData (without TRoleHeader base). */
#ifndef KPROTOCOL_H
struct TProcessData: TRoleHeader
{
	unsigned long   ulNetId;
	char			pDataBuffer[1];
};
#endif

/* TStreamData is used by MGateWay / KRoleBlockProcess as a network packet
   that carries both ulNetId and ulIdentity.  When KProtocol.h is included
   first its TProcessData lacks ulNetId, so we give TStreamData its own
   definition that is a superset of both TProcessData variants. */
struct TStreamData
{
	unsigned char	nProtoId;
	size_t			nDataLen;
	unsigned long	ulNetId;
	unsigned long	ulIdentity;
	bool			bLeave;
	char			pDataBuffer[1];
};
typedef TRoleNetMsg KBlock;
