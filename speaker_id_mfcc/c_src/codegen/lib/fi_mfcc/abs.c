/*
 * abs.c
 *
 * Code generation for function 'abs'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "abs.h"
#include "sqrt.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static void MultiWordUnsignedWrap(const uint32_T u1[], int32_T n1, uint32_T n2,
  uint32_T y[]);
static void eml_reinterpretcast(const int64m_T xfi[65], uint64m_T yfi[65]);
static void uMultiWord2uMultiWordSat(const uint32_T u1[], int32_T n1, uint32_T
  y[], int32_T n);
static boolean_T uMultiWordLt(const uint32_T u1[], const uint32_T u2[], int32_T
  n);
static void uMultiWordShl(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T
  y[], int32_T n);
static void uMultiWordShr(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T
  y[], int32_T n);

/* Function Definitions */
static void MultiWordUnsignedWrap(const uint32_T u1[], int32_T n1, uint32_T n2,
  uint32_T y[])
{
  int32_T n1m1;
  int32_T i;
  uint32_T ns;
  n1m1 = n1 - 1;
  for (i = 0; i <= n1m1 - 1; i++) {
    y[i] = u1[i];
  }

  ns = 32U - n2;
  ns = (1U << ns) - 1U;
  y[n1m1] = u1[n1m1] & ns;
}

static void eml_reinterpretcast(const int64m_T xfi[65], uint64m_T yfi[65])
{
  int32_T i;
  int64m_T r72;
  uint64m_T r73;
  for (i = 0; i < 65; i++) {
    r72 = xfi[i];
    sMultiWord2MultiWord(&r72.chunks[0U], 2, &r73.chunks[0U], 2);
    yfi[i] = r73;
  }
}

static void uMultiWord2uMultiWordSat(const uint32_T u1[], int32_T n1, uint32_T
  y[], int32_T n)
{
  int32_T i;
  boolean_T doSaturation = FALSE;
  int32_T nc;
  i = n1 - 1;
  while ((!doSaturation) && (i >= n)) {
    doSaturation = (u1[i] != 0U);
    i--;
  }

  if (doSaturation) {
    for (i = 0; i <= n - 1; i++) {
      y[i] = MAX_uint32_T;
    }
  } else {
    nc = n1 < n ? n1 : n;
    for (i = 0; i <= nc - 1; i++) {
      y[i] = u1[i];
    }

    while (i < n) {
      y[i] = 0U;
      i++;
    }
  }
}

static boolean_T uMultiWordLt(const uint32_T u1[], const uint32_T u2[], int32_T
  n)
{
  return uMultiWordCmp(u1, u2, n) < 0 ? TRUE : FALSE;
}

static void uMultiWordShl(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T
  y[], int32_T n)
{
  int32_T nb;
  uint32_T ys;
  int32_T nc;
  uint32_T u1i;
  int32_T i;
  uint32_T nl;
  uint32_T nr;
  uint32_T yi;
  nb = (int32_T)n2 / 32;
  ys = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
  nc = nb > n ? n : nb;
  u1i = 0U;
  for (i = 0; i <= nc - 1; i++) {
    y[i] = 0U;
  }

  if (nb < n) {
    nl = n2 - (uint32_T)nb * 32U;
    nb += n1;
    if (nb > n) {
      nb = n;
    }

    nb -= i;
    if (nl > 0U) {
      nr = 32U - nl;
      for (nc = 0; nc <= nb - 1; nc++) {
        yi = u1i >> nr;
        u1i = u1[nc];
        y[i] = yi | u1i << nl;
        i++;
      }

      if (i < n) {
        y[i] = u1i >> nr | ys << nl;
        i++;
      }
    } else {
      for (nc = 0; nc <= nb - 1; nc++) {
        y[i] = u1[nc];
        i++;
      }
    }
  }

  while (i < n) {
    y[i] = ys;
    i++;
  }
}

static void uMultiWordShr(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T
  y[], int32_T n)
{
  int32_T nb;
  int32_T i;
  int32_T nc;
  uint32_T nr;
  uint32_T nl;
  uint32_T u1i;
  int32_T i1;
  uint32_T yi;
  nb = (int32_T)n2 / 32;
  i = 0;
  if (nb < n1) {
    nc = n + nb;
    if (nc > n1) {
      nc = n1;
    }

    nr = n2 - (uint32_T)nb * 32U;
    if (nr > 0U) {
      nl = 32U - nr;
      u1i = u1[nb];
      for (i1 = nb + 1; i1 <= nc - 1; i1++) {
        yi = u1i >> nr;
        u1i = u1[i1];
        y[i] = yi | u1i << nl;
        i++;
      }

      yi = u1i >> nr;
      if (nc < n1) {
        yi |= u1[nc] << nl;
      }

      y[i] = yi;
      i++;
    } else {
      for (i1 = nb; i1 <= nc - 1; i1++) {
        y[i] = u1[i1];
        i++;
      }
    }
  }

  while (i < n) {
    y[i] = 0U;
    i++;
  }
}

