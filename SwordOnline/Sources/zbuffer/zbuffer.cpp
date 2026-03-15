#include "zbuffer.h"
#include <string.h>
#include <stdlib.h>

ZPerf::ZPerf() {
	packet_number = remain_number = 0;
	total_size = remain_size = 0;
	max_size = min_size = -1;
	max_interval = min_interval = -1;
}

void ZPerf::start() {
#ifdef WIN32
	tick_count = ZTimer::now();
#endif
}

void ZPerf::stop() {
#ifdef WIN32
	tick_count = ZTimer::now() - tick_count;
#endif
}

void ZPerf::perfPacket(int size, connection_info *connection) {					//���ͻ��߽���һ�����ݰ�
	if(size > max_size || max_size == -1)
		max_size = size;
	if(size < min_size || min_size == -1)
		min_size = size;
	total_size += size;
	
#ifdef WIN32
/*	unsigned long interval = ZTimer::now();
	if(connection->packet_time == 0)
		connection->packet_time = interval;
	else {
		interval -= connection->packet_time;
		if(interval > max_interval || max_interval == -1)
			max_interval = (short)interval;
		if(interval < min_interval || min_interval == -1)
			min_interval = (short)interval;
		connection->packet_time += interval;
	}*/
#endif
}

void ZPerf::useBuffer(int size, connection_info *connection)
{
	remain_size += size;
	remain_number++;
	if(connection)
		connection->used_bufsize += size;
}

void ZPerf::freeBuffer(int size, connection_info *connection)
{
	remain_size -= size;
	remain_number--;
	if(connection)
		connection->used_bufsize -= size;
}

