#pragma once
#include <windows.h>
#define DXGetErrorString9 DXGetErrorString
#define DXGetErrorDescription9 DXGetErrorDescription
// Stub - dxerr9 functions (original header from DirectX SDK June 2010 is unavailable)
inline const char* DXGetErrorString(HRESULT hr) { return "Unknown"; }
inline const char* DXGetErrorDescription(HRESULT hr) { return ""; }
inline HRESULT DXTrace(const char* file, DWORD line, HRESULT hr, const char* msg, BOOL popup) { return hr; }
