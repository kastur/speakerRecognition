/*
 * fi_fft.c
 *
 * Code generation for function 'fi_fft'
 *
 * C source code generated on: Fri Jan 25 00:33:15 2013
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
static int64_T MultiWord2sLong(const uint64_T u[]);
static real_T rt_powd_snf(real_T u0, real_T u1);
static void sMultiWordShrNear(const uint64_T u1[], int32_T n1, uint32_T n2,
  uint64_T y[], int32_T n);

/* Function Definitions */
static int64_T MultiWord2sLong(const uint64_T u[])
{
  return (int64_T)u[0];
}

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

static void sMultiWordShrNear(const uint64_T u1[], int32_T n1, uint32_T n2,
  uint64_T y[], int32_T n)
{
  uint32_T n2m1;
  int32_T nb;
  uint64_T ys;
  boolean_T doNearest;
  n2m1 = n2 - 1U;
  nb = (int32_T)n2m1 / 64;
  if (nb < n1) {
    n2m1 -= (uint32_T)(nb * 64);
    ys = 1UL << n2m1;
    doNearest = ((u1[nb] & ys) != 0UL);
  } else {
    ys = (u1[n1 - 1] & 9223372036854775808UL) != 0UL ? MAX_uint64_T : 0UL;
    doNearest = (ys != 0UL);
  }

  sMultiWordShr(u1, n1, n2, y, n);
  nb = 0;
  while (doNearest && (nb < n)) {
    y[nb]++;
    if (y[nb] != 0UL) {
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

  cint128m_T b_temp;
  int128m_T r62;
  int128m_T r63;
  int128m_T r64;
  int128m_T r65;
  static int128m_T r66 = { { 0UL, 0UL } };

  int128m_T r67;
  int128m_T r68;
  static int128m_T r69 = { { 0UL, 18446744073709551614UL } };

  int128m_T r70;
  static int128m_T r71 = { { MAX_uint64_T, 1UL } };

  int192m_T r72;
  int192m_T r73;
  int128m_T r74;
  int128m_T c_im;
  int128m_T r75;
  int128m_T r76;
  int128m_T r77;
  int128m_T r78;
  int128m_T r79;
  int128m_T r80;
  int128m_T r81;
  int64_T i2;
  int128m_T r82;
  int128m_T r83;
  int128m_T r84;
  int128m_T r85;
  int128m_T r86;
  int128m_T r87;
  int128m_T r88;
  int128m_T r89;
  int128m_T r90;
  int128m_T r91;
  int128m_T r92;

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
        sLong2MultiWord((int64_T)xc[k * L + j].im << 24, &r62.chunks[0U], 2);
        MultiWordSignedWrap(&r62.chunks[0U], 2, 62U, &r63.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 2, 62U, &r64.chunks[0U]);
        MultiWordSub(&r63.chunks[0U], &r64.chunks[0U], &r65.chunks[0U], 2);
        r62 = r66;
        r67 = r66;
        r68 = r66;
        if (sMultiWordLt(&r63.chunks[0U], &r62.chunks[0U], 2) && sMultiWordGe
            (&r64.chunks[0U], &r67.chunks[0U], 2) && sMultiWordGe(&r65.chunks[0U],
             &r68.chunks[0U], 2)) {
          r65 = r69;
        } else {
          r67 = r66;
          r68 = r66;
          r70 = r66;
          if (sMultiWordGe(&r63.chunks[0U], &r67.chunks[0U], 2) && sMultiWordLt(
               &r64.chunks[0U], &r68.chunks[0U], 2) && sMultiWordLt(&r65.chunks
               [0U], &r70.chunks[0U], 2)) {
            r65 = r71;
          }
        }

        sMultiWord2MultiWord(&r65.chunks[0U], 2, &r72.chunks[0U], 3);
        sMultiWordShl(&r72.chunks[0U], 3, 62U, &r73.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r73.chunks[0U], 3, &r74.chunks[0U], 2);
        sMultiWordShr(&r74.chunks[0U], 2, 62U, &c_im.chunks[0U], 2);
        sLong2MultiWord((int64_T)xc[k * L + j].re << 24, &r74.chunks[0U], 2);
        MultiWordSignedWrap(&r74.chunks[0U], 2, 62U, &r75.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 2, 62U, &r76.chunks[0U]);
        MultiWordSub(&r75.chunks[0U], &r76.chunks[0U], &r77.chunks[0U], 2);
        r74 = r66;
        r67 = r66;
        r68 = r66;
        if (sMultiWordLt(&r75.chunks[0U], &r74.chunks[0U], 2) && sMultiWordGe
            (&r76.chunks[0U], &r67.chunks[0U], 2) && sMultiWordGe(&r77.chunks[0U],
             &r68.chunks[0U], 2)) {
          r77 = r69;
        } else {
          r67 = r66;
          r68 = r66;
          r70 = r66;
          if (sMultiWordGe(&r75.chunks[0U], &r67.chunks[0U], 2) && sMultiWordLt(
               &r76.chunks[0U], &r68.chunks[0U], 2) && sMultiWordLt(&r77.chunks
               [0U], &r70.chunks[0U], 2)) {
            r77 = r71;
          }
        }

        sMultiWord2MultiWord(&r77.chunks[0U], 2, &r72.chunks[0U], 3);
        sMultiWordShl(&r72.chunks[0U], 3, 62U, &r73.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r73.chunks[0U], 3, &r78.chunks[0U], 2);
        sMultiWordShr(&r78.chunks[0U], 2, 62U, &r79.chunks[0U], 2);
        sMultiWordShr(&r79.chunks[0U], 2, 1U, &r80.chunks[0U], 2);
        sMultiWordShrNear(&r80.chunks[0U], 2, 24U, &r81.chunks[0U], 2);
        i2 = MultiWord2sLong(&r81.chunks[0U]);
        if (i2 > 2147483647L) {
          i2 = 2147483647L;
        } else {
          if (i2 < -2147483648L) {
            i2 = -2147483648L;
          }
        }

        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].re = (int32_T)i2;
        sMultiWordShr(&c_im.chunks[0U], 2, 1U, &r79.chunks[0U], 2);
        sMultiWordShrNear(&r79.chunks[0U], 2, 24U, &r80.chunks[0U], 2);
        i2 = MultiWord2sLong(&r80.chunks[0U]);
        if (i2 > 2147483647L) {
          i2 = 2147483647L;
        } else {
          if (i2 < -2147483648L) {
            i2 = -2147483648L;
          }
        }

        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].im = (int32_T)i2;
        sLong2MultiWord((int64_T)xc[k * L + j].im << 24, &r79.chunks[0U], 2);
        MultiWordSignedWrap(&r79.chunks[0U], 2, 62U, &r82.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 2, 62U, &r83.chunks[0U]);
        MultiWordAdd(&r82.chunks[0U], &r83.chunks[0U], &r84.chunks[0U], 2);
        r79 = r66;
        r78 = r66;
        r67 = r66;
        if (sMultiWordLt(&r82.chunks[0U], &r79.chunks[0U], 2) && sMultiWordLt
            (&r83.chunks[0U], &r78.chunks[0U], 2) && sMultiWordGe(&r84.chunks[0U],
             &r67.chunks[0U], 2)) {
          r84 = r69;
        } else {
          r67 = r66;
          r68 = r66;
          r70 = r66;
          if (sMultiWordGt(&r82.chunks[0U], &r67.chunks[0U], 2) && sMultiWordGt(
               &r83.chunks[0U], &r68.chunks[0U], 2) && sMultiWordLe(&r84.chunks
               [0U], &r70.chunks[0U], 2)) {
            r84 = r71;
          }
        }

        sMultiWord2MultiWord(&r84.chunks[0U], 2, &r72.chunks[0U], 3);
        sMultiWordShl(&r72.chunks[0U], 3, 62U, &r73.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r73.chunks[0U], 3, &r85.chunks[0U], 2);
        sMultiWordShr(&r85.chunks[0U], 2, 62U, &c_im.chunks[0U], 2);
        sLong2MultiWord((int64_T)xc[k * L + j].re << 24, &r85.chunks[0U], 2);
        MultiWordSignedWrap(&r85.chunks[0U], 2, 62U, &r86.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 2, 62U, &r87.chunks[0U]);
        MultiWordAdd(&r86.chunks[0U], &r87.chunks[0U], &r88.chunks[0U], 2);
        r85 = r66;
        r67 = r66;
        r68 = r66;
        if (sMultiWordLt(&r86.chunks[0U], &r85.chunks[0U], 2) && sMultiWordLt
            (&r87.chunks[0U], &r67.chunks[0U], 2) && sMultiWordGe(&r88.chunks[0U],
             &r68.chunks[0U], 2)) {
          r88 = r69;
        } else {
          r67 = r66;
          r68 = r66;
          r70 = r66;
          if (sMultiWordGt(&r86.chunks[0U], &r67.chunks[0U], 2) && sMultiWordGt(
               &r87.chunks[0U], &r68.chunks[0U], 2) && sMultiWordLe(&r88.chunks
               [0U], &r70.chunks[0U], 2)) {
            r88 = r71;
          }
        }

        sMultiWord2MultiWord(&r88.chunks[0U], 2, &r72.chunks[0U], 3);
        sMultiWordShl(&r72.chunks[0U], 3, 62U, &r73.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r73.chunks[0U], 3, &r89.chunks[0U], 2);
        sMultiWordShr(&r89.chunks[0U], 2, 62U, &r90.chunks[0U], 2);
        sMultiWordShr(&r90.chunks[0U], 2, 1U, &r91.chunks[0U], 2);
        sMultiWordShrNear(&r91.chunks[0U], 2, 24U, &r92.chunks[0U], 2);
        i2 = MultiWord2sLong(&r92.chunks[0U]);
        if (i2 > 2147483647L) {
          i2 = 2147483647L;
        } else {
          if (i2 < -2147483648L) {
            i2 = -2147483648L;
          }
        }

        xc[k * L + j].re = (int32_T)i2;
        sMultiWordShr(&c_im.chunks[0U], 2, 1U, &r90.chunks[0U], 2);
        sMultiWordShrNear(&r90.chunks[0U], 2, 24U, &r91.chunks[0U], 2);
        i2 = MultiWord2sLong(&r91.chunks[0U]);
        if (i2 > 2147483647L) {
          i2 = 2147483647L;
        } else {
          if (i2 < -2147483648L) {
            i2 = -2147483648L;
          }
        }

        xc[k * L + j].im = (int32_T)i2;
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

  cint128m_T b_temp;
  int128m_T r0;
  int128m_T r1;
  int128m_T r2;
  int128m_T r3;
  static int128m_T r4 = { { 0UL, 0UL } };

  int128m_T r5;
  int128m_T r6;
  static int128m_T r7 = { { 0UL, 18446744073709551614UL } };

  int128m_T r8;
  static int128m_T r9 = { { MAX_uint64_T, 1UL } };

  int192m_T r10;
  int192m_T r11;
  int128m_T r12;
  int128m_T c_im;
  int128m_T r13;
  int128m_T r14;
  int128m_T r15;
  int128m_T r16;
  int128m_T r17;
  int128m_T r18;
  int128m_T r19;
  int64_T i1;
  int128m_T r20;
  int128m_T r21;
  int128m_T r22;
  int128m_T r23;
  int128m_T r24;
  int128m_T r25;
  int128m_T r26;
  int128m_T r27;
  int128m_T r28;
  int128m_T r29;
  int128m_T r30;

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
        sLong2MultiWord((int64_T)xc[k * L + j].im << 24, &r0.chunks[0U], 2);
        MultiWordSignedWrap(&r0.chunks[0U], 2, 62U, &r1.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 2, 62U, &r2.chunks[0U]);
        MultiWordSub(&r1.chunks[0U], &r2.chunks[0U], &r3.chunks[0U], 2);
        r0 = r4;
        r5 = r4;
        r6 = r4;
        if (sMultiWordLt(&r1.chunks[0U], &r0.chunks[0U], 2) && sMultiWordGe
            (&r2.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r3.chunks[0U],
             &r6.chunks[0U], 2)) {
          r3 = r7;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGe(&r1.chunks[0U], &r5.chunks[0U], 2) && sMultiWordLt
              (&r2.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLt(&r3.chunks[0U],
               &r8.chunks[0U], 2)) {
            r3 = r9;
          }
        }

        sMultiWord2MultiWord(&r3.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r12.chunks[0U], 2);
        sMultiWordShr(&r12.chunks[0U], 2, 62U, &c_im.chunks[0U], 2);
        sLong2MultiWord((int64_T)xc[k * L + j].re << 24, &r12.chunks[0U], 2);
        MultiWordSignedWrap(&r12.chunks[0U], 2, 62U, &r13.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 2, 62U, &r14.chunks[0U]);
        MultiWordSub(&r13.chunks[0U], &r14.chunks[0U], &r15.chunks[0U], 2);
        r12 = r4;
        r5 = r4;
        r6 = r4;
        if (sMultiWordLt(&r13.chunks[0U], &r12.chunks[0U], 2) && sMultiWordGe
            (&r14.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r15.chunks[0U],
             &r6.chunks[0U], 2)) {
          r15 = r7;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGe(&r13.chunks[0U], &r5.chunks[0U], 2) && sMultiWordLt
              (&r14.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLt(&r15.chunks
               [0U], &r8.chunks[0U], 2)) {
            r15 = r9;
          }
        }

        sMultiWord2MultiWord(&r15.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r16.chunks[0U], 2);
        sMultiWordShr(&r16.chunks[0U], 2, 62U, &r17.chunks[0U], 2);
        sMultiWordShr(&r17.chunks[0U], 2, 1U, &r18.chunks[0U], 2);
        sMultiWordShrNear(&r18.chunks[0U], 2, 24U, &r19.chunks[0U], 2);
        i1 = MultiWord2sLong(&r19.chunks[0U]);
        if (i1 > 2147483647L) {
          i1 = 2147483647L;
        } else {
          if (i1 < -2147483648L) {
            i1 = -2147483648L;
          }
        }

        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].re = (int32_T)i1;
        sMultiWordShr(&c_im.chunks[0U], 2, 1U, &r17.chunks[0U], 2);
        sMultiWordShrNear(&r17.chunks[0U], 2, 24U, &r18.chunks[0U], 2);
        i1 = MultiWord2sLong(&r18.chunks[0U]);
        if (i1 > 2147483647L) {
          i1 = 2147483647L;
        } else {
          if (i1 < -2147483648L) {
            i1 = -2147483648L;
          }
        }

        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].im = (int32_T)i1;
        sLong2MultiWord((int64_T)xc[k * L + j].im << 24, &r17.chunks[0U], 2);
        MultiWordSignedWrap(&r17.chunks[0U], 2, 62U, &r20.chunks[0U]);
        MultiWordSignedWrap(&b_temp.im.chunks[0U], 2, 62U, &r21.chunks[0U]);
        MultiWordAdd(&r20.chunks[0U], &r21.chunks[0U], &r22.chunks[0U], 2);
        r17 = r4;
        r16 = r4;
        r5 = r4;
        if (sMultiWordLt(&r20.chunks[0U], &r17.chunks[0U], 2) && sMultiWordLt
            (&r21.chunks[0U], &r16.chunks[0U], 2) && sMultiWordGe(&r22.chunks[0U],
             &r5.chunks[0U], 2)) {
          r22 = r7;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGt(&r20.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGt
              (&r21.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLe(&r22.chunks
               [0U], &r8.chunks[0U], 2)) {
            r22 = r9;
          }
        }

        sMultiWord2MultiWord(&r22.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r23.chunks[0U], 2);
        sMultiWordShr(&r23.chunks[0U], 2, 62U, &c_im.chunks[0U], 2);
        sLong2MultiWord((int64_T)xc[k * L + j].re << 24, &r23.chunks[0U], 2);
        MultiWordSignedWrap(&r23.chunks[0U], 2, 62U, &r24.chunks[0U]);
        MultiWordSignedWrap(&b_temp.re.chunks[0U], 2, 62U, &r25.chunks[0U]);
        MultiWordAdd(&r24.chunks[0U], &r25.chunks[0U], &r26.chunks[0U], 2);
        r23 = r4;
        r5 = r4;
        r6 = r4;
        if (sMultiWordLt(&r24.chunks[0U], &r23.chunks[0U], 2) && sMultiWordLt
            (&r25.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r26.chunks[0U],
             &r6.chunks[0U], 2)) {
          r26 = r7;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGt(&r24.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGt
              (&r25.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLe(&r26.chunks
               [0U], &r8.chunks[0U], 2)) {
            r26 = r9;
          }
        }

        sMultiWord2MultiWord(&r26.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r27.chunks[0U], 2);
        sMultiWordShr(&r27.chunks[0U], 2, 62U, &r28.chunks[0U], 2);
        sMultiWordShr(&r28.chunks[0U], 2, 1U, &r29.chunks[0U], 2);
        sMultiWordShrNear(&r29.chunks[0U], 2, 24U, &r30.chunks[0U], 2);
        i1 = MultiWord2sLong(&r30.chunks[0U]);
        if (i1 > 2147483647L) {
          i1 = 2147483647L;
        } else {
          if (i1 < -2147483648L) {
            i1 = -2147483648L;
          }
        }

        xc[k * L + j].re = (int32_T)i1;
        sMultiWordShr(&c_im.chunks[0U], 2, 1U, &r28.chunks[0U], 2);
        sMultiWordShrNear(&r28.chunks[0U], 2, 24U, &r29.chunks[0U], 2);
        i1 = MultiWord2sLong(&r29.chunks[0U]);
        if (i1 > 2147483647L) {
          i1 = 2147483647L;
        } else {
          if (i1 < -2147483648L) {
            i1 = -2147483648L;
          }
        }

        xc[k * L + j].im = (int32_T)i1;
      }
    }
  }
}

/* End of code generation (fi_fft.c) */
