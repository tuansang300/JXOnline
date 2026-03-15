
// This file includes the main headers for d3drender.

#ifndef __PRECOMPILE_H__
#define __PRECOMPILE_H__

#define DIRECT3D_VERSION        0x0900

#include <winsock2.h>
#include <ws2tcpip.h>
#include <windows.h>
#include <assert.h>

#include <d3d9types.h>
#include <d3d9.h>
#ifndef _NO_D3DX9
#include <d3dx9.h>
#else
// D3DX replacement types and functions when d3dx9.h is not available
#include <math.h>

#ifndef D3DX_PI
#define D3DX_PI    ((FLOAT)  3.141592654f)
#endif

#ifndef D3DX_FILTER_NONE
#define D3DX_FILTER_NONE  1
#endif

struct D3DXVECTOR3 {
    FLOAT x, y, z;
    D3DXVECTOR3() : x(0), y(0), z(0) {}
    D3DXVECTOR3(FLOAT _x, FLOAT _y, FLOAT _z) : x(_x), y(_y), z(_z) {}
    D3DXVECTOR3 operator+(const D3DXVECTOR3& v) const { return D3DXVECTOR3(x+v.x, y+v.y, z+v.z); }
    D3DXVECTOR3 operator-(const D3DXVECTOR3& v) const { return D3DXVECTOR3(x-v.x, y-v.y, z-v.z); }
    D3DXVECTOR3 operator*(FLOAT s) const { return D3DXVECTOR3(x*s, y*s, z*s); }
    D3DXVECTOR3 operator/(float s) const { return D3DXVECTOR3(x/s, y/s, z/s); }
    D3DXVECTOR3& operator+=(const D3DXVECTOR3& v) { x+=v.x; y+=v.y; z+=v.z; return *this; }
};

struct D3DXVECTOR4 {
    FLOAT x, y, z, w;
    D3DXVECTOR4() : x(0), y(0), z(0), w(0) {}
    D3DXVECTOR4(FLOAT _x, FLOAT _y, FLOAT _z, FLOAT _w) : x(_x), y(_y), z(_z), w(_w) {}
};

struct D3DXMATRIX {
    union {
        struct {
            FLOAT _11, _12, _13, _14;
            FLOAT _21, _22, _23, _24;
            FLOAT _31, _32, _33, _34;
            FLOAT _41, _42, _43, _44;
        };
        FLOAT m[4][4];
    };
    D3DXMATRIX() { memset(m, 0, sizeof(m)); }
    D3DXMATRIX operator*(const D3DXMATRIX& o) const {
        D3DXMATRIX r;
        for (int i = 0; i < 4; i++)
            for (int j = 0; j < 4; j++)
                for (int k = 0; k < 4; k++)
                    r.m[i][j] += m[i][k] * o.m[k][j];
        return r;
    }
};

inline D3DXMATRIX* D3DXMatrixIdentity(D3DXMATRIX* pOut) {
    memset(pOut, 0, sizeof(D3DXMATRIX));
    pOut->_11 = pOut->_22 = pOut->_33 = pOut->_44 = 1.0f;
    return pOut;
}

inline D3DXMATRIX* D3DXMatrixOrthoLH(D3DXMATRIX* pOut, FLOAT w, FLOAT h, FLOAT zn, FLOAT zf) {
    memset(pOut, 0, sizeof(D3DXMATRIX));
    pOut->_11 = 2.0f / w;
    pOut->_22 = 2.0f / h;
    pOut->_33 = 1.0f / (zf - zn);
    pOut->_43 = -zn / (zf - zn);
    pOut->_44 = 1.0f;
    return pOut;
}

inline D3DXMATRIX* D3DXMatrixPerspectiveFovLH(D3DXMATRIX* pOut, FLOAT fovy, FLOAT aspect, FLOAT zn, FLOAT zf) {
    FLOAT yScale = 1.0f / tanf(fovy / 2.0f);
    FLOAT xScale = yScale / aspect;
    memset(pOut, 0, sizeof(D3DXMATRIX));
    pOut->_11 = xScale;
    pOut->_22 = yScale;
    pOut->_33 = zf / (zf - zn);
    pOut->_34 = 1.0f;
    pOut->_43 = -zn * zf / (zf - zn);
    return pOut;
}

