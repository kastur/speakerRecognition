/*
 * abs.c
 *
 * Code generation for function 'abs'
 *
 * C source code generated on: Fri Jan 25 00:33:15 2013
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
static void MultiWordUnsignedWrap(const uint64_T u1[], int32_T n1, uint32_T n2,
  uint64_T y[]);
static void eml_reinterpretcast(const int64_T xfi[65], uint64_T yfi[65]);
static void uLong2MultiWord(uint64_T u, uint64_T y[], int32_T n);
static void uMultiWord2uMultiWordSat(const uint64_T u1[], int32_T n1, uint64_T
  y[], int32_T n);
static boolean_T uMultiWordLt(const uint64_T u1[], const uint64_T u2[], int32_T
  n);
static void uMultiWordShl(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[], int32_T n);
static void uMultiWordShr(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[], int32_T n);

/* Function Definitions */
static void MultiWordUnsignedWrap(const uint64_T u1[], int32_T n1, uint32_T n2,
  uint64_T y[])
{
  int32_T n1m1;
  int32_T i;
  uint32_T ns;
  uint64_T mask;
  n1m1 = n1 - 1;
  for (i = 0; i <= n1m1 - 1; i++) {
    y[i] = u1[i];
  }

  ns = 64U - n2;
  mask = (1UL << ns) - 1UL;
  y[n1m1] = u1[n1m1] & mask;
}

static void eml_reinterpretcast(const int64_T xfi[65], uint64_T yfi[65])
{
  int32_T i;
  for (i = 0; i < 65; i++) {
    yfi[i] = (uint64_T)xfi[i];
  }
}

static void uLong2MultiWord(uint64_T u, uint64_T y[], int32_T n)
{
  int32_T i;
  y[0] = u;
  for (i = 1; i <= n - 1; i++) {
    y[i] = 0UL;
  }
}

static void uMultiWord2uMultiWordSat(const uint64_T u1[], int32_T n1, uint64_T
  y[], int32_T n)
{
  int32_T i;
  boolean_T doSaturation = FALSE;
  int32_T nc;
  i = n1 - 1;
  while ((!doSaturation) && (i >= n)) {
    doSaturation = (u1[i] != 0UL);
    i--;
  }

  if (doSaturation) {
    for (i = 0; i <= n - 1; i++) {
      y[i] = MAX_uint64_T;
    }
  } else {
    nc = n1 < n ? n1 : n;
    for (i = 0; i <= nc - 1; i++) {
      y[i] = u1[i];
    }

    while (i < n) {
      y[i] = 0UL;
      i++;
    }
  }
}

static boolean_T uMultiWordLt(const uint64_T u1[], const uint64_T u2[], int32_T
  n)
{
  return uMultiWordCmp(u1, u2, n) < 0 ? TRUE : FALSE;
}