void b_abs(const cint32_T xfi[65], int32_T yreturn[65])
{
  int64m_T xfi_re[65];
  int64m_T xfi_im[65];
  int32_T i;
  uint32_T u4;
  uint32_T u5;
  uint64m_T rv1[65];
  uint64m_T rv2[65];
  uint96m_T rv3[65];
  uint96m_T r65;
  uint96m_T r66;
  uint96m_T r67;
  uint96m_T r68;
  static uint96m_T r69 = { { MAX_uint32_T, MAX_uint32_T, 1U } };

  uint128m_T r70;
  uint128m_T r71;
  for (i = 0; i < 65; i++) {
    u4 = (uint32_T)xfi[i].re;
    u5 = (uint32_T)xfi[i].re;
    sMultiWordMul(&u4, 1, &u5, 1, &xfi_re[i].chunks[0U], 2);
    u4 = (uint32_T)xfi[i].im;
    u5 = (uint32_T)xfi[i].im;
    sMultiWordMul(&u4, 1, &u5, 1, &xfi_im[i].chunks[0U], 2);
  }

  eml_reinterpretcast(xfi_re, rv1);
  eml_reinterpretcast(xfi_im, rv2);
  for (i = 0; i < 65; i++) {
    uMultiWord2MultiWord(&rv1[i].chunks[0U], 2, &r65.chunks[0U], 3);
    MultiWordUnsignedWrap(&r65.chunks[0U], 3, 31U, &r66.chunks[0U]);
    uMultiWord2MultiWord(&rv2[i].chunks[0U], 2, &r67.chunks[0U], 3);
    MultiWordUnsignedWrap(&r67.chunks[0U], 3, 31U, &r65.chunks[0U]);
    MultiWordAdd(&r66.chunks[0U], &r65.chunks[0U], &r68.chunks[0U], 3);
    if (uMultiWordLt(&r68.chunks[0U], &r66.chunks[0U], 3)) {
      r68 = r69;
    }

    uMultiWord2MultiWord(&r68.chunks[0U], 3, &r70.chunks[0U], 4);
    uMultiWordShl(&r70.chunks[0U], 4, 31U, &r71.chunks[0U], 4);
    uMultiWord2uMultiWordSat(&r71.chunks[0U], 4, &r65.chunks[0U], 3);
    uMultiWordShr(&r65.chunks[0U], 3, 31U, &rv3[i].chunks[0U], 3);
  }

  b_sqrt(rv3, yreturn);
}

