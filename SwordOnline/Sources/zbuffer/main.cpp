//Ŀǰʹ�õ�����Э�飬ͷ�������ֽ������ݰ��Ĵ�С

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "zclient.h"

ZBuffer z_buffer(102400, 10);
DWORD WINAPI TestProc1(LPVOID lpParameter) {
	char buffer[1024];
	for(int index = 0; index < 1024; index++) buffer[index] = (char)index;
	*(short *)buffer = 10;
	*(short *)(buffer + 12) = 20;
	while(true) {
		if(!z_buffer.receiveData(0, buffer, 34)) continue;
		Sleep(1);
		if(!z_buffer.receiveData(0, buffer, 5)) continue;
		Sleep(1);
		z_buffer.receiveData(0, buffer, 7);
		Sleep(1);
	}
	return 0;
}

DWORD WINAPI TestProc2(LPVOID lpParameter) {
	char buffer[1024];
	for(int index = 0; index < 1024; index++) buffer[index] = (char)index;
	*(short *)buffer = 20;
	while(true) {
		if(!z_buffer.receiveData(1, buffer, 10)) continue;
		Sleep(1);
		z_buffer.receiveData(1, buffer + 10, 12);
		Sleep(1);
	}
}

DWORD WINAPI TestProc3(LPVOID lpParameter) {
	char buffer[1024];
	for(int index = 0; index < 1024; index++) buffer[index] = (char)index;
	while(true) {
		for(int index = 0; index < 100; index++) {
			if(!z_buffer.packData(3, buffer, 20)) break;
			Sleep(1);
		}
///		z_buffer.sendPacket(3);
	}
}

DWORD WINAPI TestProc4(LPVOID lpParameter) {
	char buffer[1024];
	for(int index = 0; index < 1024; index++) buffer[index] = (char)index;
	while(true) {
		for(int index = 0; index < 100; index++) {
			if(!z_buffer.packData(4, buffer, 10)) {
				printf("error!!!\r\n");

				break;
			}
			Sleep(1);
		}
//		z_buffer.sendPacket(4);
	}
}

int main(int argc, char **argv) {
//�������ݽ��գ�ʹ�ö���̣߳����м����̶߳�ĳһ�������������������ݣ����������ӵ����ݰ�����������������õģ�������ģ�����һ����������
//Ȼ��ʹ��һ���߳̽������ݽ���
	int size;
	ZClient client(&z_buffer);
	client.Startup();
	client.ConnectTo("192.168.22.105", 5622);
	char *packet;
	unsigned int length;
	while(true) {
		packet = (char *)client.GetPackFromServer(length);
		if(packet) {
			printf("read packet %d\n", length);
		}
		Sleep(1);
	}
	client.Shutdown();
/*	DWORD dwID;
	CreateThread(NULL, 0, TestProc1, (LPVOID)0, 0, &dwID);
	CreateThread(NULL, 0, TestProc2, (LPVOID)0, 0, &dwID);
	CreateThread(NULL, 0, TestProc3, (LPVOID)0, 0, &dwID);
	CreateThread(NULL, 0, TestProc4, (LPVOID)0, 0, &dwID);
	while(true) {
		char *data = z_buffer.getPacket(0, size);
		while(data) {
			printf("connection 0 get packet %d total size %d max size = %d\r\n", size, z_buffer.receive_perf.total_size, z_buffer.receive_perf.max_size);
			data = z_buffer.getPacket(0, size);
		}
		data = z_buffer.getPacket(1, size);
		while(data) {
			printf("connection 1 get packet %d\r\n", size);
			data = z_buffer.getPacket(1, size);
		}
		data = z_buffer.getSendData(3, size);
		while(data) {
			z_buffer.sendData(3, size);
			printf("connection 3 send packet %d\r\n", size);
			data = z_buffer.getSendData(3, size);
		}
	
		data = z_buffer.getSendData(4, size);
		while(data) {
			z_buffer.sendData(4, size);
			printf("connection 4 send packet %d\r\n", size);
			data = z_buffer.getSendData(4, size);
		}
		Sleep(1);
	}*/
	return 0;
}