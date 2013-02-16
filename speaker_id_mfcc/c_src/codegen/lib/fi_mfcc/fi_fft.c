/*
 * fi_fft.c
 *
 * Code generation for function 'fi_fft'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "fi_fft.h"
#include "abs.h"
#include "mtimes1.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static real_T rt_powd_snf(real_T u0, real_T u1);
static void sLong2MultiWord(int32_T u, uint32_T y[], int32_T n);
static int32_T sMultiWord2sLongSat(const uint32_T u1[], int32_T n1);
static void sMultiWordShrNear(const uint32_T u1[], int32_T n1, uint32_T n2,
  uint32_T y[], int32_T n);

/* Function Definitions */
static real_T rt_powd_snf(real_T u0, real_T u1)
{
  real_T y;
  real_T d0;
  real_T d1;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = rtNaN;
  } else {
    d0 = fabs(u0);
    d1 = fabs(u1);
    if (rtIsInf(u1)) {
      if (d0 == 1.0) {
        y = rtNaN;
      } else if (d0 > 1.0) {
        if (u1 > 0.0) {
          y = rtInf;
        } else {
          y = 0.0;
        }
      } else if (u1 > 0.0) {
        y = 0.0;
      } else {
        y = rtInf;
      }
    } else if (d1 == 0.0) {
      y = 1.0;
    } else if (d1 == 1.0) {
      if (u1 > 0.0) {
        y = u0;
      } else {
        y = 1.0 / u0;
      }
    } else if (u1 == 2.0) {
      y = u0 * u0;
    } else if ((u1 == 0.5) && (u0 >= 0.0)) {
      y = sqrt(u0);
    } else if ((u0 < 0.0) && (u1 > floor(u1))) {
      y = rtNaN;
    } else {
      y = pow(u0, u1);
    }
  }

  return y;
}

static void sLong2MultiWord(int32_T u, uint32_T y[], int32_T n)
{
  uint32_T yi;
  int32_T i;
  y[0] = (uint32_T)u;
  yi = u < 0 ? MAX_uint32_T : 0U;
  for (i = 1; i <= n - 1; i++) {
    y[i] = yi;
  }
}

static int32_T sMultiWord2sLongSat(const uint32_T u1[], int32_T n1)
{
  uint32_T y;
  uint32_T *r153;
  r153 = &y;
  sMultiWord2sMultiWordSat(u1, n1, r153, 1);
  return (int32_T)y;
}

static void sMultiWordShrNear(const uint32_T u1[], int32_T n1, uint32_T n2,
  uint32_T y[], int32_T n)
{
  uint32_T n2m1;
  int32_T nb;
  boolean_T doNearest;
  n2m1 = n2 - 1U;
  nb = (int32_T)n2m1 / 32;
  if (nb < n1) {
    n2m1 -= (uint32_T)(nb * 32);
    n2m1 = 1U << n2m1;
    doNearest = ((u1[nb] & n2m1) != 0U);
  } else {
    n2m1 = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
    doNearest = (n2m1 != 0U);
  }

  sMultiWordShr(u1, n1, n2, y, n);
  nb = 0;
  while (doNearest && (nb < n)) {
    y[nb]++;
    if (y[nb] != 0U) {
      doNearest = FALSE;
    }

    nb++;
  }
}

