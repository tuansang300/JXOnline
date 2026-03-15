//---------------------------------------------------------------------------
// Blade Engine (c) 1999-2000 by Kingsoft
//
// File:	KWin32.h
// Date:	2001.10.10
// Code:	Daphnis
// Desc:	Percompiled header files of Win32 Platform
//---------------------------------------------------------------------------
#ifndef KWin32_H
#define KWin32_H 

#ifdef _STANDALONE
	#define ENGINE_API
	#define _ASSERT(x)
#else
	#ifdef ENGINE_EXPORTS
		#define ENGINE_API __declspec(dllexport)
	#else
		#define ENGINE_API __declspec(dllimport)
	#endif
#endif

#ifndef __linux
	#undef _WIN32_WINNT
	#define _WIN32_WINNT  0x0601
	#undef WINVER
	#define WINVER 0x0601
	#define WIN32_LEAN_AND_MEAN
	#include <winsock2.h>
	#include <windows.h>
	#define DIRECTINPUT_VERSION 0x0800
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
	#if _MSC_VER > 1000
	#pragma once
	#endif // _MSC_VER > 1000
        #include <mmsystem.h>
        #include <dsound.h>
        #include <dinput.h>
        #include <ddraw.h>
#else
#ifndef LONG
        #define LONG long
#endif
#ifndef INT
		#define INT int
#endif
#ifndef LPINT
		#define LPINT int *
#endif
#ifndef HWND
        #define HWND unsigned long
#endif
#ifndef HANDLE
        #define HANDLE unsigned long
#endif
#ifndef LPSTR
        #define LPSTR char *
#endif
#ifndef LPTSTR
        #define LPTSTR char *
#endif
#ifndef LPCSTR
        #define LPCSTR const char *
#endif
#ifndef LPCTSTR
		#define LPCTSTR const char *
#endif
#ifndef DWORD
        #define DWORD unsigned long
#endif
#ifndef LPVOID
        #define LPVOID void *
#endif
#ifndef PVOID
        #define PVOID void *
#endif
#ifndef BOOL
        #define BOOL int
#endif
#ifndef TRUE
        #define TRUE 1
#endif
#ifndef FALSE
        #define FALSE 0
#endif
#ifndef BYTE
        #define BYTE unsigned char
#endif
#ifndef WORD
        #define WORD unsigned short
#endif
#ifndef UINT
	#define UINT unsigned int
#endif
#ifndef PBYTE
	#define PBYTE unsigned char *
#endif
#ifndef LPBYTE
	#define LPBYTE unsigned char *
#endif
#ifndef LONG
        #define LONG long
#endif
#define IN
#define OUT
typedef struct tagRECT
{
    LONG    left;
    LONG    top;
    LONG    right;
    LONG    bottom;
} RECT, *LPRECT;

typedef struct tagPOINT
{
    LONG  x;
    LONG  y;
} POINT, *PPOINT;

typedef struct _GUID {          // size is 16
    DWORD Data1;
    WORD   Data2;
    WORD   Data3;
    BYTE  Data4[8];
} GUID;

#define MAX_PATH 300
#define CALLBACK
#include <stdarg.h> 

#define ZeroMemory(x,y) memset(x, 0, y)
#define max(a,b)            (((a) > (b)) ? (a) : (b))
#define min(a,b)            (((a) < (b)) ? (a) : (b))
#define FILE_CURRENT	1
#define FILE_END		2
#define FILE_BEGIN		0

#include <pthread.h>
#define MAKEWORD(a, b)      ((WORD)(((BYTE)(a)) | ((WORD)((BYTE)(b))) << 8))
#define MAKELONG(a, b)      ((LONG)(((WORD)(a)) | ((DWORD)((WORD)(b))) << 16))
#define LOWORD(l)           ((WORD)(l))
#define HIWORD(l)           ((WORD)(((DWORD)(l) >> 16) & 0xFFFF))
#define LOBYTE(w)           ((BYTE)(w))
#define HIBYTE(w)           ((BYTE)(((WORD)(w) >> 8) & 0xFF))

#ifdef WIN32
	#define SUCCEEDED(x)		((x) > 0)
#else
	#define SUCCEEDED(x)		((long)x >= 0)
#endif


#include <unistd.h>
#define __stdcall
#define LPDWORD unsigned long *
#define SOCKET_ERROR -1
#endif
//---------------------------------------------------------------------------
// Insert your headers here
// WIN32_LEAN_AND_MEAN is defined above before windows.h include
//---------------------------------------------------------------------------
#include <stdio.h>
#include <stdlib.h>


#ifndef ITOA
#define ITOA(NUMBER)  #NUMBER
#endif

#ifndef __TEXT_LINE__
#define __TEXT_LINE__(LINE) ITOA(LINE)
#endif

#ifndef KSG_ATTENTION
#define KSG_ATTENTION(MSG) __FILE__"(" __TEXT_LINE__(__LINE__)") : ATTENTION "#MSG
#endif


//---------------------------------------------------------------------------
#endif