static void uMultiWordShl(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[], int32_T n)
{
  int32_T nb;
  uint64_T ys;
  int32_T nc;
  uint64_T u1i;
  int32_T i;
  uint32_T nl;
  uint32_T nr;
  uint64_T yi;
  nb = (int32_T)n2 / 64;
  ys = (u1[n1 - 1] & 9223372036854775808UL) != 0UL ? MAX_uint64_T : 0UL;
  nc = nb > n ? n : nb;
  u1i = 0UL;
  for (i = 0; i <= nc - 1; i++) {
    y[i] = 0UL;
  }

  if (nb < n) {
    nl = n2 - (uint32_T)nb * 64U;
    nb += n1;
    if (nb > n) {
      nb = n;
    }

    nb -= i;
    if (nl > 0U) {
      nr = 64U - nl;
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

static void uMultiWordShr(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[], int32_T n)
{
  int32_T nb;
  int32_T i;
  int32_T nc;
  uint32_T nr;
  uint32_T nl;
  uint64_T u1i;
  int32_T i1;
  uint64_T yi;
  nb = (int32_T)n2 / 64;
  i = 0;
  if (nb < n1) {
    nc = n + nb;
    if (nc > n1) {
      nc = n1;
    }

    nr = n2 - (uint32_T)nb * 64U;
    if (nr > 0U) {
      nl = 64U - nr;
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
    y[i] = 0UL;
    i++;
  }
}

void b_abs(const cint32_T xfi[65], int32_T yreturn[65])
{
  int64_T xfi_re[65];
  int64_T xfi_im[65];
  int32_T i;
  uint64_T uv0[65];
  uint64_T uv1[65];
  uint128m_T rv1[65];
  uint128m_T r49;
  uint128m_T r50;
  uint128m_T r51;
  uint128m_T r52;
  static uint128m_T r53 = { { MAX_uint64_T, 1UL } };

  uint192m_T r54;
  uint192m_T r55;
  for (i = 0; i < 65; i++) {
    xfi_re[i] = (int64_T)xfi[i].re * (int64_T)xfi[i].re;
    xfi_im[i] = (int64_T)xfi[i].im * (int64_T)xfi[i].im;
  }

  eml_reinterpretcast(xfi_re, uv0);
  eml_reinterpretcast(xfi_im, uv1);
  for (i = 0; i < 65; i++) {
    uLong2MultiWord(uv0[i], &r49.chunks[0U], 2);
    MultiWordUnsignedWrap(&r49.chunks[0U], 2, 63U, &r50.chunks[0U]);
    uLong2MultiWord(uv1[i], &r51.chunks[0U], 2);
    MultiWordUnsignedWrap(&r51.chunks[0U], 2, 63U, &r49.chunks[0U]);
    MultiWordAdd(&r50.chunks[0U], &r49.chunks[0U], &r52.chunks[0U], 2);
    if (uMultiWordLt(&r52.chunks[0U], &r50.chunks[0U], 2)) {
      r52 = r53;
    }

    uMultiWord2MultiWord(&r52.chunks[0U], 2, &r54.chunks[0U], 3);
    uMultiWordShl(&r54.chunks[0U], 3, 63U, &r55.chunks[0U], 3);
    uMultiWord2uMultiWordSat(&r55.chunks[0U], 3, &r49.chunks[0U], 2);
    uMultiWordShr(&r49.chunks[0U], 2, 63U, &rv1[i].chunks[0U], 2);
  }

  b_sqrt(rv1, yreturn);
}

void c_abs(const cint32_T xfi[32], int32_T yreturn[32])
{
  int32_T i;
  int32_T xfi_re[32];
  int32_T xfi_im[32];
  uint128m_T r93;
  uint128m_T r94;
  uint128m_T r95;
  uint128m_T r96;
  static uint128m_T r97 = { { MAX_uint64_T, 1UL } };

  uint192m_T r98;
  uint192m_T r99;
  uint128m_T xfi_abs_sq[32];
  static uint128m_T r100 = { { 0UL, 0UL } };

  int32_T ytempPlusLsb;
  int32_T b_yreturn;
  int32_T ytemp;
  int128m_T r101;
  int128m_T r102;
  int64_T q0;
  int64_T q1;
  int64_T qY;
  int64_T b_qY;
  for (i = 0; i < 32; i++) {
    xfi_re[i] = xfi[i].re;
    xfi_im[i] = xfi[i].im;
    uLong2MultiWord((uint64_T)((int64_T)xfi_re[i] * (int64_T)xfi_re[i]),
                    &r93.chunks[0U], 2);
    MultiWordUnsignedWrap(&r93.chunks[0U], 2, 63U, &r94.chunks[0U]);
    uLong2MultiWord((uint64_T)((int64_T)xfi_im[i] * (int64_T)xfi_im[i]),
                    &r95.chunks[0U], 2);
    MultiWordUnsignedWrap(&r95.chunks[0U], 2, 63U, &r93.chunks[0U]);
    MultiWordAdd(&r94.chunks[0U], &r93.chunks[0U], &r96.chunks[0U], 2);
    if (uMultiWordLt(&r96.chunks[0U], &r94.chunks[0U], 2)) {
      r96 = r97;
    }

    uMultiWord2MultiWord(&r96.chunks[0U], 2, &r98.chunks[0U], 3);
    uMultiWordShl(&r98.chunks[0U], 3, 63U, &r99.chunks[0U], 3);
    uMultiWord2uMultiWordSat(&r99.chunks[0U], 3, &r93.chunks[0U], 2);
    uMultiWordShr(&r93.chunks[0U], 2, 63U, &xfi_abs_sq[i].chunks[0U], 2);
    yreturn[i] = 0;
    r93 = r100;
    if (uMultiWordLe(&xfi_abs_sq[i].chunks[0U], &r93.chunks[0U], 2)) {
      yreturn[i] = 0;
    } else {
      for (ytempPlusLsb = 30; ytempPlusLsb > -1; ytempPlusLsb += -1) {
        b_yreturn = yreturn[i];
        ytemp = yreturn[i] | 1 << ytempPlusLsb;
        sLong2MultiWord((int64_T)ytemp * (int64_T)ytemp, &r101.chunks[0U], 2);
        uMultiWord2MultiWord(&xfi_abs_sq[i].chunks[0U], 2, &r102.chunks[0U], 2);
        if (sMultiWordLe(&r101.chunks[0U], &r102.chunks[0U], 2)) {
          b_yreturn = ytemp;
        }

        yreturn[i] = b_yreturn;
      }

      if (yreturn[i] < ~(1 << 31)) {
        q0 = (int64_T)yreturn[i] + 1L;
        if (q0 > 2147483647L) {
          q0 = 2147483647L;
        } else {
          if (q0 < -2147483648L) {
            q0 = -2147483648L;
          }
        }

        ytempPlusLsb = (int32_T)q0;
        q0 = (int64_T)ytempPlusLsb * (int64_T)ytempPlusLsb;
        q1 = uMultiWord2sLongSat(&xfi_abs_sq[i].chunks[0U], 2);
        qY = q0 - q1;
        if ((q0 < 0L) && ((q1 >= 0L) && (qY >= 0L))) {
          qY = MIN_int64_T;
        } else {
          if ((q0 >= 0L) && ((q1 < 0L) && (qY < 0L))) {
            qY = MAX_int64_T;
          }
        }

        q0 = uMultiWord2sLongSat(&xfi_abs_sq[i].chunks[0U], 2);
        q1 = (int64_T)yreturn[i] * (int64_T)yreturn[i];
        b_qY = q0 - q1;
        if ((q0 < 0L) && ((q1 >= 0L) && (b_qY >= 0L))) {
          b_qY = MIN_int64_T;
        } else {
          if ((q0 >= 0L) && ((q1 < 0L) && (b_qY < 0L))) {
            b_qY = MAX_int64_T;
          }
        }

        if (qY < b_qY) {
          yreturn[i] = ytempPlusLsb;
        }
      }
    }
  }
}

/* End of code generation (abs.c) */