#ifdef ZBUFFER_H
bool ZBuffer::getNode(int index, int size) {
	int data_size = size;
	if (size >= 64 * 1024)
	{
		printf("too large block\n");
		return false;
	}
	bool bDebug = false;
	size += sizeof(packet_info);
	unsigned long align = size % MINIMIZE_BLOCK_SIZE;
	if(align)
		size += MINIMIZE_BLOCK_SIZE - align;
	if(size > buffer_size)
	{
		printf("size too large... <%08X> %d > %d\n", this, size, buffer_size);
		return false;
	}

	packet_info *next;
	int nDeadLock = 0;
	while(free_packet->size < size) {										//ɾ���������Ŀֱ�����㹻�Ŀռ�Ϊֹ
		if(bDebug) {
			printf("free %d %d\n", (char *)free_packet - buffer, free_packet->size);
		}
		next = (packet_info *)((char *)free_packet + free_packet->size);	//��һ���ڵ�
		if ((char *)next - buffer + sizeof(packet_info) >= buffer_size) {							//�Ѿ����˽�����λ�ã��ص�һ��
			free_packet = (packet_info *)buffer;
			if (free_packet->state != STATE_FREE)
			{
				printf("free_packet at head not free\n");
				while (free_packet->state != STATE_FREE)
					free_packet = (packet_info *)((char *)free_packet + free_packet->size);
			}
			printf("buffer <%08X> recycle...\n", this);
			printf("free_packet %d size = %d\n", (char *)free_packet - buffer, free_packet->size);
			continue;
		}
		else {
			if (next->state != STATE_FREE) {									//��Ҫɾ�����ϵĽڵ�
				printf("node alloc failed....request size = %d.\n", size);
				printf("skip for free node...\n");

				while (next->state != STATE_FREE && nDeadLock < 1024)
				{
					next = (packet_info *)((char *)next + next->size);
					if ((char *)next - buffer + sizeof(packet_info) >= buffer_size) {							//�Ѿ����˽�����λ�ã��ص�һ��
						next = (packet_info *)buffer;
						printf("abnormal buffer <%08X> recycle...\n", this);
					}
					nDeadLock++;
				}
				if(nDeadLock == 1024) {
					printf("Dead lock\n");
				}
				if (next->state == STATE_FREE)
				{
					free_packet = next;
					printf("skip for free node success %d...\n", (char *)free_packet - buffer);
					bDebug = true;
					continue;
				}

/*				printf("force recovery\n");
				int i;
				for (i = 0; i < max_connection; i++)
				{
					if (connections[i].state != CONNECTION_FREE &&
						connections[i].head_offset == (char*)next - buffer)
					{
						packet_info *packet = (packet_info *)(buffer + connections[i].head_offset);
						if (packet->next == -1)
							connections[i].head_offset = connections[i].tail_offset = -1;
						else
							connections[i].head_offset = packet->next;
						next->state = STATE_FREE;
						break;
					}
				}
				if (i >= max_connection)*/
				{
					printf("skip for free node failed...\n");
					printf("node pos %d | %d\n", (char*)free_packet - buffer, (char*)next - buffer);
					printf("status: total->%d | send-> %d / %d| recv-> %d / %d\n", buffer_size, send_perf.remain_size, send_perf.remain_number, receive_perf.remain_size, receive_perf.remain_number);
/*					for (int i = 0; i < max_connection; i++)
					{
						if (connections[i].state != CONNECTION_FREE && connections[i].used_bufsize)
						{
							printf("    [%d] connection use %d\n", i, connections[i].used_bufsize);
						}
					}*/
					return false;
				}
			}
			free_packet->size += next->size;
			free_packet->next = -1;
		}
	}
	next = (packet_info *)((char *)free_packet + size);
	if ((char *)next - buffer + sizeof(packet_info) >= buffer_size)
	{
		printf("buffer <%08X> recycle...\n", this);
		next = (packet_info *)buffer;

		nDeadLock = 0;
		if (next->state != STATE_FREE)
		{
			printf("recycle failed....\n");
			printf("skip for free node...\n");

			while (next->state != STATE_FREE && nDeadLock < 1024)
			{
				next = (packet_info *)((char *)next + next->size);
				if ((char *)next - buffer + sizeof(packet_info) >= buffer_size) {							//�Ѿ����˽�����λ�ã��ص�һ��
					next = (packet_info *)buffer;
					printf("abnormal buffer <%08X> recycle...\n", this);
				}
				nDeadLock++;
			}

		if(nDeadLock == 1024) {
				printf("Dead lock\n");
			}
			if (next->state != STATE_FREE)
			{
				printf("skip for free node failed...\n");
				return false;
			}
			else {
				printf("skip for free node success...\n");
			}
		}
	}
	else if (free_packet->size > size) {										//�зֵ�ǰ���п�Ϊռ�úͷ�ռ������
		next->size = free_packet->size - size;
		next->data_size = 0;
		next->current_size = 0;
		next->state = STATE_FREE;
		next->next = -1;
	}
	free_packet->size = size;
	free_packet->data_size = data_size;
	free_packet->current_size = 0;
	free_packet->next = -1;
	free_packet->state = STATE_IDLE;
	connection_info *current = &connections[index];
	if(current->head_offset == -1) {										//û������
		current->head_offset = current->tail_offset = (char *)free_packet - buffer;
	}
	else {
		packet_info *tail = (packet_info *)(buffer + current->tail_offset);
		tail->next = (char *)free_packet - buffer;
		current->tail_offset = tail->next;
	}
	free_packet = next;														//�������ÿ��п�
	return true;
}

ZBuffer::ZBuffer(long size, int number) {
	printf("alloc..ZBuffer<%08X>..", this);
	buffer_size = max_connection = 0;
	connections = new connection_info[number];
	if(!connections)
		return;
	max_connection = number;
	size += sizeof(packet_info);
	unsigned long align = size % MINIMIZE_BLOCK_SIZE;
	if(align)
		size += MINIMIZE_BLOCK_SIZE - align;

	buffer = new char[size];
	if(!buffer) {
		delete[] connections;
		return;
	}
	buffer_size = size;
	printf("size = %d\n", buffer_size);
	free_packet = (packet_info *)buffer;
	free_packet->size = buffer_size;
	free_packet->data_size = 0;
	free_packet->current_size = 0;
	free_packet->next = -1;
	bPerf = false;

	recv_buffers = new char*[max_connection];
	memset(recv_buffers, 0, sizeof(recv_buffers[0]) * max_connection);
	recv_buffer_size = new int[max_connection];
	memset(recv_buffer_size, 0, sizeof(recv_buffer_size[0]) * max_connection);
}

