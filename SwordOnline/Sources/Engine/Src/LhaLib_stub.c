/* Stub implementations for lha_encode/lha_decode - original library not available */
#include <string.h>

void lha_encode(unsigned char* pIn, unsigned long nIn, unsigned char* pOut, unsigned long* pnOut)
{
    /* No compression - just copy */
    if (pIn && pOut && pnOut) {
        memcpy(pOut, pIn, nIn);
        *pnOut = nIn;
    }
}

void lha_decode(unsigned char* pIn, unsigned long nIn, unsigned char* pOut, unsigned long* pnOut)
{
    /* No decompression - just copy */
    if (pIn && pOut && pnOut) {
        memcpy(pOut, pIn, nIn);
        *pnOut = nIn;
    }
}
