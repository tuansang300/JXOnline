#ifndef __KIMAGESTORE_H__
#define __KIMAGESTORE_H__

#include "KImageRes.h"

// STL
#pragma warning(disable : 4786)
#include <vector>
#include <list>
#include <fstream>
#ifndef __CODEWARRIOR
using namespace std;
#endif

//������ʾ�Ķ�ά������
struct KRPosition2
{
	int nX;
	int nY;
};

//������ʾ����ά������
struct KRPosition3
{
	int nX;
	int nY;
	int nZ;
};

//##ModelId=3DB511F30242
//##Documentation
//## ͼ�ε���Ϣ��
struct KImageParam
{
    //##ModelId=3DB512190144
    //##Documentation
    //## ͼ�ε��ܵ�֡��Ŀ
    short nNumFrames;

    //##ModelId=3DB51226012F
    //##Documentation
    //## ͼ�ε�֡�����
    short nInterval;

    //##ModelId=3DB5123B0158
    //##Documentation
    //## ͼ�κ������λ�����ص㣩��
    short nWidth;

    //##ModelId=3DB5123E036F
    //##Documentation
    //## ͼ���ݿ�����λ�����ص㣩
    short nHeight;

    //##ModelId=3DB512900118
    //##Documentation
    //## ͼ�βο��㣨���ģ��ĺ�����ֵ��
    short nReferenceSpotX;

    //##ModelId=3DB512A70306
    //##Documentation
    //## ͼ�βο��㣨���ģ���������ֵ��
    short nReferenceSpotY;

    //##ModelId=3DB512CD0280
    //##Documentation
    //## ͼ�ε�֡������Ŀ��ͨ��Ӧ��Ϊͼ�η�����Ŀ����
    short nNumFramesGroup;

};

enum IS_BALANCE_PARAM { 
    //## ��չm_pObjectList��ÿ�β������ӵ�Ԫ�ص���Ŀ
    ISBP_EXPAND_SPACE_STEP = 128, 
    //## ÿ���ٴ�����ͼ�ζ������һ��ƽ�����Ĭ��ֵ��
    ISBP_CHECK_POINT_DEF = 40, 
    //## ͼ����Ŀƽ���Ĭ��ֵ
    ISBP_BALANCE_NUM_DEF128 = 24, 
	ISBP_BALANCE_NUM_DEF256 = 30, 
	ISBP_BALANCE_NUM_DEF512 = 42, 
    //## ������Χ���Ȳ��ҵķ�Χ��С��
    ISBP_TRY_RANGE_DEF = 8 };

class KImageRes;

// ��Դ�����Ľڵ�
struct ResNode
{
	unsigned int		m_nLastUsedTime;			// ��һ����Ⱦ��ʱ���ǩ
	bool		m_bCacheable;				// �Ƿ�����Ӳ�̶�Ӧ�ļ�����Դ
	unsigned int		m_nID;						// ��ԴID������Դ������
	unsigned int		m_nType;					// ��Դ����
	KImageRes*	m_pTextureRes;				// ָ����Դ��ָ��
};

class iImageStore
{
public:
	//## ���ͼ��Դ�洢����ƽ��״����
    virtual void CheckBalance() = 0;

	//## ����ͼ�ζ�̬����ƽ�������
    virtual void SetBalanceParam(
        //## ����ͼ�ε���Ŀ��ƽ��ֵ��
        int nNumImage, 
        //## ÿ���ٴ�����ͼ�ζ������һ��ƽ���顣
        unsigned int uCheckPoint = 3000) = 0;

	//## ����ڴ�ͼ�ζ���ʧ�ܣ��򷵻�0�����򷵻ظ���ͼ������ת�����ɵ���ֵid��
    virtual unsigned int CreateImage(
        //## ͼ�ε����֡�
        const char* pszName, 
        //## ͼ�κ��
        int nWidth, 
         //## ͼ���ݿ�
        int nHeight, 
        //## ͼ������
        int nType) = 0;