ZBuffer::~ZBuffer() {
	if(buffer_size) {
		delete[] buffer;
		delete[] connections;
	}
	if (recv_buffers)
	{
		for (int i = 0; i < max_connection; i++)
		{
			if (recv_buffers[i])
				delete recv_buffers[i];
		}
		delete recv_buffers;
	}
	if (recv_buffer_size)
		delete recv_buffer_size;
}

int ZBuffer::getConnection() {
	int index;
	for(index = 0; index < max_connection; index++) {
		if(connections[index].state == CONNECTION_FREE) {
			connections[index].state = CONNECTION_USED;
			return index;
		}
	}
	return -1;
}

long ZBuffer::getUsedBufferSize(int index)
{
	return connections[index].used_bufsize;
}

void ZBuffer::clear(int index, bool bSendOrRecv) {
	mutex.lock();
	connection_info *current = &connections[index];
	if(current->head_offset >= 0 ) {
		packet_info *packet = (packet_info *)(buffer + current->head_offset);
		while(packet) {
			packet->state = STATE_FREE;
			if (bPerf)
			{
				if (bSendOrRecv)
					send_perf.freeBuffer(packet->size, current);
				else
					receive_perf.freeBuffer(packet->size, current);
			}
			if(packet->next == -1) break;
			packet = (packet_info *)(buffer + packet->next);
		}
		current->head_offset = current->tail_offset = -1;
	}
	connections[index].reset();
	mutex.unlock();
}

bool ZBuffer::receiveData(int index, const char *data, int actsize) {				
	//���յ�һ�����ݣ����ܲ��������ڱ߽��ϣ������м������ݰ�
	//���յ�һ�����ݣ����ܲ��������ڱ߽��ϣ������м������ݰ�
	int size = actsize;
	mutex.lock();
	//printf("receiving buffer %d - %d\n", index, actsize);
	connection_info *current = &connections[index];
	const char *data_ptr = data;
	packet_info *packet = NULL;
	unsigned short packet_size = 0xFFFF;
	while (size > 0) {
		if (current->tail_offset >= 0) {
			packet = (packet_info *)(buffer + current->tail_offset);
		}

		//�����յ�ĩβһ���ֽڵı߽紦�� [wxb 2003-8-5]
		if (1 == size &&
			(packet && packet->current_size == packet->data_size))
		{
			//ASSERT(current->halfword == 0);
			current->halfword = (((unsigned short)0x8000) | (unsigned short)(*((unsigned char*)data_ptr)));
			//printf("Half word received..[%d]..tail<%02X>\n", index, *((unsigned char*)data_ptr));
			break;
		}

		if (current->head_offset == -1 || 
			(packet && packet->current_size == packet->data_size)) {

			//û�����ݰ������Ѿ������������ݰ��ˣ���Ҫ����
			if (current->halfword)
			{
				//������һ����β�ĵ����ֽ� [wxb 2003-8-5]
				packet_size = (unsigned short)((current->halfword & 0x7FFF) | ((unsigned short)(*((unsigned char*)data_ptr))) << 8) - sizeof(unsigned short);
				//printf("Half word received..[%d]..head<%02X>...processing<%02X>...yes perfect<%d>\n", index, *((unsigned char*)data_ptr), (current->halfword & 0x7FFF), packet_size);
				current->halfword = 0;
				data_ptr += 1;
				size -= 1;
			}
			else
			{
				packet_size = *(unsigned short *)data_ptr - sizeof(unsigned short);
				data_ptr += sizeof(unsigned short);
				size -= sizeof(unsigned short);
			}
			//printf("packet size = %d\n", packet_size);
			if (!getNode(index, packet_size)) {
 				mutex.unlock();
				printf("getNode fail while receiveData()\n");
				exit(0);
				return false;
			}
			packet = (packet_info *)(buffer + current->tail_offset);	//���»�ȡβ������ָ��
			packet->state = STATE_RECEIVING;							//���ڽ�������
			//�õ�һ���µ����ݰ���,�������ܷ���
			if (bPerf) {
				receive_perf.perfPacket(packet_size, current);
				receive_perf.packet_number++;
				receive_perf.useBuffer(packet->size, current);
			}
		}
		int copy_size = packet->data_size - packet->current_size;
		if(copy_size > size)
			copy_size = size;
		if (copy_size < 0)
		{
			mutex.unlock();
			printf("copy_size negative %08X, %d, %d, %d. <?> %d, %d | pos = %d\n", this, copy_size, packet->data_size, packet->current_size, actsize, data_ptr - data, (char*)packet - buffer);
			return false;
		}
		memcpy((char *)packet + sizeof(packet_info) + packet->current_size, data_ptr, copy_size);
		size -= copy_size;
		data_ptr += copy_size;
		packet->current_size += copy_size;
		if(packet->current_size == packet->data_size) {
			packet->state = STATE_WAITING;
		}
	}

	mutex.unlock();
	return true;
}
	