inline D3DXMATRIX* D3DXMatrixLookAtLH(D3DXMATRIX* pOut, const D3DXVECTOR3* pEye, const D3DXVECTOR3* pAt, const D3DXVECTOR3* pUp) {
    D3DXVECTOR3 zaxis = *pAt - *pEye;
    FLOAT zlen = sqrtf(zaxis.x*zaxis.x + zaxis.y*zaxis.y + zaxis.z*zaxis.z);
    if (zlen > 0) { zaxis.x /= zlen; zaxis.y /= zlen; zaxis.z /= zlen; }
    D3DXVECTOR3 xaxis(pUp->y*zaxis.z - pUp->z*zaxis.y, pUp->z*zaxis.x - pUp->x*zaxis.z, pUp->x*zaxis.y - pUp->y*zaxis.x);
    FLOAT xlen = sqrtf(xaxis.x*xaxis.x + xaxis.y*xaxis.y + xaxis.z*xaxis.z);
    if (xlen > 0) { xaxis.x /= xlen; xaxis.y /= xlen; xaxis.z /= xlen; }
    D3DXVECTOR3 yaxis(zaxis.y*xaxis.z - zaxis.z*xaxis.y, zaxis.z*xaxis.x - zaxis.x*xaxis.z, zaxis.x*xaxis.y - zaxis.y*xaxis.x);
    memset(pOut, 0, sizeof(D3DXMATRIX));
    pOut->_11 = xaxis.x; pOut->_12 = yaxis.x; pOut->_13 = zaxis.x;
    pOut->_21 = xaxis.y; pOut->_22 = yaxis.y; pOut->_23 = zaxis.y;
    pOut->_31 = xaxis.z; pOut->_32 = yaxis.z; pOut->_33 = zaxis.z;
    pOut->_41 = -(xaxis.x*pEye->x + xaxis.y*pEye->y + xaxis.z*pEye->z);
    pOut->_42 = -(yaxis.x*pEye->x + yaxis.y*pEye->y + yaxis.z*pEye->z);
    pOut->_43 = -(zaxis.x*pEye->x + zaxis.y*pEye->y + zaxis.z*pEye->z);
    pOut->_44 = 1.0f;
    return pOut;
}