void b_fi_fft(int32_T x[32], cint32_T xc[32])
{
  int32_T j;
  int32_T L;
  int32_T temp;
  int32_T k;
  real_T L2;
  real_T r;
  static const cint32_T w[31] = { { 16777216, 0 }, { 16777216, 0 }, { 0,
      -16777216 }, { 16777216, 0 }, { 11863283, -11863283 }, { 0, -16777216 }, {
      -11863283, -11863283 }, { 16777216, 0 }, { 15500126, -6420363 }, {
      11863283, -11863283 }, { 6420363, -15500126 }, { 0, -16777216 }, { -
      6420363, -15500126 }, { -11863283, -11863283 }, { -15500126, -6420363 }, {
      16777216, 0 }, { 16454846, -3273072 }, { 15500126, -6420363 }, { 13949745,
      -9320922 }, { 11863283, -11863283 }, { 9320922, -13949745 }, { 6420363,
      -15500126 }, { 3273072, -16454846 }, { 0, -16777216 }, { -3273072,
      -16454846 }, { -6420363, -15500126 }, { -9320922, -13949745 }, { -11863283,
      -11863283 }, { -13949745, -9320922 }, { -15500126, -6420363 }, { -16454846,
      -3273072 } };

  cint96m_T b_temp;
  int64m_T r95;
  int64m_T r96;
  int96m_T r97;
  int96m_T r98;
  int96m_T r99;
  int96m_T r100;
  static int96m_T r101 = { { 0U, 0U, 0U } };

  int96m_T r102;
  int96m_T r103;
  static int96m_T r104 = { { 0U, 0U, 4294967294U } };

  int96m_T r105;
  static int96m_T r106 = { { MAX_uint32_T, MAX_uint32_T, 1U } };

  int128m_T r107;
  int128m_T r108;
  int96m_T r109;
  int96m_T c_im;
  int96m_T r110;
  int96m_T r111;
  int96m_T r112;
  int96m_T r113;
  int96m_T r114;
  int96m_T r115;
  int96m_T r116;
  int96m_T r117;
  int96m_T r118;
  int96m_T r119;
  int96m_T r120;
  int96m_T r121;
  int96m_T r122;
  int96m_T r123;
  int96m_T r124;
  int96m_T r125;
  int96m_T r126;
  int96m_T r127;

  /* assert(isequal(length(x), n)) */
  j = 1;
  for (L = 0; L < 31; L++) {
    if (L + 1 < j) {
      temp = x[j - 1];
      x[j - 1] = x[L];
      x[L] = temp;
    }

    k = 16;
    while (k < j) {
      j -= k;
      k >>= 1;
    }

    j += k;
  }

  for (L = 0; L < 32; L++) {
    xc[L].re = x[L];
    xc[L].im = 0;
  }

  for (temp = 0; temp < 5; temp++) {
    L = (int32_T)rt_powd_snf(2.0, 1.0 + (real_T)temp);
    L2 = (real_T)L / 2.0;
    r = 32.0 / (real_T)L;
    for (k = 0; k <= (int32_T)((r - 1.0) + 1.0) - 1; k++) {
      for (j = 0; j <= (int32_T)((L2 - 1.0) + 1.0) - 1; j++) {
        b_temp = mtimes(w[(int32_T)(((L2 - 1.0) + (real_T)j) + 1.0) - 1], xc
                        [(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1]);
        sLong2MultiWord(xc[k * L + j].im, &r95.chunks[0U], 2);
        sMultiWordShl(&r95.chunks[0U], 2, 24U, &r96.chunks[0U], 2);
        sMultiWord2MultiWord(&r96.chunks[0U], 2, &r97.chunks[0U], 3);
        MultiWordSignedWrap(&r97.chunks[0U], 3, 30U, &r98.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 3, 30U, &r99.chunks[0U]);
        MultiWordSub(&r98.chunks[0U], &r99.chunks[0U], &r100.chunks[0U], 3);
        r97 = r101;
        r102 = r101;
        r103 = r101;
        if (sMultiWordLt(&r98.chunks[0U], &r97.chunks[0U], 3) && sMultiWordGe
            (&r99.chunks[0U], &r102.chunks[0U], 3) && sMultiWordGe(&r100.chunks
             [0U], &r103.chunks[0U], 3)) {
          r100 = r104;
        } else {
          r102 = r101;
          r103 = r101;
          r105 = r101;
          if (sMultiWordGe(&r98.chunks[0U], &r102.chunks[0U], 3) && sMultiWordLt
              (&r99.chunks[0U], &r103.chunks[0U], 3) && sMultiWordLt
              (&r100.chunks[0U], &r105.chunks[0U], 3)) {
            r100 = r106;
          }
        }

        sMultiWord2MultiWord(&r100.chunks[0U], 3, &r107.chunks[0U], 4);
        sMultiWordShl(&r107.chunks[0U], 4, 30U, &r108.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r108.chunks[0U], 4, &r109.chunks[0U], 3);
        sMultiWordShr(&r109.chunks[0U], 3, 30U, &c_im.chunks[0U], 3);
        sLong2MultiWord(xc[k * L + j].re, &r95.chunks[0U], 2);
        sMultiWordShl(&r95.chunks[0U], 2, 24U, &r96.chunks[0U], 2);
        sMultiWord2MultiWord(&r96.chunks[0U], 2, &r109.chunks[0U], 3);
        MultiWordSignedWrap(&r109.chunks[0U], 3, 30U, &r110.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 3, 30U, &r111.chunks[0U]);
        MultiWordSub(&r110.chunks[0U], &r111.chunks[0U], &r112.chunks[0U], 3);
        r109 = r101;
        r102 = r101;
        r103 = r101;
        if (sMultiWordLt(&r110.chunks[0U], &r109.chunks[0U], 3) && sMultiWordGe(
             &r111.chunks[0U], &r102.chunks[0U], 3) && sMultiWordGe
            (&r112.chunks[0U], &r103.chunks[0U], 3)) {
          r112 = r104;
        } else {
          r102 = r101;
          r103 = r101;
          r105 = r101;
          if (sMultiWordGe(&r110.chunks[0U], &r102.chunks[0U], 3) &&
              sMultiWordLt(&r111.chunks[0U], &r103.chunks[0U], 3) &&
              sMultiWordLt(&r112.chunks[0U], &r105.chunks[0U], 3)) {
            r112 = r106;
          }
        }

        sMultiWord2MultiWord(&r112.chunks[0U], 3, &r107.chunks[0U], 4);
        sMultiWordShl(&r107.chunks[0U], 4, 30U, &r108.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r108.chunks[0U], 4, &r113.chunks[0U], 3);
        sMultiWordShr(&r113.chunks[0U], 3, 30U, &r114.chunks[0U], 3);
        sMultiWordShr(&r114.chunks[0U], 3, 1U, &r115.chunks[0U], 3);
        sMultiWordShrNear(&r115.chunks[0U], 3, 24U, &r116.chunks[0U], 3);
        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].re =
          sMultiWord2sLongSat(&r116.chunks[0U], 3);
        sMultiWordShr(&c_im.chunks[0U], 3, 1U, &r114.chunks[0U], 3);
        sMultiWordShrNear(&r114.chunks[0U], 3, 24U, &r115.chunks[0U], 3);
        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].im =
          sMultiWord2sLongSat(&r115.chunks[0U], 3);
        sLong2MultiWord(xc[k * L + j].im, &r95.chunks[0U], 2);
        sMultiWordShl(&r95.chunks[0U], 2, 24U, &r96.chunks[0U], 2);
        sMultiWord2MultiWord(&r96.chunks[0U], 2, &r114.chunks[0U], 3);
        MultiWordSignedWrap(&r114.chunks[0U], 3, 30U, &r117.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 3, 30U, &r118.chunks[0U]);
        MultiWordAdd(&r117.chunks[0U], &r118.chunks[0U], &r119.chunks[0U], 3);
        r114 = r101;
        r113 = r101;
        r102 = r101;
        if (sMultiWordLt(&r117.chunks[0U], &r114.chunks[0U], 3) && sMultiWordLt(
             &r118.chunks[0U], &r113.chunks[0U], 3) && sMultiWordGe
            (&r119.chunks[0U], &r102.chunks[0U], 3)) {
          r119 = r104;
        } else {
          r102 = r101;
          r103 = r101;
          r105 = r101;
          if (sMultiWordGt(&r117.chunks[0U], &r102.chunks[0U], 3) &&
              sMultiWordGt(&r118.chunks[0U], &r103.chunks[0U], 3) &&
              sMultiWordLe(&r119.chunks[0U], &r105.chunks[0U], 3)) {
            r119 = r106;
          }
        }

        sMultiWord2MultiWord(&r119.chunks[0U], 3, &r107.chunks[0U], 4);
        sMultiWordShl(&r107.chunks[0U], 4, 30U, &r108.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r108.chunks[0U], 4, &r120.chunks[0U], 3);
        sMultiWordShr(&r120.chunks[0U], 3, 30U, &c_im.chunks[0U], 3);
        sLong2MultiWord(xc[k * L + j].re, &r95.chunks[0U], 2);
        sMultiWordShl(&r95.chunks[0U], 2, 24U, &r96.chunks[0U], 2);
        sMultiWord2MultiWord(&r96.chunks[0U], 2, &r120.chunks[0U], 3);
        MultiWordSignedWrap(&r120.chunks[0U], 3, 30U, &r121.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 3, 30U, &r122.chunks[0U]);
        MultiWordAdd(&r121.chunks[0U], &r122.chunks[0U], &r123.chunks[0U], 3);
        r120 = r101;
        r102 = r101;
        r103 = r101;
        if (sMultiWordLt(&r121.chunks[0U], &r120.chunks[0U], 3) && sMultiWordLt(
             &r122.chunks[0U], &r102.chunks[0U], 3) && sMultiWordGe
            (&r123.chunks[0U], &r103.chunks[0U], 3)) {
          r123 = r104;
        } else {
          r102 = r101;
          r103 = r101;
          r105 = r101;
          if (sMultiWordGt(&r121.chunks[0U], &r102.chunks[0U], 3) &&
              sMultiWordGt(&r122.chunks[0U], &r103.chunks[0U], 3) &&
              sMultiWordLe(&r123.chunks[0U], &r105.chunks[0U], 3)) {
            r123 = r106;
          }
        }

        sMultiWord2MultiWord(&r123.chunks[0U], 3, &r107.chunks[0U], 4);
        sMultiWordShl(&r107.chunks[0U], 4, 30U, &r108.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r108.chunks[0U], 4, &r124.chunks[0U], 3);
        sMultiWordShr(&r124.chunks[0U], 3, 30U, &r125.chunks[0U], 3);
        sMultiWordShr(&r125.chunks[0U], 3, 1U, &r126.chunks[0U], 3);
        sMultiWordShrNear(&r126.chunks[0U], 3, 24U, &r127.chunks[0U], 3);
        xc[k * L + j].re = sMultiWord2sLongSat(&r127.chunks[0U], 3);
        sMultiWordShr(&c_im.chunks[0U], 3, 1U, &r125.chunks[0U], 3);
        sMultiWordShrNear(&r125.chunks[0U], 3, 24U, &r126.chunks[0U], 3);
        xc[k * L + j].im = sMultiWord2sLongSat(&r126.chunks[0U], 3);
      }
    }
  }
}