	//## ָ���ͷ�ĳ��ͼ��Դ��
    virtual void FreeImage(
        //## ͼ���ļ���/ͼ������
        const char* pszImage) = 0;

	//## ����ͷ�ȫ����ͼ�ζ��󣬼Ȱ�����̬���صģ�Ҳ����ͨ������CreateImage���ɵġ�
    virtual void Free() = 0;

	//## ��ȡĳ��ͼ����Դ�������Ϣ��
    virtual bool GetImageParam(
        //## ָ�򱣴�ͼ����Դ�ļ���/ͼ�����Ļ�����
        const char* pszImage,
        //## ͼ����Ϣ�洢�ṹ��ָ��
        KImageParam* pImageData,
        //## ͼ��Դ����
		int nType) = 0;
	
	virtual bool GetImageFrameParam(
        //## ָ�򱣴�ͼ����Դ�ļ���/ͼ�����Ļ�����
        const char* pszImage,
		//ͼ��֡����
		int		nFrame,
        //## ֡ͼ�����������ͼ�ε�ƫ��
		KRPosition2* pOffset,
		//## ֡ͼ�δ�С
		KRPosition2* pSize,
        //## ͼ��Դ����
		int nType) = 0;

	//## ͼ�ε����ݶ���ָ�롣
    virtual KImageRes* GetImage(
        //## ͼ��Դ�ļ�����/ͼ������
        const char* pszImage,
        //## ͼ��id
        unsigned int& uImage,
        //## ͼ��ԭ����iImageStore�ڵ�λ�á�
        int& nImagePosition,
        //## Ҫ��ȡͼ�ε�֡��������
        int nFrame,
        //## ͼ��Դ����
        int nType,
        //## ��ȡʧ��ʱ�Ƿ��Զ�����
        bool bAutoLoad = true) = 0;
	
	//## ��ȡͼ��ָ��֡��ĳ������alphaֵ��
    virtual int GetImagePixelAlpha(
        //## ͼ����Դ�ļ���/ͼ����
        const char* pszImage, 
        //## ͼ�ε�֡������
        int nFrame, 
        //## �����ͼ�к�����
        int nX, 
        //## �����ͼ��������
        int nY, 
        //## ͼ��Դ����
        int nType) = 0;

	// ��ʼ��¼ͳ����Ϣ
	virtual void StartProfile() = 0;

	// ������¼ͳ����Ϣ
	virtual void EndProfile() = 0;

	// ���ͳ����Ϣ�ַ���
	virtual void GetProfileString(char* str, int BufLen) = 0;
	
	virtual bool InvalidateDeviceObjects() = 0;
	virtual bool RestoreDeviceObjects() = 0;
};

class KImageStore : public iImageStore
{
public:
	unsigned int m_nLoadCount;
	unsigned int m_nReleaseCount;
public:
	KImageStore();
	~KImageStore();

	//## ���ͼ��Դ�洢����ƽ��״����
    void CheckBalance();

	//## ����ͼ�ζ�̬����ƽ�������
    void SetBalanceParam(
        //## ����ͼ�ε���Ŀ��ƽ��ֵ��
        int nNumImage, 
        //## ÿ���ٴ�����ͼ�ζ������һ��ƽ���顣
        unsigned int uCheckPoint = 3000);

	//## ����ڴ�ͼ�ζ���ʧ�ܣ��򷵻�0�����򷵻ظ���ͼ������ת�����ɵ���ֵid��
    unsigned int CreateImage(
        //## ͼ�ε����֡�
        const char* pszName, 
        //## ͼ�κ��
        int nWidth, 
         //## ͼ���ݿ�
        int nHeight, 
        //## ͼ������
        int nType);

	//## ָ���ͷ�ĳ��ͼ��Դ��
    void FreeImage(
        //## ͼ���ļ���/ͼ������
        const char* pszImage);

