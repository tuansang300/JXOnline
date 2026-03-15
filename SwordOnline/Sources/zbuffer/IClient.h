#ifndef ICLIENT_H
#define ICLIENT_H

#include "zport.h"
#include "xbuffer.h"
#include "Cipher.h"

enum enumServerConnectInfo {
	enumServerConnectCreate = 0x100,
	enumServerConnectClose
};

typedef void (*CALLBACK_CLIENT_EVENT )(void *lpParam, const unsigned long &ulnEventType);

class IClient;
class IClientThread : public ZThread {
	IClient *parent;
public:
	IClientThread(IClient *the_parent) : ZThread() {
		parent = the_parent;
	}
	int action();
};

class IClient {
protected:
	IClientThread *thread;
public:
	bool bConnected;
	bool bStop;
	unsigned int m_uServerKey;
	unsigned int m_uClientKey;
	CALLBACK_CLIENT_EVENT call_back;
	void *call_back_param;
	int nSocket;
	ZBuffer *buffer;
	IClient(int max_send = 640 * 1024, int max_receive = 640 * 1024);
	~IClient();
	int Startup();
	int Cleanup();
	int Shutdown();
	void Release() {
	}
	bool ConnectTo(const char * const &pAddressToConnectServer, unsigned short usPortToConnectServer);
	void RegisterMsgFilter(void * lpParam, CALLBACK_CLIENT_EVENT pfnEventNotify);

	bool SendPackToServer( const void * const pData, const unsigned long datalength);
	void *GetPackFromServer(unsigned int &datalength );
	void startPerf() {
		buffer->startPerf();
	}
	void stopPerf() {
		buffer->stopPerf();
	}
};

#endif