inline D3DXMATRIX* D3DXMatrixInverse(D3DXMATRIX* pOut, FLOAT* pDeterminant, const D3DXMATRIX* pM) {
    // Simplified 4x4 matrix inverse using cofactor expansion
    FLOAT tmp[12];
    FLOAT src[16];
    FLOAT dst[16];
    for (int i = 0; i < 4; i++) for (int j = 0; j < 4; j++) src[i*4+j] = pM->m[i][j];
    tmp[0]  = src[10]*src[15]; tmp[1]  = src[11]*src[14]; tmp[2]  = src[9]*src[15];
    tmp[3]  = src[11]*src[13]; tmp[4]  = src[9]*src[14];  tmp[5]  = src[10]*src[13];
    tmp[6]  = src[8]*src[15];  tmp[7]  = src[11]*src[12]; tmp[8]  = src[8]*src[14];
    tmp[9]  = src[10]*src[12]; tmp[10] = src[8]*src[13];  tmp[11] = src[9]*src[12];
    dst[0]  = tmp[0]*src[5] + tmp[3]*src[6] + tmp[4]*src[7] - tmp[1]*src[5] - tmp[2]*src[6] - tmp[5]*src[7];
    dst[1]  = tmp[1]*src[4] + tmp[6]*src[6] + tmp[9]*src[7] - tmp[0]*src[4] - tmp[7]*src[6] - tmp[8]*src[7];
    dst[2]  = tmp[2]*src[4] + tmp[7]*src[5] + tmp[10]*src[7] - tmp[3]*src[4] - tmp[6]*src[5] - tmp[11]*src[7];
    dst[3]  = tmp[5]*src[4] + tmp[8]*src[5] + tmp[11]*src[6] - tmp[4]*src[4] - tmp[9]*src[5] - tmp[10]*src[6];
    dst[4]  = tmp[1]*src[1] + tmp[2]*src[2] + tmp[5]*src[3] - tmp[0]*src[1] - tmp[3]*src[2] - tmp[4]*src[3];
    dst[5]  = tmp[0]*src[0] + tmp[7]*src[2] + tmp[8]*src[3] - tmp[1]*src[0] - tmp[6]*src[2] - tmp[9]*src[3];
    dst[6]  = tmp[3]*src[0] + tmp[6]*src[1] + tmp[11]*src[3] - tmp[2]*src[0] - tmp[7]*src[1] - tmp[10]*src[3];
    dst[7]  = tmp[4]*src[0] + tmp[9]*src[1] + tmp[10]*src[2] - tmp[5]*src[0] - tmp[8]*src[1] - tmp[11]*src[2];
    tmp[0]  = src[2]*src[7]; tmp[1]  = src[3]*src[6]; tmp[2]  = src[1]*src[7];
    tmp[3]  = src[3]*src[5]; tmp[4]  = src[1]*src[6]; tmp[5]  = src[2]*src[5];
    tmp[6]  = src[0]*src[7]; tmp[7]  = src[3]*src[4]; tmp[8]  = src[0]*src[6];
    tmp[9]  = src[2]*src[4]; tmp[10] = src[0]*src[5]; tmp[11] = src[1]*src[4];
    dst[8]  = tmp[0]*src[13] + tmp[3]*src[14] + tmp[4]*src[15] - tmp[1]*src[13] - tmp[2]*src[14] - tmp[5]*src[15];
    dst[9]  = tmp[1]*src[12] + tmp[6]*src[14] + tmp[9]*src[15] - tmp[0]*src[12] - tmp[7]*src[14] - tmp[8]*src[15];
    dst[10] = tmp[2]*src[12] + tmp[7]*src[13] + tmp[10]*src[15] - tmp[3]*src[12] - tmp[6]*src[13] - tmp[11]*src[15];
    dst[11] = tmp[5]*src[12] + tmp[8]*src[13] + tmp[11]*src[14] - tmp[4]*src[12] - tmp[9]*src[13] - tmp[10]*src[14];
    dst[12] = tmp[2]*src[10] + tmp[5]*src[11] + tmp[1]*src[9] - tmp[4]*src[11] - tmp[0]*src[9] - tmp[3]*src[10];
    dst[13] = tmp[8]*src[11] + tmp[0]*src[8] + tmp[7]*src[10] - tmp[6]*src[10] - tmp[9]*src[11] - tmp[1]*src[8];
    dst[14] = tmp[6]*src[9] + tmp[11]*src[11] + tmp[3]*src[8] - tmp[10]*src[11] - tmp[7]*src[9] - tmp[2]*src[8];
    dst[15] = tmp[10]*src[10] + tmp[4]*src[8] + tmp[9]*src[9] - tmp[8]*src[9] - tmp[11]*src[10] - tmp[5]*src[8];
    FLOAT det = src[0]*dst[0] + src[1]*dst[1] + src[2]*dst[2] + src[3]*dst[3];
    if (pDeterminant) *pDeterminant = det;
    if (det == 0.0f) return NULL;
    det = 1.0f / det;
    for (int i = 0; i < 4; i++) for (int j = 0; j < 4; j++) pOut->m[i][j] = dst[i*4+j] * det;
    return pOut;
}

inline D3DXVECTOR3* D3DXVec3TransformCoord(D3DXVECTOR3* pOut, const D3DXVECTOR3* pV, const D3DXMATRIX* pM) {
    FLOAT w = pV->x*pM->_14 + pV->y*pM->_24 + pV->z*pM->_34 + pM->_44;
    pOut->x = (pV->x*pM->_11 + pV->y*pM->_21 + pV->z*pM->_31 + pM->_41) / w;
    pOut->y = (pV->x*pM->_12 + pV->y*pM->_22 + pV->z*pM->_32 + pM->_42) / w;
    pOut->z = (pV->x*pM->_13 + pV->y*pM->_23 + pV->z*pM->_33 + pM->_43) / w;
    return pOut;
}

