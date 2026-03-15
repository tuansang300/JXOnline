#ifndef ISERVER_H
#define ISERVER_H

#include "zport.h"
#include "zbuffer.h"

enum enumClientConnectInfo {
	enumClientConnectCreate = 0x100,
	enumClientConnectClose
};

typedef void (*CALLBACK_SERVER_EVENT)(void * lpParam, const unsigned long &ulnID, const unsigned long &ulnEventType);

class IServer;
class ZListenThread : public ZThread {
	IServer *parent;
public:
	ZListenThread(IServer *the_parent) : ZThread() {
		parent = the_parent;
	}
	int action();
};

class ZSendThread : public ZThread {
public:
	IServer *parent;
	int index;
	ZSendThread()
	{
		parent = NULL;
		index = -1;
	}
	int action();
};

class ZRecvThread : public ZThread {
public:
	IServer *parent;
	int index;
	ZRecvThread()
	{
		parent = NULL;
		index = -1;
	}
	int action();
};

class ZCloseCallBackThread : public ZThread
{
	IServer *parent;
public:
	ZCloseCallBackThread(IServer *the_parent) : ZThread() {
		parent = the_parent;
	}
	int action();
};

class ZCreateCallBackThread : public ZThread
{
	IServer *parent;
public:
	ZCreateCallBackThread(IServer *the_parent) : ZThread() {
		parent = the_parent;
	}
	int action();
};

#define MAX_IN_BUFFER	8192

#define STATE_IDLE_CLIENT				0
#define STATE_SENDING_CLIENT			1
#define STATE_BLOCKED_CLIENT			2
#define STATE_CLOSING_CLIENT			3

class client_info {
public:
#ifdef WIN32
	OVERLAPPED read_overlapped;
	OVERLAPPED write_overlapped;

	WSABUF  m_wsaInBuffer;
	WSABUF	m_wsaOutBuffer;
#endif
	unsigned char m_byInBuffer[MAX_IN_BUFFER];
	SOCKET sock;
	struct sockaddr addr;
	int index;
	int read_index;
	int write_index;

	unsigned long server_key;
	unsigned long client_key;
	short state;
	unsigned char conn_flag;
	unsigned char recv_flag;
	client_info() {
		state = STATE_IDLE_CLIENT;
		conn_flag = 0;
		recv_flag = 0;
		read_index = write_index = -1;
#ifdef WIN32
		ZeroMemory(&read_overlapped, sizeof(OVERLAPPED));
		ZeroMemory(&write_overlapped, sizeof(OVERLAPPED));
#endif
	}
};

class IServer {
public:
	CALLBACK_SERVER_EVENT call_back;
	void *parameter;

	ZPerf sendPerf;
	ZPerf recvPerf;

	ZBuffer *buffer;

#ifdef WIN32
	HANDLE CompletionPort;
#else
	ZMutex mutex;
	sigset_t *sigsets;
	int *pids;
	int pid;
	int current_thread;
	ZSendThread *send_threads;
	ZRecvThread *recv_threads;
	ZCloseCallBackThread* close_callback_thread;
	ZCreateCallBackThread* create_callback_thread;
#endif
	int max_thread;
	SOCKET listen_socket;
	ZListenThread *listen_thread;

	client_info *clients;
	int max_client;

	IServer(int number, int thread_number = 4);
	~IServer();
	int getConnection(SOCKET sock);
	void closeConnection(client_info *client);
	bool sendData(client_info *client);
	bool receiveData(client_info *client);

	int Startup();
	int Cleanup();
	int Release();
	int Open(const unsigned long &ulnAddressToListenOn, const unsigned short &usnPortToListenOn);
	int OpenService(const unsigned long &ulnAddressToListenOn, const unsigned short &usnPortToListenOn) {
		return Open(ulnAddressToListenOn, usnPortToListenOn);
	}
	int CloseService();
	int RegisterMsgFilter(void * lpParam, CALLBACK_SERVER_EVENT pfnEventNotify);
	int PreparePackSink();
	int PackDataToClient(const unsigned long &ulnClientID, const void *pData, unsigned long datalength);
	int SendPackToClient();
	int SendPackToClient(int index);
	int SendData(const unsigned long &ulnClientID, const void *pData, unsigned long datalength);
	const void *GetPackFromClient(unsigned long ulnClientID, unsigned int &datalength);
	int ShutdownClient(const unsigned long &ulnClientID);
	const char * GetClientInfo(const unsigned long &ulnClientID);
};

#endif
