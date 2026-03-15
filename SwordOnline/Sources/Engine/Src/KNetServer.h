//---------------------------------------------------------------------------
// Sword3 Engine (c) 1999-2002 by Kingsoft
//
// File:	KNetServer.h
// Date:	2002.07.10
// Code:	QiuXin
// Desc:	Header File
//---------------------------------------------------------------------------
#ifndef	KNetServer_H
#define	KNetServer_H
//---------------------------------------------------------------------------
#include <winsock2.h>
#include <ws2tcpip.h>
#include "KSafeList.h"

#define  MAX_CLIENT_NUMBER   1024
#define  SEND_BUFFER_SIZE      1024
#define  RECIEVE_BUFFER_SIZE 256 

#define  MAX_BACK_NUM        32 
#define  MAX_ISOLATE_NUM     128 
#define  MIN_COMPRESS_SIZE   1024

enum LOGSTATUS
{
	LogStatus_UnConnected,
	LogStatus_Connected,
	LogStatus_DBLoading,	// Loading PlayerInfo From DataBase
	LogStatus_Sync,			// Send(Sync) PlayerInfo To Client
	LogStatus_Login,	
	LogStatus_ConnectFail,
};

typedef struct {
                char   id[4];//"PACK"
				int    CountNum;//������ѭ����
				WORD   isCompressed;//0 ��ѹ�� 1��ѹ��
				WORD   DataNum;//���ݿ���Ŀ
				WORD   dwSize;//�����������ݰ���С��������Data��ǰ������ͷ��
                WORD   dwCompSize;//ѹ����������ݰ���С����ѹ��ʱ��ֵ��dwSize��ͬ 
				WORD   CipherVerify;//��ԿУ���
				WORD   wResered;
				BYTE   Data[SEND_BUFFER_SIZE];//������
        		}SEND_DATA;

typedef struct {
                SOCKET          Socket;
				struct sockaddr_in m_ClientAddr;
				int             m_nEnterLoopRate;//����ʱ��ϵͳ����    
                int             LogStatus;//0 δ���� 1���� 2������� 3�Ѽ��� 4�쳣����
	            int             IsolateNum;    //����ʧ�ܴ���
				BYTE            RecieveBuffer[RECIEVE_BUFFER_SIZE];
				int             LastRecvSize;
				BYTE            RecieveTemp[8*RECIEVE_BUFFER_SIZE];
				DWORD           dwTempSize;
                BYTE            RecieveDest[8*RECIEVE_BUFFER_SIZE];
				DWORD           dwDestSize;
				int             nShakeHandNum;
                SEND_DATA       SendBuffer; 
                SEND_DATA       SendTemp; 
                SEND_DATA       SendDest;   
                WORD            CurOffset;//��ǰ���ݿ�ƫ��
				BYTE            Cipher[16];
				BYTE            NextCipher[16];
				WORD            CipherVerify;//��ԿУ���
         		}CLIENT_DATA;
//---------------------------------------------------------------------------

class ENGINE_API KNetServer
{
private:
	struct sockaddr_in m_HostAddr;
	int                n_ClientNum;   //�Ѿ����ӵĿͻ�����Ŀ
    timeval            tval;          //����� (Ϊ1����)
    void*	           pCodec;

//
	short GetPortNumFromName(char *pname); 
	void  Encipher(int nClientIndex);
public:
    SOCKET m_Socket;
    char m_PortName[256];
    long m_nServerNode;
    KSafeList m_MsgList;
    KSafeList m_ServerList;
    CLIENT_DATA Client_data_array[MAX_CLIENT_NUMBER];
//for debug only    
	DWORD  n_SendSize;   //�ܹ����͵�������
    WORD   n_SendRecord[16];//���16�η��͵�������
	int    n_RecordIndex;//����λ��ָ��
//

    KNetServer(void);
    virtual ~KNetServer(void);
	virtual BOOL Create(char* portname);
	virtual void Close();
	virtual void CheckConnect();
	virtual int  RecieveData(int nClientIndex,BYTE *pBuffer,DWORD dwSize);
	virtual int  RecieveMessage(int nClientIndex,DWORD dwSize);
	virtual int  MessagePreProcess(int nClientIndex);
	virtual int  SendMessage(int nClientIndex);
	virtual int  SendDest(int nClientIndex);
    void CopyDataToTemp(void);
	void CopyTempToDest(void);
    void RecvDataToTemp(void);
	void RecvTempToDest(void);
	void MakeNewCipher(int nClientIndex);   
    void ClearRecvInfo(int nClientIndex); 
	void SetCountNum(int nClientIndex,int nCountNum);  
	int  GetClientNum() {return n_ClientNum; };
	void DelOneClient(int nClientIndex);
};
//---------------------------------------------------------------------------
extern ENGINE_API KNetServer* g_pNetServer;

#endif