char *ZBuffer::getPacket(int index, int &size) {									//��ȡһ�����������ݰ�
	mutex.lock();
	connection_info *current = &connections[index];
	if(current->head_offset == -1) {
		mutex.unlock();
		return NULL;
	}
	// flying comment here, just to make sure that this argument
	// is correct.
	if (index == -1)
	{
		printf("call getPacket with illegal index!\n");
		mutex.unlock();
		return NULL;
	}
	packet_info *packet = (packet_info *)(buffer + current->head_offset);
	char *result = (char *)packet + sizeof(packet_info);
	if(current->head_offset == current->tail_offset) {					//ֻ��һ�����ݰ�
		if(packet->current_size != packet->data_size) {
			mutex.unlock();
			return NULL;		//������
		}
		current->head_offset = current->tail_offset = -1;
	}
	else current->head_offset = packet->next;

	size = packet->data_size;
	packet->current_size = 0;
	packet->data_size = 0;
	packet->state = STATE_FREE;
	if(bPerf)
	{
		receive_perf.freeBuffer(packet->size, current);
	}

	result = getRecvBuffer(index, size);
	memcpy(result, (char *)packet + sizeof(packet_info), size);

	mutex.unlock();
	return result;
}

//�������ݵĽӿڷֳ�����������һ���ǻ�ȡ��ǰ���͵Ļ������ͳ��ȣ�����һ���Ǵӻ��������ָ����С������
//���о���ͬʱ���ͺܶ����ݰ��Ĺ��ܡ�
char *ZBuffer::getSendData(int index, int &size) {
	connection_info *current = &connections[index];
	if(current->head_offset == -1) return NULL;					//û������
	mutex.lock();
	char *result = NULL;
	packet_info *packet = (packet_info *)(buffer + current->head_offset);
	if(packet->state == STATE_SENDING) {
		size = packet->data_size - packet->current_size;
		if(size == 0) {
			result = NULL;
		}
		else {
			result = (char *)packet + sizeof(packet_info) + packet->current_size;
		}
	}
	mutex.unlock();
	return result;
}

