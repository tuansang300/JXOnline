// GameOptionPanel.cpp : implementation file
//

#include "stdafx.h"
#include "autoupdate.h"
#include "GameOptionPanel.h"
#include "../UPDATEDLL/src/UpdateExport.h"
#include "../engine/Src/KWin32.h"
#include "../engine/Src/KIniFile.h"
#include "../engine/Src/KFilePath.h"
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// GameOptionPanel dialog
const string FullScreenSectorName = "FullScreen";
const string RepresentSectorName  = "Represent";
const string DynaLightSectorName  = "DynamicLight";

const string FullScreenMode    = FullScreenSectorName + "=1";
const string WindowScreenMode  = FullScreenSectorName + "=0";

const string Represent2DMode   = RepresentSectorName + "=2";
const string Represent3DMode   = RepresentSectorName + "=3";

const string DynaLightMode     = DynaLightSectorName + "=1";
const string NotDynaLightMode  = DynaLightSectorName + "=0";

const string ConfileFileName   =  "config.ini";

const string Represent3DModuleFileName ="Represent3.dll";
const string Check_Represent_FunctionName = FN_REPRESENT_IS_MODULE_RECOMMENDED;



const string MessageTitle = "JxoinlineOption";



GameOptionPanel::GameOptionPanel(CWnd* pParent /*=NULL*/)
	: CDialog(GameOptionPanel::IDD, pParent)
{
	//{{AFX_DATA_INIT(GameOptionPanel)
	m_2DOptionValue = -1;
	m_FullScreenValue = -1;
	m_DynaLightEnableValue = FALSE;
	m_txtCapPath = _T("");
	//}}AFX_DATA_INIT
}


void GameOptionPanel::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(GameOptionPanel)
	DDX_Control(pDX, IDC_WindowOption, m_WindowOptionCtl);
	DDX_Control(pDX, IDC_3DOption, m_3DOptionCtl);
	DDX_Control(pDX, IDC_FullScreen, m_FullScreenCtl);
	DDX_Control(pDX, IDC_2DOption, m_2DOptionCtl);
	DDX_Control(pDX, IDC_DynaLightEnable, m_DynaLightEnableCtl);
	DDX_Radio(pDX, IDC_2DOption, m_2DOptionValue);
	DDX_Radio(pDX, IDC_FullScreen, m_FullScreenValue);
	DDX_Check(pDX, IDC_DynaLightEnable, m_DynaLightEnableValue);
	DDX_Text(pDX, IDC_TXT_CAPPATH, m_txtCapPath);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(GameOptionPanel, CDialog)
	//{{AFX_MSG_MAP(GameOptionPanel)
	ON_BN_CLICKED(IDC_OK, OnOk)
	ON_BN_CLICKED(IDC_3DOption, On3DOptionSelected)
	ON_BN_CLICKED(IDC_2DOption, On2DOption)
	ON_WM_DESTROY()
	ON_BN_CLICKED(IDC_DEFAULT, OnDefault)
	ON_BN_CLICKED(IDC_CANCEL, OnCancel)
	ON_BN_CLICKED(IDC_BTN_CAPPATH, OnBtnCappath)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// GameOptionPanel message handlers

void GameOptionPanel::OnOk() 
{
	// TODO: Add your control notification handler code here
	UpdateData();

	try
	{
		//写入config.ini文件
		char aConfigPath[MAX_PATH] ={0};
		g_GetRootPath(aConfigPath);
		strcat(aConfigPath, "\\");
		strcat(aConfigPath, ConfileFileName.c_str());
		char aCapPath[MAX_PATH] = {0};
		if (m_txtCapPath == "")
			g_GetRootPath(aCapPath);
		else
			strcpy(aCapPath, m_txtCapPath.GetBuffer(1));
		WritePrivateProfileString("Client","CapPath",aCapPath, aConfigPath);

		
		if (m_2DOptionCtl.GetCheck())
		{
			WritePrivateProfileString("Client","Represent","2", aConfigPath);
			WritePrivateProfileString("Client","DynamicLight","0", aConfigPath); 
		}
		else
		{
			WritePrivateProfileString("Client","Represent","3", aConfigPath);
			if (m_DynaLightEnableCtl.GetCheck())
				WritePrivateProfileString("Client","DynamicLight","1", aConfigPath);
			else
				WritePrivateProfileString("Client","DynamicLight","0", aConfigPath);
		}
		if (m_FullScreenCtl.GetCheck())
			WritePrivateProfileString("Client","FullScreen","1", aConfigPath);
		else
			WritePrivateProfileString("Client","FullScreen","0", aConfigPath);

		CDialog::OnOK();
	
	}
	catch(exception Error)
	{
		MessageBox(Error.what(),MessageTitle.c_str(),MB_ICONERROR);

	}
	

}

void GameOptionPanel::OnCancel() 
{
	// TODO: Add your control notification handler code here
	CDialog::OnCancel();
}

void GameOptionPanel::On3DOptionSelected() 
{
	// TODO: Add your control notification handler code here
	m_DynaLightEnableCtl.EnableWindow();

}

void GameOptionPanel::On2DOption() 
{
	// TODO: Add your control notification handler code here
	m_DynaLightEnableCtl.EnableWindow(FALSE);
	m_DynaLightEnableCtl.SetCheck(0);
	

}

