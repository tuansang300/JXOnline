#ifndef ZSPRPACKFILE
#define ZSPRPACKFILE

#include "KWin32.h"
typedef struct {
	unsigned long index_high;
	unsigned long index_low;
	long offset;
	long size;
} item_info;

#include "KSprite.h"

#define MINIMIZE_BLOCK_SIZE	16					//һ��������16���ֽ�
#define MAX_LAST			16					//��¼���ʹ�õ���

class ZCache {
	char *buffer;								//ʵ�ʵĻ�����
	item_info *free_items;						//���п�
	long cache_size;
	unsigned long last_items[MAX_LAST];
	int last;
	CRITICAL_SECTION mutex;
public:
	ZCache(long size);
	virtual ~ZCache();
	char *getNode(unsigned long index_high, unsigned long index_low, long size);
	void completeNode(char *node);
	char *searchNode(unsigned long index_high, unsigned long index_low = 0xFFFF);
	void releaseNode(char *node);
};

class ZFile {
protected:
	HANDLE m_hFile;
	unsigned long m_Size;
	ZCache *m_Cache;
public:
	bool opened;
	ZFile(const char *name, ZCache *cache) {
		opened = false;
		m_hFile = CreateFile(name, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, NULL);
		if(m_hFile != INVALID_HANDLE_VALUE) {
			m_Size = GetFileSize(m_hFile, NULL);
			m_Cache = cache;
			opened = true;
		}
	}
	virtual ~ZFile() {
		if(m_hFile != INVALID_HANDLE_VALUE) CloseHandle(m_hFile);
	}
	char *read(unsigned long offset, int size);
	int read(char *buffer, unsigned long offset, int size);
	void release(char *node) {
		m_Cache->releaseNode(node);
	}
};

//һ��Pack�ļ���������Ľṹ:
//�������ĸ��ֽڵ��ļ���ͷ��־:�ַ���'PACK',Ȼ���������ĿȻ����������ʼ��ƫ����\���ݿ�ʼ��ƫ����,Ȼ����У���,Ȼ���Ǳ������ֽ�:
//---------------------------------------------------------------------------------------------------------------------------------
typedef struct {		//������Ϣ
	unsigned long id;
	unsigned long offset;
	long size;
	long compress_size;
} index_info;

#define TYPE_NONE			0					//û��ѹ��
#define TYPE_UCL			1					//UCLѹ��
#define TYPE_BZIP2			2					//bzip2ѹ��
#define TYPE_FRAME			0x10				//ʹ���˶���֡ѹ��

typedef struct {
	unsigned char signature[4];			//" PACK"
	unsigned long count;				//���ݵ���Ŀ��
	unsigned long index_offset;			//������ƫ����
	unsigned long data_offset;			//���ݵ�ƫ����
	unsigned long crc32;
	unsigned char reserved[12];
} z_pack_header;

class ZPackFile : public ZFile {
protected:
	index_info	*index_list;
	z_pack_header header;
	bool _readData(int node_index, char *node);								//��ָ��node_index������ȫ������ָ���ڴ��У������Ҫ�Ļ���ɽ�ѹ��
public:
	ZPackFile(const char *name, ZCache *cache);					//���ļ�
	virtual ~ZPackFile();
	int getNodeIndex(unsigned long id);
	char *getData(unsigned long index);
	unsigned long getSize(unsigned long index);
	char *getData(const char *name);										//��ȡָ���ڵ������
	void releaseData(char *data);
};

typedef struct {
	long compress_size;
	long size;
} frame_info;

typedef struct {
	unsigned long	id;
	int				frame;
} frame_index_info;

#define MAX_IMAGE		0x10													//�����ʱ�ļ��ĸ���

class ZSPRPackFile : public ZPackFile
{
public:
	ZSPRPackFile(const char *file_name, ZCache *the_cache);
	virtual ~ZSPRPackFile();

	SPRHEAD*	SprGetHeader(unsigned long uNameId, SPROFFS*& pOffsetTable);
	SPRFRAME*	SprGetFrame(SPRHEAD* pSprHeader, int nFrame);
};

unsigned long FileNameHash(const char* file_name);

#define	SPR_COMMENT_FLAG	0x525053

#define NODE_WAITING	0xFFFF0000ul;

#endif