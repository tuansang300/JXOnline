//---------------------------------------------------------------------------
// Sword3 Engine (c) 1999-2000 by Kingsoft
// 
// File:	KLuaScript.cpp
// Date:	2001-9-13 10:33:29
// Code:	Romandou
// Desc:	
//---------------------------------------------------------------------------
#include "KWin32.h"
#include "KDebug.h"
#include "KPakFile.h"
#include "KLuaScript.h"
#include "LuaLib.h"
#include "KMemClass.h"
//---------------------------------------------------------------------------
// ����:	KLuaScript::KLuaScript
// ����:	
// ����:	void
// ����:	
//---------------------------------------------------------------------------
KLuaScript::KLuaScript(void)
{
	m_LuaState					= lua_open(100);

	if (m_LuaState == NULL)
	{
		ScriptError(LUA_CREATE_ERROR);
		m_IsRuning			= FALSE;
		return ;
	}

	m_IsRuning				= TRUE;
	m_szScriptName[0]		= '\0';
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::KLuaScript
// ����:	
// ����:	int StackSize
// ����:	
//---------------------------------------------------------------------------
KLuaScript::KLuaScript(int StackSize)
{
	m_LuaState				= Lua_Create(StackSize);

	if (m_LuaState == NULL )
	{
		ScriptError(LUA_CREATE_ERROR);
		m_IsRuning = FALSE;
		return ;
	}
	m_IsRuning				= TRUE;
	m_szScriptName[0]		= '\0';
}


//---------------------------------------------------------------------------
// ����:	KLuaScript::~KLuaScript
// ����:	
// ����:	void
// ����:	
//---------------------------------------------------------------------------
KLuaScript::~KLuaScript(void)
{
	Exit();
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::LoadBuffer()
// ����:	
// ����:	PBYTE pBuffer
// ����:	DWORD dwLen
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::LoadBuffer(PBYTE pBuffer, DWORD dwLen )
{
	if (dwLen < 0)	
	{
		ScriptError(LUA_SCRIPT_LEN_ERROR);
		return FALSE;
	}
	
	if (Lua_CompileBuffer(m_LuaState, (char *) pBuffer, dwLen, NULL) != 0)
	{
		ScriptError(LUA_SCRIPT_COMPILE_ERROR);
		return FALSE;
	}
	return TRUE;
}
//---------------------------------------------------------------------------
// ����:	KLuaScript::Load
// ����:	
// ����:	LPSTR Filename
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::Load(char * Filename)
{
	KPakFile	File;
	DWORD		Size;

	
	// open file
	if (!File.Open(Filename))	return FALSE;
	
	// get file size
	Size = File.Size();
	
	KMemClass Memory;
	// alloc memory
	if (! Memory.Alloc(Size + 4))
		return FALSE;
	
	// read file
	if (File.Read(Memory.GetMemPtr(), Size) != Size)
		return FALSE;
	char * pszMem = (char *)Memory.GetMemPtr();
	pszMem[Size + 1] = 0;
	
	File.Close();
	try
	{
		if (!LoadBuffer((PBYTE)Memory.GetMemPtr(), Size ))
		{
			ScriptError(LUA_SCRIPT_COMPILE_ERROR);
			return FALSE;
		}
	}
	catch(...)
	{
		printf("Load Script %s �����쳣������!!\n", Filename);
		return FALSE;
	}
		
	if (!ExecuteCode()) return FALSE;

	return TRUE;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::Execute
// ����:	
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::Execute()
{
	if (m_IsRuning && m_LuaState)
	return CallFunction(MAINFUNCTIONNAME,0,"");
	
	return FALSE;
}


//---------------------------------------------------------------------------
// ����:	KLuaScript::ExecuteCode
// ����:	
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::ExecuteCode()
{
	if (!(m_IsRuning && m_LuaState))
	{
		ScriptError(LUA_SCRIPT_EXECUTE_ERROR);
		//if (!ExecuteCode()) return FALSE; ZHANGPENG ������������д�
		return FALSE;
	}
	
	int state;
	if (state = Lua_Execute(m_LuaState) != 0)
	{
		ScriptError(LUA_SCRIPT_EXECUTE_ERROR, state);
		return FALSE;
	}
	
	return	TRUE;
}


//---------------------------------------------------------------------------
// ����:	KLuaScript::CallFunction
// ����:	����Lua�ű��ڵĺ���
// ����:	LPSTR cFuncName
// ����:	int nResults
// ����:	LPSTR cFormat  ����ʱ�������������� 
//			n:������(double) d:����(int) s:�ַ����� f:C������  n:Nil v:Value p:Point
//        v��ΪLua֧�ֵģ�����Ϊ���ε���index��ָ����index��ָ��ջ�ı�����Ϊ
//			 �ú����ĵ��ò�����
//	ע�⣺���ڸú����в���������,�������֣�ϵͳ����ȷ��������double������int
//  ���ڣ����ֱ�����ʽ�ǲ�ͬ�ġ������Ҫע�⵱�������������ʱ����ʽ��Ӧ��d
//  ��������n,����ǿ�иı�Ϊdouble�Ρ��������ּ���Ĵ���
//   
// ����:	...
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::CallFunction(LPSTR cFuncName, int nResults, LPSTR cFormat, va_list vlist)
{
	
	double nNumber;
	char * cString	= NULL;
	void * pPoint	= NULL;
	Lua_CFunction CFunc;
	int i=0;
	int nArgnum = 0;
	int nIndex = 0;
	int nRetcode;		//���ýű�������ķ�����

	if (! (m_IsRuning && m_LuaState))
	{
		ScriptError(LUA_SCRIPT_STATES_IS_NULL);
		return FALSE;
	}
	
	{
		Lua_GetGlobal(m_LuaState, cFuncName); //�ڶ�ջ�м�����Ҫ���õĺ�����

		while (cFormat[i] != '\0')
		{
			switch(cFormat[i])
			{
			case 'n'://�����������double�� NUMBER��Lua��˵��Double��
				{ 
					nNumber = va_arg(vlist, double );
					Lua_PushNumber(m_LuaState, nNumber);
					nArgnum ++;							

				}
				break;
			
			case 'd'://���������Ϊ����
				{
					nNumber = (double)(va_arg(vlist, int));
					Lua_PushNumber(m_LuaState, (double) nNumber);
					nArgnum ++;
				}
				break;
				
			case 's'://�ַ�����
				{
					cString = va_arg(vlist, char *);
					Lua_PushString(m_LuaState, cString);
					nArgnum ++;							
				}
				break;
			case 'N'://NULL
				{
					Lua_PushNil(m_LuaState);
					nArgnum ++;
				}
				break;
			
			case 'f'://�������CFun�Σ����ڲ�������
				{
					CFunc = va_arg(vlist, Lua_CFunction);
					Lua_PushCFunction(m_LuaState, CFunc) ;
					nArgnum ++;
				}
				break;
			
			case 'v'://������Ƕ�ջ��IndexΪnIndex����������
				{
					nNumber = va_arg(vlist, int);
					int nIndex1 = (int) nNumber;
					Lua_PushValue(m_LuaState, nIndex1);
					nArgnum ++;
				}
				break;
			case 't'://����ΪһTable����
				{
					
					

				}
				break;
			
			case 'p':
				{
					pPoint = va_arg(vlist, void *);

					Lua_PushUserTag(m_LuaState, pPoint,m_UserTag);
					nArgnum ++;
				}
				break;
			}
				
			i++;	
		}
		
	}  
    		
	nRetcode = Lua_Call(m_LuaState, nArgnum, nResults);
	
	if (nRetcode != 0)
	{
		ScriptError(LUA_SCRIPT_EXECUTE_ERROR, nRetcode);
		return FALSE;
	}
	

	return	TRUE;
}


//---------------------------------------------------------------------------
// ����:	KLuaScript::CallFunction
// ����:	
// ����:	LPSTR cFuncName
// ����:	int nResults
// ����:	LPSTR cFormat
// ����:	...
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::CallFunction(LPSTR cFuncName, int nResults, LPSTR cFormat, ...)
{
	BOOL bResult  = FALSE;
	va_list vlist;
	va_start(vlist, cFormat);
	bResult = CallFunction(cFuncName, nResults, cFormat, vlist);
	va_end(vlist);
	return bResult;
}


//---------------------------------------------------------------------------
// ����:	KLuaScript::GetValuesFromStack
// ����:	�Ӷ�ջ�л�ñ���
// ����:	char * cFormat
// ����:	...
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::GetValuesFromStack(char * cFormat, ...)	
{
	va_list vlist;
	double* pNumber = NULL;
	const char **   pString ;
	int * pInt = NULL;
	int i = 0;
	int nTopIndex = 0;
	int nIndex = 0;
	int nValueNum = 0;//cFormat���ַ����ȣ���ʾ��Ҫȡ�Ĳ�������

	if (! m_LuaState)
		return FALSE;

	nTopIndex = Lua_GetTopIndex(m_LuaState);	
	nValueNum = strlen(cFormat);
	
	if (nTopIndex == 0 || nValueNum == 0)//����ջ�������ݻ�ȡ�����Ƿ���FALSE
		return FALSE;

	if (nTopIndex < nValueNum)
		return FALSE;

	nIndex = nTopIndex - nValueNum +1;
	
	{
		va_start(vlist, cFormat);     
		
		while (cFormat[i] != '\0')
		{
			
			switch(cFormat[i])
			{
			case 'n'://����ֵΪ��ֵ��,Number,��ʱLuaֻ����double�ε�ֵ
				{
					pNumber = va_arg(vlist, double *);
					
					if (pNumber == NULL)
						return FALSE;

					if (Lua_IsNumber(m_LuaState, nIndex ))
					{
						* pNumber = Lua_ValueToNumber(m_LuaState, nIndex ++ );
												
					}
					else
					{
						ScriptError(LUA_SCRIPT_NOT_NUMBER_ERROR);
						return FALSE;
					}
					
					
				}
				break;
			case 'd':
				{
					pInt = va_arg(vlist, int *);
					if (pInt == NULL)
						return FALSE;
					if ( Lua_IsNumber(m_LuaState, nIndex))
					{
						* pInt = (int ) Lua_ValueToNumber(m_LuaState, nIndex ++);
					}
					else
					{
						ScriptError(LUA_SCRIPT_NOT_NUMBER_ERROR);
						return FALSE;
					}

				}
				break;
			case 's'://�ַ�����
				{
					pString = va_arg(vlist, const char **);
					
					if (pString == NULL)
						return FALSE;
					
					if (Lua_IsString(m_LuaState, nIndex))
					{
						(*pString) = (const char *)Lua_ValueToString(m_LuaState, nIndex++);
						
					}
					else
					{
						ScriptError(LUA_SCRIPT_NOT_STRING_ERROR);
						return FALSE;
					}
				}
				break;
			
			}
			
			
		i ++;	
		}
		va_end(vlist);     		/* Reset variable arguments.      */
		
	}
	return	TRUE;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::Init
// ����:	��ʼ���ű�����ע��ϵͳ��׼������
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::Init()
{
	if (! m_LuaState)
	{
		m_LuaState				= Lua_Create(0);
		
		if (m_LuaState == NULL)
		{
			ScriptError(LUA_CREATE_ERROR);
			m_IsRuning			= FALSE;
			return FALSE;
		}
		
		m_IsRuning				= TRUE;
		m_szScriptName[0]		= '\0';
		m_UserTag = lua_newtag(m_LuaState)	;
	}
	
	RegisterStandardFunctions();
	return	TRUE;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::RegisterFunction
// ����:	ע��ĳ�ڲ�C�������ű���
// ����:	LPSTR FuncName  �ڽű���ʹ�õĺ�����
// ����:	void* Func    ʵ����Ӧ��C����ָ��
// ����:	int Args = 0 //��KScript�ӿ����ݣ�����
// ����:	int Flag = 0 //��KScript�ӿ�����, ����
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::RegisterFunction(LPSTR FuncName , void* Func)
{
	if (! m_LuaState)
		return FALSE;
	Lua_Register(m_LuaState, FuncName, (Lua_CFunction)Func);
	return TRUE;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::Compile
// ����:	
// ����:	char *
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::Compile(char *)
{
	return TRUE;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::RegisterFunctions
// ����:	����ע��Lua���ڲ�C������������������Ϣ������TLua_Funcs��������
// ����:	TLua_Funcs *Funcs �����ָ��
// ����:	int n ��������������Ϊ�㣬��ϵͳ����õ���
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::RegisterFunctions(TLua_Funcs Funcs[], int n)
{
	if (! m_LuaState)	return FALSE;
	if (n == 0)	n = sizeof(Funcs) / sizeof(Funcs[0]);
	for (int i = 0; i < n; i ++)	Lua_Register(m_LuaState, Funcs[i].name, Funcs[i].func);
	return TRUE;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::RegisterStandardFunctions
// ����:	ע��Luaϵͳ��׼�ĺ�����
// ����:	void 
//---------------------------------------------------------------------------
void KLuaScript::RegisterStandardFunctions()
{
	if (! m_LuaState)		return ;
	Lua_OpenBaseLib(m_LuaState);//Lua������
	Lua_OpenIOLib(m_LuaState);//���������
	Lua_OpenStrLib(m_LuaState);//�ַ���������
	Lua_OpenMathLib(m_LuaState);//��ֵ�����
	//Lua_OpenDBLib(m_LuaState);//���Կ�
	return;	
}


//---------------------------------------------------------------------------
// ����:	KLuaScript::ReleaseScript
// ����:	�ͷŸýű���Դ��
// ����:	BOOL 
//---------------------------------------------------------------------------
void KLuaScript::Exit()
{
	
	if (! m_LuaState)		return ;
	Lua_Release(m_LuaState);
	m_LuaState = NULL;
	m_IsRuning = FALSE;
	
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::ScriptError
// ����:	
// ����:	int Error
// ����:	void 
//---------------------------------------------------------------------------
void KLuaScript::ScriptError(int Error)
{
	char lszErrMsg[200];
	sprintf(lszErrMsg, "ScriptError %d. (%s) \n", Error, m_szScriptName);
	lua_outerrmsg(lszErrMsg);
	return;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::ScriptError
// ����:	
// ����:	int Error1
// ����:	int Error2
// ����:	void 
//---------------------------------------------------------------------------
void KLuaScript::ScriptError(int Error1 ,int Error2)
{
	char lszErrMsg[200];
	sprintf(lszErrMsg, "ScriptError %d:[%d] (%s) \n", Error1, Error2, m_szScriptName);
	lua_outerrmsg(lszErrMsg);
	return;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::SafeCallBegin
// ����:	
// ����:	int * pIndex
// ����:	void 
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// SafeCallBegin��SafeCallEnd������Ӧ����ʹ�ã��Է�ֹ�ڵ���Lua���ⲿ����֮��
//�ж��������ڶ�ջ��δ��������ﵽ����ǰ����ú��ջ��ռ�ô�С���䡣
//�������ֻ�����ڵ����ⲿ����ʱ���ڲ�����������˴�����
//																	Romandou
//---------------------------------------------------------------------------
void KLuaScript::SafeCallBegin(int * pIndex)
{
	if (! m_LuaState)		return ;
	Lua_SafeBegin(m_LuaState, pIndex);
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::SafeCallEnd
// ����:	
// ����:	int nIndex
// ����:	void 
//---------------------------------------------------------------------------
void KLuaScript::SafeCallEnd(int nIndex)
{
	if (! m_LuaState)	return;
	Lua_SafeEnd(m_LuaState, nIndex);
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::StopScript
// ����:	��ֹ�ű�
// ����:	void
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::Stop(void)
{
	if (! m_IsRuning)		return TRUE;
	if (! m_LuaState)		return FALSE;
	m_IsRuning =  FALSE;
	return TRUE;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::ResumeScript
// ����:	�ָ�����ֹ�Ľű�
// ����:	void
// ����:	BOOL 
//---------------------------------------------------------------------------
BOOL KLuaScript::Resume(void)
{
	if ((! m_IsRuning) && (m_LuaState))
	{
		m_IsRuning = TRUE;
		return TRUE;
	}
	return FALSE;
}


//---------------------------------------------------------------------------
// ����:	KLuaScript::CreateTable
// ����:	����һ��Lua��Table���ڵ��øú���������Table������Ա֮�󣬱������
//			SetGlobalName()�������Tableָ��һ�����֡�
// ����:	DWORD 
//---------------------------------------------------------------------------
DWORD KLuaScript::CreateTable()
{
	 int nIndex = 0;
	
	nIndex = Lua_GetTopIndex(m_LuaState) ;
	Lua_NewTable(m_LuaState);
	if (Lua_GetTopIndex(m_LuaState) != ++nIndex ) 
		return -1;

	return nIndex;
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::SetGlobalName
// ����:	����Lua��ջ����������һ������
// ����:	LPSTR szName
// ����:	void 
//---------------------------------------------------------------------------
void KLuaScript::SetGlobalName(LPSTR szName)
{
	if (!szName) return ;
	Lua_SetGlobal(m_LuaState, szName);
}

//---------------------------------------------------------------------------
// ����:	KLuaScript::ModifyTable
// ����:	��ָ�����Ƶ�LuaTable�ö�ջ���ˣ������ض���Index
// ����:	LPSTR szTableName
// ����:	DWORD ��Lua�в����ڸ�Table�򷵻�-1
//---------------------------------------------------------------------------
DWORD KLuaScript::ModifyTable(LPSTR szTableName) 
{
	if (! szTableName[0])		return -1;
	
	int nIndex = Lua_GetTopIndex(m_LuaState);
	
	Lua_GetGlobal(m_LuaState, szTableName);

	if (Lua_GetTopIndex(m_LuaState) != ++nIndex)		return -1;
	
	return nIndex;
}