	//## ����ͷ�ȫ����ͼ�ζ��󣬼Ȱ�����̬���صģ�Ҳ����ͨ������CreateImage���ɵġ�
    void Free();

	//## ��ȡĳ��ͼ����Դ�������Ϣ��
    bool GetImageParam(
        //## ָ�򱣴�ͼ����Դ�ļ���/ͼ�����Ļ�����
        const char* pszImage,
        //## ͼ����Ϣ�洢�ṹ��ָ��
        KImageParam* pImageData,
        //## ͼ��Դ����
		int nType);
	
	bool GetImageFrameParam(
        //## ָ�򱣴�ͼ����Դ�ļ���/ͼ�����Ļ�����
        const char* pszImage,
		//ͼ��֡����
		int		nFrame,
        //## ֡ͼ�����������ͼ�ε�ƫ��
		KRPosition2* pOffset,
		//## ֡ͼ�δ�С
		KRPosition2* pSize,
        //## ͼ��Դ����
		int nType);

	//## ͼ�ε����ݶ���ָ�롣
    KImageRes* GetImage(
        //## ͼ��Դ�ļ�����/ͼ������
        const char* pszImage,
        //## ͼ��id
        unsigned int& uImage,
        //## ͼ��ԭ����iImageStore�ڵ�λ�á�
        int& nImagePosition,
        //## Ҫ��ȡͼ�ε�֡��������
        int nFrame,
        //## ͼ��Դ����
        int nType,
        //## ��ȡʧ��ʱ�Ƿ��Զ�����
        bool bAutoLoad = true);
	
	//## ��ȡͼ��ָ��֡��ĳ������alphaֵ��
    int GetImagePixelAlpha(
        //## ͼ����Դ�ļ���/ͼ����
        const char* pszImage, 
        //## ͼ�ε�֡������
        int nFrame, 
        //## �����ͼ�к�����
        int nX, 
        //## �����ͼ��������
        int nY, 
        //## ͼ��Դ����
        int nType);

	bool InvalidateDeviceObjects();
	bool RestoreDeviceObjects();

private:
	//## ��ø���id�ڼ�¼���е�λ�á�
    //## ����ֵ���壺
    //##  ����ֵ >= 0 --> ������id�ڼ�¼���е�λ�ã���0��ʼ������ֵ��
    //##  ����ֵ < 0  --> ����û�и�����id�������Ҫ�����id�Ļ�������λ��Ӧ��Ϊ(-����ֵ-1)
    int FindImage(
        //## ͼ�ε�id
        unsigned int uImage, 
        //## ͼ�μ�¼��m_pObjectList�п��ܵ�λ�á�
        int nPossiblePosition);

	//## ����ͼ�ζ�������ָ��ͼ����Դ���������ʧ�ܣ������ٸ����ɵĶ���
    KImageRes* LoadImage(
        //## ͼ���ļ���
        const char* pszImageFile, 
        //## ͼ������
        unsigned int nType) const;

private:
	//## ��ͼ�ζ�������ܴ������ۼӼ�¼ֵ��
    DWORD m_tmLastCheckBalance;
	//## �������ڴ���ͼ����Ŀ��ƽ��ֵ
    int m_nBalanceNum;
	//## ����ƽ���ʱ�����á�
    unsigned int m_uCheckPoint;
	vector<ResNode>	m_TextureResList;	// ��ͼ��Դ����
	
	// ��������ͳ��
	unsigned int m_nHitCount;					// ���м���
	unsigned int m_nUseCount;					// ʹ�ü���
	bool m_bDoProfile;					// �Ƿ�������ͳ������
	float m_fCacheMemUsed;				// ���������ĵ��ڴ�,��λM
	float m_fCacheMemUseful;			// �����������ڴ�����ò��֣��ų�����ͼ�Ŀհ�����,��λM
	float m_fMemDrawingUsed;			// ��һ֡������Ⱦ���ڴ棨������ͼ�Ŀհ�����,��λM
	float m_fHitPercent;				// ������
};

#endif