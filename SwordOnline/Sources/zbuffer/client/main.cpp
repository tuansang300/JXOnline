//Ŀǰʹ�õ�����Э�飬ͷ�������ֽ������ݰ��Ĵ�С

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../IClient.h"
#include <malloc.h>

//////////////////////////////////////////////////////////////////////////
// flying modified something
//////////////////////////////////////////////////////////////////////////

#define MAX_CLIENTS	60
int g_nMaxClients = MAX_CLIENTS;
void CALLBACK ServerEventNotify(void *lpParam, const unsigned long &ulnEventType)
{
	IClient* pThis = (IClient*)lpParam;
	switch( ulnEventType )
	{
	case enumServerConnectCreate:
		break;
	case enumServerConnectClose:
		pThis->Shutdown();
		break;
	}
}


int main(int argc, char **argv) {
//�������ݽ��գ�ʹ�ö���̣߳����м����̶߳�ĳһ�������������������ݣ����������ӵ����ݰ�����������������õģ�������ģ�����һ����������
//Ȼ��ʹ��һ���߳̽������ݽ���
	short nPortC = 1020;
	printf("Input port:");
	scanf("%d", &nPortC);
	printf("Input max clients: ");
	scanf("%d", &g_nMaxClients);
	if (g_nMaxClients <= 0)
		g_nMaxClients = 1;
	if (g_nMaxClients >= 500)
		g_nMaxClients = 500;

	int nClientCount = 0;
	IClient** client = (IClient**)_alloca(sizeof(IClient*) * g_nMaxClients);
	//ZClient client(&buffer);	
	char data_buf[256];
	unsigned int length;
	unsigned int nTotalRev = 0, nTotalSent = 0;
	for (int i = 0; i < sizeof(data_buf); i++)
		((unsigned char*)data_buf)[i] = (unsigned char)i;

	nClientCount = g_nMaxClients;
	for (i = 0; i < g_nMaxClients; i++)
	{
		client[i] = new IClient();
		//client[i]->RegisterMsgFilter(client[i], ServerEventNotify);
		client[i]->Startup();
		//if(!client[i]->ConnectTo("192.168.27.44", 5555)) {
		if(!client[i]->ConnectTo("192.168.27.44", nPortC)) {
			printf("%d connection failed!\n");
			nClientCount = i;
			exit(-2);
		}
	}
	int Tick = 0;
	int nGoodConnection = 0;
	while (true)
	{
		Tick++;
		nGoodConnection = 0;
		for (int i = 0; i < nClientCount; i++) 
		{
			char *data = (char *)client[i]->GetPackFromServer(length);
			if (data)
			{
				//printf("client %d get data from server %d: [%02x] [%02x] [%02x] [%02x]\n", i + 1, length, data[0], data[1], data[2], data[3]);
			}
			while(data) 
			{
				nTotalRev += length;
				data = (char *)client[i]->GetPackFromServer(length);
			}

			if (client[i]->bStop)
			{
				client[i]->Startup();
				if(!client[i]->ConnectTo("192.168.27.44", nPortC)) { //27.44", 1010)) {
					printf("%d reconnection failed!\n");
					continue;
				}
			}

			nGoodConnection++;
			//ÿ���뷢һ��
			if (i % Tick % (1000 / 50 / 2) == Tick % (1000 / 50 / 2))
			{
				client[i]->SendPackToServer(data_buf, sizeof(data_buf));
				nTotalSent += sizeof(data_buf);
				//printf("** client %03d send %d bytes: [%02x] [%02x], rev = %d K, sent = %d K\n", i + 1, sizeof(data_buf), data_buf[0], data_buf[1], nTotalRev / 1024, nTotalSent / 1024);
			}
			//printf()
		}

		if (Tick % 10 == 0)
			printf("** client status: rev = %d K, sent = %d K, connections = %03d/%03d\n",
					nTotalRev / 1024, nTotalSent / 1024, nGoodConnection, nClientCount);

		//0.05�봦��һ�ν�������
		Sleep(50);
	}
	for (i = 0; i < g_nMaxClients; i++)
	{
		delete client[i];
	}
	return 0;
}