void c_abs(const cint32_T xfi[32], int32_T yreturn[32])
{
  int32_T i;
  int32_T xfi_re[32];
  int32_T xfi_im[32];
  uint32_T u8;
  uint32_T u9;
  int64m_T r128;
  uint64m_T r129;
  uint96m_T r130;
  uint96m_T r131;
  uint96m_T r132;
  uint96m_T r133;
  static uint96m_T r134 = { { MAX_uint32_T, MAX_uint32_T, 1U } };

  uint128m_T r135;
  uint128m_T r136;
  uint96m_T xfi_abs_sq[32];
  static uint96m_T r137 = { { 0U, 0U, 0U } };

  int32_T b_i;
  int32_T ytempPlusLsb;
  int32_T ytemp;
  int64m_T r138;
  int96m_T r139;
  int96m_T r140;
  int64m_T r141;
  int64m_T r142;
  int64m_T r143;
  static int64m_T r144 = { { 0U, 0U } };

  int64m_T r145;
  int64m_T r146;
  static int64m_T r147 = { { 0U, 2147483648U } };

  int64m_T r148;
  static int64m_T r149 = { { MAX_uint32_T, 2147483647U } };

  int64m_T r150;
  int64m_T r151;
  int64m_T r152;
  for (i = 0; i < 32; i++) {
    xfi_re[i] = xfi[i].re;
    xfi_im[i] = xfi[i].im;
    u8 = (uint32_T)xfi_re[i];
    u9 = (uint32_T)xfi_re[i];
    sMultiWordMul(&u8, 1, &u9, 1, &r128.chunks[0U], 2);
    sMultiWord2MultiWord(&r128.chunks[0U], 2, &r129.chunks[0U], 2);
    uMultiWord2MultiWord(&r129.chunks[0U], 2, &r130.chunks[0U], 3);
    MultiWordUnsignedWrap(&r130.chunks[0U], 3, 31U, &r131.chunks[0U]);
    u8 = (uint32_T)xfi_im[i];
    u9 = (uint32_T)xfi_im[i];
    sMultiWordMul(&u8, 1, &u9, 1, &r128.chunks[0U], 2);
    sMultiWord2MultiWord(&r128.chunks[0U], 2, &r129.chunks[0U], 2);
    uMultiWord2MultiWord(&r129.chunks[0U], 2, &r132.chunks[0U], 3);
    MultiWordUnsignedWrap(&r132.chunks[0U], 3, 31U, &r130.chunks[0U]);
    MultiWordAdd(&r131.chunks[0U], &r130.chunks[0U], &r133.chunks[0U], 3);
    if (uMultiWordLt(&r133.chunks[0U], &r131.chunks[0U], 3)) {
      r133 = r134;
    }

    uMultiWord2MultiWord(&r133.chunks[0U], 3, &r135.chunks[0U], 4);
    uMultiWordShl(&r135.chunks[0U], 4, 31U, &r136.chunks[0U], 4);
    uMultiWord2uMultiWordSat(&r136.chunks[0U], 4, &r130.chunks[0U], 3);
    uMultiWordShr(&r130.chunks[0U], 3, 31U, &xfi_abs_sq[i].chunks[0U], 3);
    yreturn[i] = 0;
    r130 = r137;
    if (uMultiWordLe(&xfi_abs_sq[i].chunks[0U], &r130.chunks[0U], 3)) {
      yreturn[i] = 0;
    } else {
      for (b_i = 30; b_i > -1; b_i += -1) {
        ytempPlusLsb = yreturn[i];
        ytemp = yreturn[i] | 1 << b_i;
        u8 = (uint32_T)ytemp;
        u9 = (uint32_T)ytemp;
        sMultiWordMul(&u8, 1, &u9, 1, &r138.chunks[0U], 2);
        sMultiWord2MultiWord(&r138.chunks[0U], 2, &r139.chunks[0U], 3);
        uMultiWord2MultiWord(&xfi_abs_sq[i].chunks[0U], 3, &r140.chunks[0U], 3);
        if (sMultiWordLe(&r139.chunks[0U], &r140.chunks[0U], 3)) {
          ytempPlusLsb = ytemp;
        }

        yreturn[i] = ytempPlusLsb;
      }

      if (yreturn[i] < ~(1 << 31)) {
        b_i = yreturn[i];
        ytempPlusLsb = b_i + 1;
        if ((b_i > 0) && (ytempPlusLsb <= 0)) {
          ytempPlusLsb = MAX_int32_T;
        }

        uMultiWord2sMultiWordSat(&xfi_abs_sq[i].chunks[0U], 3, &r141.chunks[0U],
          2);
        u8 = (uint32_T)yreturn[i];
        u9 = (uint32_T)yreturn[i];
        sMultiWordMul(&u8, 1, &u9, 1, &r142.chunks[0U], 2);
        MultiWordSub(&r141.chunks[0U], &r142.chunks[0U], &r143.chunks[0U], 2);
        r128 = r144;
        r145 = r144;
        r146 = r144;
        if (sMultiWordLt(&r141.chunks[0U], &r128.chunks[0U], 2) && sMultiWordGe(
             &r142.chunks[0U], &r145.chunks[0U], 2) && sMultiWordGe
            (&r143.chunks[0U], &r146.chunks[0U], 2)) {
          r143 = r147;
        } else {
          r145 = r144;
          r146 = r144;
          r148 = r144;
          if (sMultiWordGe(&r141.chunks[0U], &r145.chunks[0U], 2) &&
              sMultiWordLt(&r142.chunks[0U], &r146.chunks[0U], 2) &&
              sMultiWordLt(&r143.chunks[0U], &r148.chunks[0U], 2)) {
            r143 = r149;
          }
        }

        u8 = (uint32_T)ytempPlusLsb;
        u9 = (uint32_T)ytempPlusLsb;
        sMultiWordMul(&u8, 1, &u9, 1, &r150.chunks[0U], 2);
        uMultiWord2sMultiWordSat(&xfi_abs_sq[i].chunks[0U], 3, &r151.chunks[0U],
          2);
        MultiWordSub(&r150.chunks[0U], &r151.chunks[0U], &r152.chunks[0U], 2);
        r145 = r144;
        r146 = r144;
        r148 = r144;
        if (sMultiWordLt(&r150.chunks[0U], &r145.chunks[0U], 2) && sMultiWordGe(
             &r151.chunks[0U], &r146.chunks[0U], 2) && sMultiWordGe
            (&r152.chunks[0U], &r148.chunks[0U], 2)) {
          r152 = r147;
        } else {
          r145 = r144;
          r146 = r144;
          r148 = r144;
          if (sMultiWordGe(&r150.chunks[0U], &r145.chunks[0U], 2) &&
              sMultiWordLt(&r151.chunks[0U], &r146.chunks[0U], 2) &&
              sMultiWordLt(&r152.chunks[0U], &r148.chunks[0U], 2)) {
            r152 = r149;
          }
        }

        if (sMultiWordLt(&r152.chunks[0U], &r143.chunks[0U], 2)) {
          yreturn[i] = ytempPlusLsb;
        }
      }
    }
  }
}

/* End of code generation (abs.c) */