inline D3DXVECTOR3* D3DXVec3Project(D3DXVECTOR3* pOut, const D3DXVECTOR3* pV, const D3DVIEWPORT9* pViewport,
    const D3DXMATRIX* pProjection, const D3DXMATRIX* pView, const D3DXMATRIX* pWorld) {
    D3DXVECTOR3 v = *pV;
    if (pWorld) D3DXVec3TransformCoord(&v, &v, pWorld);
    if (pView) D3DXVec3TransformCoord(&v, &v, pView);
    if (pProjection) D3DXVec3TransformCoord(&v, &v, pProjection);
    pOut->x = pViewport->X + pViewport->Width * (v.x + 1.0f) / 2.0f;
    pOut->y = pViewport->Y + pViewport->Height * (1.0f - v.y) / 2.0f;
    pOut->z = pViewport->MinZ + (pViewport->MaxZ - pViewport->MinZ) * v.z;
    return pOut;
}

inline D3DXVECTOR3* D3DXVec3Unproject(D3DXVECTOR3* pOut, const D3DXVECTOR3* pV, const D3DVIEWPORT9* pViewport,
    const D3DXMATRIX* pProjection, const D3DXMATRIX* pView, const D3DXMATRIX* pWorld) {
    D3DXVECTOR3 v;
    v.x = 2.0f * (pV->x - pViewport->X) / pViewport->Width - 1.0f;
    v.y = 1.0f - 2.0f * (pV->y - pViewport->Y) / pViewport->Height;
    v.z = (pV->z - pViewport->MinZ) / (pViewport->MaxZ - pViewport->MinZ);
    D3DXMATRIX mat;
    D3DXMatrixIdentity(&mat);
    if (pWorld) mat = mat * (*pWorld);
    if (pView) mat = mat * (*pView);
    if (pProjection) mat = mat * (*pProjection);
    D3DXMatrixInverse(&mat, NULL, &mat);
    D3DXVec3TransformCoord(pOut, &v, &mat);
    return pOut;
}

// D3DXCreateTexture replacement using IDirect3DDevice9::CreateTexture
inline HRESULT D3DXCreateTexture(LPDIRECT3DDEVICE9 pDevice, UINT Width, UINT Height, UINT MipLevels,
    DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, LPDIRECT3DTEXTURE9* ppTexture) {
    return pDevice->CreateTexture(Width, Height, MipLevels, Usage, Format, Pool, ppTexture, NULL);
}

// D3DXLoadSurfaceFromSurface replacement using StretchRect
inline HRESULT D3DXLoadSurfaceFromSurface(LPDIRECT3DSURFACE9 pDestSurface, const PALETTEENTRY* pDestPalette,
    const RECT* pDestRect, LPDIRECT3DSURFACE9 pSrcSurface, const PALETTEENTRY* pSrcPalette,
    const RECT* pSrcRect, DWORD Filter, D3DCOLOR ColorKey) {
    LPDIRECT3DDEVICE9 pDevice = NULL;
    pDestSurface->GetDevice(&pDevice);
    HRESULT hr = pDevice->StretchRect(pSrcSurface, pSrcRect, pDestSurface, pDestRect, D3DTEXF_NONE);
    if (pDevice) pDevice->Release();
    return hr;
}

#endif // _NO_D3DX9
#include <d3d9caps.h>

#include "..\..\engine\src\KEngine.h"
#include "..\..\engine\src\KBmpFile24.h"
#include "..\..\engine\src\KWin32Wnd.h"
#include "../iRepresent/KRepresentUnit.h"
#include "..\iRepresent\RepresentUtility.h"

typedef char                int8;
typedef short               int16;
typedef int	                int32;
typedef unsigned char       uint8;
typedef unsigned short      uint16;
typedef unsigned int        uint32;
typedef unsigned __int64    uint64;

#include "BaseInclude.h"

#define FASTCALL __fastcall

// STL
#pragma warning(disable : 4786)

#endif  // __PRECOMPILE_H__