void fi_fft(int32_T x[128], cint32_T xc[128])
{
  int32_T j;
  int32_T L;
  int32_T temp;
  int32_T k;
  real_T L2;
  real_T r;
  static const cint32_T w[127] = { { 16777216, 0 }, { 16777216, 0 }, { 0,
      -16777216 }, { 16777216, 0 }, { 11863283, -11863283 }, { 0, -16777216 }, {
      -11863283, -11863283 }, { 16777216, 0 }, { 15500126, -6420363 }, {
      11863283, -11863283 }, { 6420363, -15500126 }, { 0, -16777216 }, { -
      6420363, -15500126 }, { -11863283, -11863283 }, { -15500126, -6420363 }, {
      16777216, 0 }, { 16454846, -3273072 }, { 15500126, -6420363 }, { 13949745,
      -9320922 }, { 11863283, -11863283 }, { 9320922, -13949745 }, { 6420363,
      -15500126 }, { 3273072, -16454846 }, { 0, -16777216 }, { -3273072,
      -16454846 }, { -6420363, -15500126 }, { -9320922, -13949745 }, { -11863283,
      -11863283 }, { -13949745, -9320922 }, { -15500126, -6420363 }, { -16454846,
      -3273072 }, { 16777216, 0 }, { 16696429, -1644455 }, { 16454846, -3273072
    }, { 16054795, -4870169 }, { 15500126, -6420363 }, { 14796184, -7908725 }, {
      13949745, -9320922 }, { 12968963, -10643353 }, { 11863283, -11863283 }, {
      10643353, -12968963 }, { 9320922, -13949745 }, { 7908725, -14796184 }, {
      6420363, -15500126 }, { 4870169, -16054795 }, { 3273072, -16454846 }, {
      1644455, -16696429 }, { 0, -16777216 }, { -1644455, -16696429 }, { -
      3273072, -16454846 }, { -4870169, -16054795 }, { -6420363, -15500126 }, {
      -7908725, -14796184 }, { -9320922, -13949745 }, { -10643353, -12968963 },
      { -11863283, -11863283 }, { -12968963, -10643353 }, { -13949745, -9320922
    }, { -14796184, -7908725 }, { -15500126, -6420363 }, { -16054795, -4870169 },
    { -16454846, -3273072 }, { -16696429, -1644455 }, { 16777216, 0 }, {
      16757007, -823219 }, { 16696429, -1644455 }, { 16595628, -2461729 }, {
      16454846, -3273072 }, { 16274424, -4076531 }, { 16054795, -4870169 }, {
      15796488, -5652074 }, { 15500126, -6420363 }, { 15166424, -7173184 }, {
      14796184, -7908725 }, { 14390298, -8625213 }, { 13949745, -9320922 }, {
      13475586, -9994176 }, { 12968963, -10643353 }, { 12431097, -11266890 }, {
      11863283, -11863283 }, { 11266890, -12431097 }, { 10643353, -12968963 }, {
      9994176, -13475586 }, { 9320922, -13949745 }, { 8625213, -14390298 }, {
      7908725, -14796184 }, { 7173184, -15166424 }, { 6420363, -15500126 }, {
      5652074, -15796488 }, { 4870169, -16054795 }, { 4076531, -16274424 }, {
      3273072, -16454846 }, { 2461729, -16595628 }, { 1644455, -16696429 }, {
      823219, -16757007 }, { 0, -16777216 }, { -823219, -16757007 }, { -1644455,
      -16696429 }, { -2461729, -16595628 }, { -3273072, -16454846 }, { -4076531,
      -16274424 }, { -4870169, -16054795 }, { -5652074, -15796488 }, { -6420363,
      -15500126 }, { -7173184, -15166424 }, { -7908725, -14796184 }, { -8625213,
      -14390298 }, { -9320922, -13949745 }, { -9994176, -13475586 }, { -10643353,
      -12968963 }, { -11266890, -12431097 }, { -11863283, -11863283 }, { -
      12431097, -11266890 }, { -12968963, -10643353 }, { -13475586, -9994176 },
      { -13949745, -9320922 }, { -14390298, -8625213 }, { -14796184, -7908725 },
    { -15166424, -7173184 }, { -15500126, -6420363 }, { -15796488, -5652074 }, {
      -16054795, -4870169 }, { -16274424, -4076531 }, { -16454846, -3273072 }, {
      -16595628, -2461729 }, { -16696429, -1644455 }, { -16757007, -823219 } };

  cint96m_T b_temp;
  int64m_T r13;
  int64m_T r14;
  int96m_T r15;
  int96m_T r16;
  int96m_T r17;
  int96m_T r18;
  static int96m_T r19 = { { 0U, 0U, 0U } };

  int96m_T r20;
  int96m_T r21;
  static int96m_T r22 = { { 0U, 0U, 4294967294U } };

  int96m_T r23;
  static int96m_T r24 = { { MAX_uint32_T, MAX_uint32_T, 1U } };

  int128m_T r25;
  int128m_T r26;
  int96m_T r27;
  int96m_T c_im;
  int96m_T r28;
  int96m_T r29;
  int96m_T r30;
  int96m_T r31;
  int96m_T r32;
  int96m_T r33;
  int96m_T r34;
  int96m_T r35;
  int96m_T r36;
  int96m_T r37;
  int96m_T r38;
  int96m_T r39;
  int96m_T r40;
  int96m_T r41;
  int96m_T r42;
  int96m_T r43;
  int96m_T r44;
  int96m_T r45;

  /* assert(isequal(length(x), n)) */
  j = 1;
  for (L = 0; L < 127; L++) {
    if (L + 1 < j) {
      temp = x[j - 1];
      x[j - 1] = x[L];
      x[L] = temp;
    }

    k = 64;
    while (k < j) {
      j -= k;
      k >>= 1;
    }

    j += k;
  }

  for (L = 0; L < 128; L++) {
    xc[L].re = x[L];
    xc[L].im = 0;
  }

  for (temp = 0; temp < 7; temp++) {
    L = (int32_T)rt_powd_snf(2.0, 1.0 + (real_T)temp);
    L2 = (real_T)L / 2.0;
    r = 128.0 / (real_T)L;
    for (k = 0; k <= (int32_T)((r - 1.0) + 1.0) - 1; k++) {
      for (j = 0; j <= (int32_T)((L2 - 1.0) + 1.0) - 1; j++) {
        b_temp = mtimes(w[(int32_T)(((L2 - 1.0) + (real_T)j) + 1.0) - 1], xc
                        [(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1]);
        sLong2MultiWord(xc[k * L + j].im, &r13.chunks[0U], 2);
        sMultiWordShl(&r13.chunks[0U], 2, 24U, &r14.chunks[0U], 2);
        sMultiWord2MultiWord(&r14.chunks[0U], 2, &r15.chunks[0U], 3);
        MultiWordSignedWrap(&r15.chunks[0U], 3, 30U, &r16.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 3, 30U, &r17.chunks[0U]);
        MultiWordSub(&r16.chunks[0U], &r17.chunks[0U], &r18.chunks[0U], 3);
        r15 = r19;
        r20 = r19;
        r21 = r19;
        if (sMultiWordLt(&r16.chunks[0U], &r15.chunks[0U], 3) && sMultiWordGe
            (&r17.chunks[0U], &r20.chunks[0U], 3) && sMultiWordGe(&r18.chunks[0U],
             &r21.chunks[0U], 3)) {
          r18 = r22;
        } else {
          r20 = r19;
          r21 = r19;
          r23 = r19;
          if (sMultiWordGe(&r16.chunks[0U], &r20.chunks[0U], 3) && sMultiWordLt(
               &r17.chunks[0U], &r21.chunks[0U], 3) && sMultiWordLt(&r18.chunks
               [0U], &r23.chunks[0U], 3)) {
            r18 = r24;
          }
        }

        sMultiWord2MultiWord(&r18.chunks[0U], 3, &r25.chunks[0U], 4);
        sMultiWordShl(&r25.chunks[0U], 4, 30U, &r26.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r26.chunks[0U], 4, &r27.chunks[0U], 3);
        sMultiWordShr(&r27.chunks[0U], 3, 30U, &c_im.chunks[0U], 3);
        sLong2MultiWord(xc[k * L + j].re, &r13.chunks[0U], 2);
        sMultiWordShl(&r13.chunks[0U], 2, 24U, &r14.chunks[0U], 2);
        sMultiWord2MultiWord(&r14.chunks[0U], 2, &r27.chunks[0U], 3);
        MultiWordSignedWrap(&r27.chunks[0U], 3, 30U, &r28.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 3, 30U, &r29.chunks[0U]);
        MultiWordSub(&r28.chunks[0U], &r29.chunks[0U], &r30.chunks[0U], 3);
        r27 = r19;
        r20 = r19;
        r21 = r19;
        if (sMultiWordLt(&r28.chunks[0U], &r27.chunks[0U], 3) && sMultiWordGe
            (&r29.chunks[0U], &r20.chunks[0U], 3) && sMultiWordGe(&r30.chunks[0U],
             &r21.chunks[0U], 3)) {
          r30 = r22;
        } else {
          r20 = r19;
          r21 = r19;
          r23 = r19;
          if (sMultiWordGe(&r28.chunks[0U], &r20.chunks[0U], 3) && sMultiWordLt(
               &r29.chunks[0U], &r21.chunks[0U], 3) && sMultiWordLt(&r30.chunks
               [0U], &r23.chunks[0U], 3)) {
            r30 = r24;
          }
        }

        sMultiWord2MultiWord(&r30.chunks[0U], 3, &r25.chunks[0U], 4);
        sMultiWordShl(&r25.chunks[0U], 4, 30U, &r26.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r26.chunks[0U], 4, &r31.chunks[0U], 3);
        sMultiWordShr(&r31.chunks[0U], 3, 30U, &r32.chunks[0U], 3);
        sMultiWordShr(&r32.chunks[0U], 3, 1U, &r33.chunks[0U], 3);
        sMultiWordShrNear(&r33.chunks[0U], 3, 24U, &r34.chunks[0U], 3);
        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].re =
          sMultiWord2sLongSat(&r34.chunks[0U], 3);
        sMultiWordShr(&c_im.chunks[0U], 3, 1U, &r32.chunks[0U], 3);
        sMultiWordShrNear(&r32.chunks[0U], 3, 24U, &r33.chunks[0U], 3);
        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].im =
          sMultiWord2sLongSat(&r33.chunks[0U], 3);
        sLong2MultiWord(xc[k * L + j].im, &r13.chunks[0U], 2);
        sMultiWordShl(&r13.chunks[0U], 2, 24U, &r14.chunks[0U], 2);
        sMultiWord2MultiWord(&r14.chunks[0U], 2, &r32.chunks[0U], 3);
        MultiWordSignedWrap(&r32.chunks[0U], 3, 30U, &r35.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 3, 30U, &r36.chunks[0U]);
        MultiWordAdd(&r35.chunks[0U], &r36.chunks[0U], &r37.chunks[0U], 3);
        r32 = r19;
        r31 = r19;
        r20 = r19;
        if (sMultiWordLt(&r35.chunks[0U], &r32.chunks[0U], 3) && sMultiWordLt
            (&r36.chunks[0U], &r31.chunks[0U], 3) && sMultiWordGe(&r37.chunks[0U],
             &r20.chunks[0U], 3)) {
          r37 = r22;
        } else {
          r20 = r19;
          r21 = r19;
          r23 = r19;
          if (sMultiWordGt(&r35.chunks[0U], &r20.chunks[0U], 3) && sMultiWordGt(
               &r36.chunks[0U], &r21.chunks[0U], 3) && sMultiWordLe(&r37.chunks
               [0U], &r23.chunks[0U], 3)) {
            r37 = r24;
          }
        }

        sMultiWord2MultiWord(&r37.chunks[0U], 3, &r25.chunks[0U], 4);
        sMultiWordShl(&r25.chunks[0U], 4, 30U, &r26.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r26.chunks[0U], 4, &r38.chunks[0U], 3);
        sMultiWordShr(&r38.chunks[0U], 3, 30U, &c_im.chunks[0U], 3);
        sLong2MultiWord(xc[k * L + j].re, &r13.chunks[0U], 2);
        sMultiWordShl(&r13.chunks[0U], 2, 24U, &r14.chunks[0U], 2);
        sMultiWord2MultiWord(&r14.chunks[0U], 2, &r38.chunks[0U], 3);
        MultiWordSignedWrap(&r38.chunks[0U], 3, 30U, &r39.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 3, 30U, &r40.chunks[0U]);
        MultiWordAdd(&r39.chunks[0U], &r40.chunks[0U], &r41.chunks[0U], 3);
        r38 = r19;
        r20 = r19;
        r21 = r19;
        if (sMultiWordLt(&r39.chunks[0U], &r38.chunks[0U], 3) && sMultiWordLt
            (&r40.chunks[0U], &r20.chunks[0U], 3) && sMultiWordGe(&r41.chunks[0U],
             &r21.chunks[0U], 3)) {
          r41 = r22;
        } else {
          r20 = r19;
          r21 = r19;
          r23 = r19;
          if (sMultiWordGt(&r39.chunks[0U], &r20.chunks[0U], 3) && sMultiWordGt(
               &r40.chunks[0U], &r21.chunks[0U], 3) && sMultiWordLe(&r41.chunks
               [0U], &r23.chunks[0U], 3)) {
            r41 = r24;
          }
        }

        sMultiWord2MultiWord(&r41.chunks[0U], 3, &r25.chunks[0U], 4);
        sMultiWordShl(&r25.chunks[0U], 4, 30U, &r26.chunks[0U], 4);
        sMultiWord2sMultiWordSat(&r26.chunks[0U], 4, &r42.chunks[0U], 3);
        sMultiWordShr(&r42.chunks[0U], 3, 30U, &r43.chunks[0U], 3);
        sMultiWordShr(&r43.chunks[0U], 3, 1U, &r44.chunks[0U], 3);
        sMultiWordShrNear(&r44.chunks[0U], 3, 24U, &r45.chunks[0U], 3);
        xc[k * L + j].re = sMultiWord2sLongSat(&r45.chunks[0U], 3);
        sMultiWordShr(&c_im.chunks[0U], 3, 1U, &r43.chunks[0U], 3);
        sMultiWordShrNear(&r43.chunks[0U], 3, 24U, &r44.chunks[0U], 3);
        xc[k * L + j].im = sMultiWord2sLongSat(&r44.chunks[0U], 3);
      }
    }
  }
}

/* End of code generation (fi_fft.c) */