void ZBuffer::sendData(int index, int size) {
	//һ���ǻ�ȡ���ͻ������ɹ�֮��ŵ��ã�����ʡ��һЩ������
	connection_info *current = &connections[index];
	mutex.lock();
	packet_info *packet = (packet_info *)(buffer + current->head_offset);
	if(packet->state == STATE_SENDING) {
		packet->current_size += size;
		if(packet->current_size == packet->data_size) {			//һ�����ݰ��������
			if(bPerf) {
				send_perf.freeBuffer(packet->size, current);
				send_perf.perfPacket(packet->data_size, current);	//ͳ������	
			}
			packet->state = STATE_FREE;
			current->head_offset = packet->next;				
			if(current->head_offset < 0) 
				current->tail_offset = -1;
		}
	}
	//printf("data sent: %d - %d\n", index, size);
	mutex.unlock();
}

bool ZBuffer::packData(int index, const char *data, int size) {		//����һ�����ݰ�������
	mutex.lock();
	connection_info *current = &connections[index];
	packet_info *packet = NULL;
	if(current->tail_offset >= 0 ) packet = (packet_info *)(buffer + current->tail_offset);
	if(!packet || packet->state != STATE_PACKING) {
//��¼��ǰβ����ƫ����
		if(!getNode(index, MAX_PACKET_SIZE)) {
			mutex.unlock();
			printf("getNode fail while packData()\n");
			exit(0);
			return false;
		}
		packet = (packet_info *)(buffer + current->tail_offset);
		packet->state = STATE_PACKING;
		packet->current_size += sizeof(unsigned short);
		if (bPerf)
		{
			send_perf.useBuffer(packet->size, current);
		}
	}
	if(size + packet->current_size + sizeof(packet_info) > packet->size) {		//������һ����Ĵ�С
		//printf("packing size a bit large...%08X, %d,%d,%d\n", this, size,packet->current_size,packet->size);
		packet_info *old_packet = packet;
		packet_info *previous = (packet_info *)(buffer + current->head_offset);
		unsigned long old_tail = current->tail_offset;
		while(previous) {
			if(current->tail_offset == (char *)previous - buffer || previous->next == (char *)old_packet - buffer) {							//�ҵ�β����
				if(current->tail_offset == (char *)previous - buffer)
					current->head_offset = current->tail_offset = -1;
				else
					current->tail_offset = (char *)previous - buffer;
				if(!getNode(index, old_packet->size + MAX_PACKET_SIZE)) {				//���Ӵ�С
					mutex.unlock();
					printf("getNode fail while packData() 2\n");
					exit(0);
					return false;
				}
				old_packet->state = STATE_FREE;
				packet = (packet_info *)(buffer + current->tail_offset);
				if (bPerf)
				{
					send_perf.useBuffer(packet->size, current);
					send_perf.freeBuffer(old_packet->size, current);
				}
				memcpy((char *)packet + sizeof(packet_info),
					(char *)old_packet + sizeof(packet_info), old_packet->current_size);
				packet->current_size = old_packet->current_size;
				packet->state = STATE_PACKING;
				break;
			}
			if(previous->next == -1) {
				mutex.unlock();
				return false;
			}
			previous = (packet_info *)(buffer + previous->next);
		}
	}
	char *data_ptr = (char *)packet + sizeof(packet_info) + packet->current_size;
	memcpy(data_ptr, data, size);
	packet->current_size += size;
	mutex.unlock();
	return true;
}

char *ZBuffer::sendPacket(int index, int &datalength) {
	char *result = NULL;
	mutex.lock();
	connection_info *current = &connections[index];
	if(current->tail_offset >= 0) {
		packet_info *packet = (packet_info *)(buffer + current->tail_offset);
		if(packet->current_size > 0 && packet->state != STATE_SENDING) {
			packet->data_size = packet->current_size;
			datalength = packet->current_size - sizeof(unsigned short);
			result = (char *)packet + sizeof(packet_info) + sizeof(unsigned short);
			*(unsigned short *)((char *)packet + sizeof(packet_info)) = packet->data_size;
			packet->state = STATE_SENDING;
			packet->current_size = 0;
			if(bPerf) {
				send_perf.packet_number++;
			}
		}
	}
	mutex.unlock();
	//	if (datalength > 0)
	//printf("prepare to send %d - %d\n", index, datalength);
	return result;
}

#endif