BOOL GameOptionPanel::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
    
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
	if(m_hIcon != NULL)
	{
		SetIcon(m_hIcon,FALSE);
	
		SetIcon(m_hIcon, TRUE);

	}
	else
	{
		DisplayErrorInfo(string("LoadIcon(IDR_MAINFRAME) 出错") );
	}

	//读取config.ini文件
	char aConfigPath[MAX_PATH] ={0};
	g_GetRootPath(aConfigPath);
	strcat(aConfigPath, "\\");
	strcat(aConfigPath, ConfileFileName.c_str());
	char aCapPath[MAX_PATH] = {0};
	GetPrivateProfileString("Client","CapPath","",aCapPath, MAX_PATH, aConfigPath);
	if (aCapPath[0] == '\0')
		g_GetRootPath(aCapPath);
	m_txtCapPath = aCapPath;
	UpdateData(false);
	
	int nRepresentValue = GetPrivateProfileInt("Client","Represent", 3, aConfigPath);
	if( nRepresentValue == 2 )
	{
		m_2DOptionCtl.SetCheck(1);
		m_3DOptionCtl.SetCheck(0);
		m_DynaLightEnableCtl.SetCheck(0);
		m_DynaLightEnableCtl.EnableWindow(false);
	}
	else
	{
		m_2DOptionCtl.SetCheck(0);
		m_3DOptionCtl.SetCheck(1);
		m_DynaLightEnableCtl.EnableWindow();
		int nDynamicLight = GetPrivateProfileInt("Client","DynamicLight", 1, aConfigPath);
		if (nDynamicLight == 0)
			m_DynaLightEnableCtl.SetCheck(0);
		else
			m_DynaLightEnableCtl.SetCheck(1);
	}
	int nFullScreenValue = GetPrivateProfileInt("Client","FullScreen", 1, aConfigPath);
	if (nFullScreenValue == 0)
	{
		m_FullScreenCtl.SetCheck(0);
		m_WindowOptionCtl.SetCheck(1);
	}
	else
	{
		m_FullScreenCtl.SetCheck(1);
		m_WindowOptionCtl.SetCheck(0);
	}

	return TRUE;  // return TRUE unless you set the focus to a control
	// EXCEPTION: OCX Property Pages should return FALSE
}

void GameOptionPanel::OnDestroy() 
{
	CDialog::OnDestroy();
	
	// TODO: Add your message handler code here
	DeleteObject(m_hIcon);
}

void GameOptionPanel::OnDefault() 
{
	try
	{
		HMODULE Represent3DModule  = LoadLibrary(Represent3DModuleFileName.c_str());
		
		
		if(Represent3DModule == NULL)
		{
			string ErrorInfo = string("Error loading dynamic library'") +Represent3DModuleFileName + string("'error");
			throw exception (ErrorInfo.c_str());
			
			
		}
		
		fnRepresentIsModuleRecommended Check_Represent; 
		Check_Represent =(fnRepresentIsModuleRecommended) GetProcAddress(Represent3DModule,Check_Represent_FunctionName.c_str());
		
		if(Check_Represent == NULL)
		{
			FreeLibrary(Represent3DModule);
			string ErrorInfo = string("Error getting function address'") +Check_Represent_FunctionName + string("'error");
			throw exception (ErrorInfo.c_str());
		}
		
		char aCapPath[MAX_PATH] = {0};
		g_GetRootPath(aCapPath);
		m_txtCapPath = aCapPath;
		UpdateData(false);

		if((Check_Represent)())
		{
			m_2DOptionCtl.SetCheck(0);
			m_3DOptionCtl.SetCheck(1);
			m_DynaLightEnableCtl.SetCheck(1);
			m_DynaLightEnableCtl.EnableWindow();
			
			
		}
		else
		{
			m_2DOptionCtl.SetCheck(1);
			m_3DOptionCtl.SetCheck(0);
			m_DynaLightEnableCtl.SetCheck(0);
			m_DynaLightEnableCtl.EnableWindow(false);
		}
		
		m_FullScreenCtl.SetCheck(1);
		m_WindowOptionCtl.SetCheck(0);
		if(!FreeLibrary(Represent3DModule))
		{
			string ErrorInfo = string("Error releasing module'") +Represent3DModuleFileName + string("'error");
			throw exception (ErrorInfo.c_str());	
		}
		
	}
	catch(exception& Error)
	{
		DisplayErrorInfo(string(Error.what()));
				
		CDialog::OnCancel();

	}
}

void GameOptionPanel::OnBtnCappath() 
{
	UpdateData();
	LPITEMIDLIST pidlRoot=NULL; 
	SHGetSpecialFolderLocation(m_hWnd,CSIDL_DESKTOP,&pidlRoot); 

	BROWSEINFO bi;   //必须传入的参数,下面就是这个结构的参数的初始化 
	//CString strDisplayName;   //用来得到,你选择的活页夹路径,相当于提供一个缓冲区 
	bi.hwndOwner=GetSafeHwnd();   //得到父窗口Handle值 
	bi.pidlRoot=pidlRoot;   //这个变量就是我们在上面得到的. 
	bi.pszDisplayName=NULL;//strDisplayName.GetBuffer(MAX_PATH+1);   //得到缓冲区指针, 
	bi.lpszTitle="Browse for folder";   //设置标题 
	bi.ulFlags=0;   //设置标志 
	bi.lpfn=NULL; 
	bi.lParam=0; 
	bi.iImage=0;   //上面这个是一些无关的参数的设置,最好设置起来, 
	LPITEMIDLIST pIIL =SHBrowseForFolder(&bi);   //打开对话框 
	
	if(pIIL == NULL)return;
	//strDisplayName.ReleaseBuffer();   //和上面的GetBuffer()相对应 

	TCHAR szInitialDir[MAX_PATH];
	BOOL bRet = ::SHGetPathFromIDList(pIIL, (char*)&szInitialDir);

	m_txtCapPath = szInitialDir;
	UpdateData(false);
}
