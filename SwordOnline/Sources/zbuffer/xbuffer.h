#ifndef XBUFFER_H
#define XBUFFER_H

#include <string.h>
#include <stddef.h>

#define MINIMIZE_BLOCK 32						//最小块大小为32字节

class ZBuffer {
	char *send_buffer;							//实际使用的发送缓冲区
	char *receive_buffer;						//实际使用的接收缓冲区
	long max_send;								//发送缓冲区的大小
	long max_receive;							//接收缓冲区的大小

//下面是一些统计数据
	bool bPerf;

	char *receive_ptr;							//当前接收数据的指针
	long receive_size;							//接收数据的大小

	char *send_ptr;								//当前发送数据的指针
	long send_size;								//发送数据的大小
	char *packet_ptr;							//当前数据包的开始指针
	long packet_size;							//当前数据包的大小

public:
	ZBuffer(long the_max_send, long the_max_receive) {
		send_buffer = new char[the_max_send];
		if(send_buffer) max_send = the_max_send;
		else max_send = 0;
		receive_buffer = new char[the_max_receive];
		if(receive_buffer) max_receive = the_max_receive;
		else max_receive = 0;
		bPerf = false;
		receive_ptr = receive_buffer;
		receive_size = 0;
		send_ptr = send_buffer;
		send_size = 0;
		packet_ptr = send_buffer;
		packet_size = 0;
	}
	virtual ~ZBuffer() {
		if(send_buffer) delete[] send_buffer;
		if(receive_buffer) delete[] receive_buffer;
	}

//下面是对外提供的接口
	void stopPerf() {
		bPerf = false;
	}

	void startPerf() {
		bPerf = true;
	}

//获取可用的接收数据的缓冲区
	char *getReceiveBuffer(int &size) {
		if(receive_size + MINIMIZE_BLOCK > max_receive) {
//缓冲区已满，关闭连接
			return NULL;
		}
		if(receive_ptr + receive_size + MINIMIZE_BLOCK > receive_buffer + max_receive) {		//尾部空间不足
			memmove(receive_buffer, receive_ptr, receive_size);
			receive_ptr = receive_buffer;
		}
		size = (int)(max_receive - (receive_ptr - receive_buffer) - receive_size);
		return receive_ptr + receive_size;
	}
	void receiveData(int size) {
		receive_size += size;
	}
	const char *getPacket(int &size) {
		if(receive_size < (long)sizeof(unsigned short)) return NULL;
		size = *(unsigned short *)receive_ptr;
		if(receive_size >= size + (long)sizeof(unsigned short)) {
			receive_ptr += sizeof(unsigned short);
			receive_size -= sizeof(unsigned short);
			const char *result = (const char *)receive_ptr;
			receive_ptr += size;
			receive_size -= size;
			return result;
		}
		return NULL;
	}

	void clear() {
		send_ptr = send_buffer;
		send_size = 0;
		packet_size = 0;
		packet_ptr = send_buffer;
		receive_ptr = receive_buffer;
		receive_size = 0;
	}

//发送数据的接口分成两个操作，第一个是获取当前发送的缓冲区和长度，另一个是从缓冲区中移除指定大小的数据
	char *getSendData(int &size) {
		size = (int)*(unsigned short *)send_ptr;
		if(size) return send_ptr;
		else return NULL;
	}
	void sendData(int size) {
		send_ptr += size;
		send_size -= size;
		if(!send_size) {
			send_ptr = packet_ptr = send_buffer;
		}
	}

	bool packData(const char *data, int size) {
		if(send_size + size + MINIMIZE_BLOCK >= max_send) {
//缓冲区已满，关闭连接
			return false;
		}
		if(!packet_size) {
			packet_ptr = send_ptr + send_size;
			packet_ptr += sizeof(unsigned short);									//头两个字节表示大小
			*(unsigned short *)(send_ptr + send_size) = 0;
		}

		if(packet_ptr + packet_size + size + MINIMIZE_BLOCK >= send_buffer + max_send) {		//尾部的空间不足
			long offset = send_ptr - send_buffer;
			memmove(send_buffer, send_ptr, send_size + sizeof(unsigned short) + packet_size);
			send_ptr = send_buffer;
			packet_ptr -= offset;
		}
		memcpy(packet_ptr + packet_size, data, size);
		packet_size += size;
		send_size += size;
		return true;
	}

	// Complete current packet - write size header and return pointer to data for encoding
	char *completePacket(int &datalength) {
		if(!packet_size) return NULL;
		char *header_ptr = packet_ptr - sizeof(unsigned short);
		*(unsigned short *)header_ptr = (unsigned short)(packet_size + sizeof(unsigned short));
		datalength = packet_size;
		char *result = packet_ptr;
		return result;
	}

	// Finalize packet for sending (no-arg version)
	void sendPacket() {
		if(!packet_size) return;
		send_size += sizeof(unsigned short);  // account for the header
		packet_size = 0;
	}

	char *sendPacket(int index, int &datalength) {							//完成一个数据包
		if(!packet_size) {
			datalength = 0;
			return NULL;
		}
		char *header_ptr = packet_ptr - sizeof(unsigned short);
		*(unsigned short *)header_ptr = (unsigned short)(packet_size + sizeof(unsigned short));
		datalength = packet_size;
		char *result = packet_ptr;
		send_size += sizeof(unsigned short);  // account for the header
		packet_size = 0;
		return result;
	}

};

#endif
