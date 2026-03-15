#ifndef ZBUFFER_H
#define ZBUFFER_H

#include "zport.h"
#define MINIMIZE_BLOCK_SIZE	16					//16�ֽڶ��룬��С�Ŀ��СΪ16�ֽ�

#define STATE_FREE						0					//δʹ��״̬
#define STATE_IDLE						1					//�Ѿ�����û������״̬
#define STATE_RECEIVING					2					//���ڽ�������
#define STATE_WAITING					3					//�ȴ�Ӧ�ó���ȡ������
#define STATE_PACKING					4					//���ڴ������
#define STATE_SENDING					5					//���ڷ���

typedef struct {
	// is it should be 2 bytes? 
	unsigned long  size;									//���ݰ��Ĵ�С(����������ֽ�)
	unsigned short data_size;								//ʵ�����ݵĴ�С
	unsigned short current_size;							//��ǰ��С(���ͻ��߽��չ�����)
	unsigned short  state;									//��ǰ״̬
	unsigned short  reserved;								//����
	long next;												//��һ���ݰ�(ƫ����)
} packet_info;

//���ݰ��ڻ������еĶ���
#define CONNECTION_FREE					0					//����û��ʹ��
#define CONNECTION_USED					1					//�����Ѿ�ʹ��

//���ӵĻ�����Ϣ
class connection_info
{
public:
	short state;								//���ӵ�״̬
	unsigned short halfword;					//�߽紦�� [wxb 2003-8-5]
	long head_offset;							//ͷ���ݰ��ڻ������е�ƫ����,-1��ʾû������
	long tail_offset;							//β���ݰ��ڻ������е�ƫ����,-1��ʾû������
	long used_bufsize;							//��ռ�õĻ������ֽ���
	unsigned long packet_time;					//�ϴ����ݰ��Ľ���ʱ��
	connection_info() { reset(); }
	void reset()
	{
		state = CONNECTION_FREE;
		head_offset = tail_offset = -1;
		packet_time = 0;
		halfword = 0;
		used_bufsize = 0;
	}
};								

//��������ͳ�Ƶ���
class ZPerf {
public:
	unsigned long packet_number;				//����/���յ����ݰ�����
	unsigned long remain_number;				//��ǰ��Ȼ�ڻ���������Ŀ

	int max_interval;							//��֮������ʱ����
	int min_interval;							//��֮�����Сʱ����
	unsigned long tick_count;					//��ʼ��ʱ��

	short max_size;								//��������С
	short min_size;								//������С��С
	unsigned long total_size;					//�ܴ�С
	unsigned long remain_size; 
	ZPerf();
	void start();
	void stop();
	void perfPacket(int size, connection_info *connection);
	void useBuffer(int size, connection_info *connection);
	void freeBuffer(int size, connection_info *connection);
};

class ZBuffer {
public:
	char *buffer;								//ʵ�ʵĻ�����
	packet_info *free_packet;					//���п�
	long buffer_size;							//�������Ĵ�С
	connection_info *connections;				//���ӵ��б�
	int max_connection;							//���������
	ZMutex mutex;
	
	char **recv_buffers;						//�ȴ���������ȡ����
	int *recv_buffer_size;

protected:

//�õ�һ�����е����ݿ飬��������ݿ�ŵ�ָ�������Ŀ��нڵ��������
	bool inline getNode(int index, int size);

	char *getRecvBuffer(int index, int size)
	{
#define MIN_RECV_BUF_SIZE	1024

		if (recv_buffer_size[index] >= size)
			return recv_buffers[index];

		//realloc
		if (recv_buffers[index])
			delete recv_buffers[index];
		recv_buffer_size[index] = MIN_RECV_BUF_SIZE > size ? MIN_RECV_BUF_SIZE : size;
		recv_buffers[index] = new char[recv_buffer_size[index]];
		return recv_buffers[index];
	}
public:
//������һЩͳ������
	bool bPerf;
	ZPerf send_perf;							//��������ͳ��
	ZPerf receive_perf;							//��������ͳ��

	ZBuffer(long size, int number);
	virtual ~ZBuffer();

//�����Ƕ����ṩ�Ľӿ�
	void stopPerf() {
		bPerf = false;
		send_perf.stop();
		receive_perf.stop();
	}

	void startPerf() {
		bPerf = true;
		send_perf.start();
		receive_perf.start();
	}

	void clear(int index, bool bSendOrRecv);	//���ָ�����ӵ���������
	long getUsedBufferSize(int index);			//��ȡָ��������ռ�õĻ�������С
	int  getConnection();						//���һ��û��ʹ�õ�����

	bool receiveData(int index, const char *data, int size);
	char *getPacket(int index, int &size);

//�������ݵĽӿڷֳ�����������һ���ǻ�ȡ��ǰ���͵Ļ������ͳ��ȣ�����һ���Ǵӻ��������ָ����С������
	char *getSendData(int index, int &size);
	void sendData(int index, int size);
	bool packData(int index, const char *data, int size);
	char *sendPacket(int index, int &datalength);
};

#define MAX_PACKET_SIZE			1024			//���İ���С

#endif
