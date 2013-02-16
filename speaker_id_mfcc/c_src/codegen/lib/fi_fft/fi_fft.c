/*
 * fi_fft.c
 *
 * Code generation for function 'fi_fft'
 *
 * C source code generated on: Thu Jan 24 18:47:03 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_fft.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static int64_T MultiWord2sLong(const uint64_T u[]);
static void MultiWordAdd(const uint64_T u1[], const uint64_T u2[], uint64_T y[],
  int32_T n);
static void MultiWordSignedWrap(const uint64_T u1[], int32_T n1, uint32_T n2,
  uint64_T y[]);
static void MultiWordSub(const uint64_T u1[], const uint64_T u2[], uint64_T y[],
  int32_T n);
static real_T rt_powd_snf(real_T u0, real_T u1);
static void sLong2MultiWord(int64_T u, uint64_T y[], int32_T n);
static void sMultiWord2MultiWord(const uint64_T u1[], int32_T n1, uint64_T y[],
  int32_T n);
static void sMultiWord2sMultiWordSat(const uint64_T u1[], int32_T n1, uint64_T
  y[], int32_T n);
static int32_T sMultiWordCmp(const uint64_T u1[], const uint64_T u2[], int32_T n);
static boolean_T sMultiWordGe(const uint64_T u1[], const uint64_T u2[], int32_T
  n);
static boolean_T sMultiWordGt(const uint64_T u1[], const uint64_T u2[], int32_T
  n);
static boolean_T sMultiWordLe(const uint64_T u1[], const uint64_T u2[], int32_T
  n);
static boolean_T sMultiWordLt(const uint64_T u1[], const uint64_T u2[], int32_T
  n);
static void sMultiWordShl(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[], int32_T n);
static void sMultiWordShr(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[], int32_T n);
static void sMultiWordShrNear(const uint64_T u1[], int32_T n1, uint32_T n2,
  uint64_T y[], int32_T n);

/* Function Definitions */
static int64_T MultiWord2sLong(const uint64_T u[])
{
  return (int64_T)u[0];
}

static void MultiWordAdd(const uint64_T u1[], const uint64_T u2[], uint64_T y[],
  int32_T n)
{
  int32_T i;
  uint64_T u1i;
  uint64_T carry = 0UL;
  uint64_T yi;
  uint64_T carry1;
  for (i = 0; i <= n - 1; i++) {
    u1i = u1[i];
    yi = (u1i + u2[i]) + carry;
    y[i] = yi;
    carry1 = yi <= u1i ? 1UL : 0UL;
    u1i = yi < u1i ? 1UL : 0UL;
    carry = carry != 0UL ? carry1 : u1i;
  }
}

static void MultiWordSignedWrap(const uint64_T u1[], int32_T n1, uint32_T n2,
  uint64_T y[])
{
  int32_T n1m1;
  int32_T i;
  uint32_T ns;
  uint64_T mask;
  uint64_T ys;
  n1m1 = n1 - 1;
  for (i = 0; i <= n1m1 - 1; i++) {
    y[i] = u1[i];
  }

  ns = 63U - n2;
  mask = 1UL << ns;
  ys = (u1[n1m1] & mask) != 0UL ? MAX_uint64_T : 0UL;
  mask = (mask << 1U) - 1UL;
  y[n1m1] = (u1[n1m1] & mask) | (~mask & ys);
}

static void MultiWordSub(const uint64_T u1[], const uint64_T u2[], uint64_T y[],
  int32_T n)
{
  int32_T i;
  uint64_T u1i;
  uint64_T borrow = 0UL;
  uint64_T yi;
  uint64_T borrow1;
  for (i = 0; i <= n - 1; i++) {
    u1i = u1[i];
    yi = (u1i - u2[i]) - borrow;
    y[i] = yi;
    borrow1 = yi >= u1i ? 1UL : 0UL;
    u1i = yi > u1i ? 1UL : 0UL;
    borrow = borrow != 0UL ? borrow1 : u1i;
  }
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

static void sLong2MultiWord(int64_T u, uint64_T y[], int32_T n)
{
  uint64_T yi;
  int32_T i;
  y[0] = (uint64_T)u;
  yi = u < 0L ? MAX_uint64_T : 0UL;
  for (i = 1; i <= n - 1; i++) {
    y[i] = yi;
  }
}

static void sMultiWord2MultiWord(const uint64_T u1[], int32_T n1, uint64_T y[],
  int32_T n)
{
  int32_T nm;
  int32_T i;
  uint64_T u1i;
  nm = n1 < n ? n1 : n;
  for (i = 0; i <= nm - 1; i++) {
    y[i] = u1[i];
  }

  if (n > n1) {
    u1i = (u1[n1 - 1] & 9223372036854775808UL) != 0UL ? MAX_uint64_T : 0UL;
    for (i = nm; i <= n - 1; i++) {
      y[i] = u1i;
    }
  }
}

static void sMultiWord2sMultiWordSat(const uint64_T u1[], int32_T n1, uint64_T
  y[], int32_T n)
{
  int32_T nm1;
  int32_T n1m1;
  uint64_T ys;
  boolean_T doSaturation = FALSE;
  nm1 = n - 1;
  n1m1 = n1 - 1;
  ys = (u1[n1m1] & 9223372036854775808UL) != 0UL ? MAX_uint64_T : 0UL;
  if (n1 > n) {
    doSaturation = (((u1[n1m1] ^ u1[nm1]) & 9223372036854775808UL) != 0UL);
    while ((!doSaturation) && (n1m1 >= n)) {
      doSaturation = (u1[n1m1] != ys);
      n1m1--;
    }
  }

  if (doSaturation) {
    ys = ~ys;
    for (n1m1 = 0; n1m1 <= nm1 - 1; n1m1++) {
      y[n1m1] = ys;
    }

    y[n1m1] = ys ^ 9223372036854775808UL;
  } else {
    nm1 = n1 < n ? n1 : n;
    for (n1m1 = 0; n1m1 <= nm1 - 1; n1m1++) {
      y[n1m1] = u1[n1m1];
    }

    while (n1m1 < n) {
      y[n1m1] = ys;
      n1m1++;
    }
  }
}

static int32_T sMultiWordCmp(const uint64_T u1[], const uint64_T u2[], int32_T n)
{
  int32_T y;
  uint64_T su1;
  uint64_T su2;
  int32_T i;
  su1 = u1[n - 1] & 9223372036854775808UL;
  su2 = u2[n - 1] & 9223372036854775808UL;
  if ((su1 ^ su2) != 0UL) {
    y = su1 != 0UL ? -1 : 1;
  } else {
    y = 0;
    i = n;
    while ((y == 0) && (i > 0)) {
      i--;
      su1 = u1[i];
      su2 = u2[i];
      if (su1 != su2) {
        y = su1 > su2 ? 1 : -1;
      }
    }
  }

  return y;
}

static boolean_T sMultiWordGe(const uint64_T u1[], const uint64_T u2[], int32_T
  n)
{
  return sMultiWordCmp(u1, u2, n) >= 0 ? TRUE : FALSE;
}

static boolean_T sMultiWordGt(const uint64_T u1[], const uint64_T u2[], int32_T
  n)
{
  return sMultiWordCmp(u1, u2, n) > 0 ? TRUE : FALSE;
}

static boolean_T sMultiWordLe(const uint64_T u1[], const uint64_T u2[], int32_T
  n)
{
  return sMultiWordCmp(u1, u2, n) <= 0 ? TRUE : FALSE;
}

static boolean_T sMultiWordLt(const uint64_T u1[], const uint64_T u2[], int32_T
  n)
{
  return sMultiWordCmp(u1, u2, n) < 0 ? TRUE : FALSE;
}

static void sMultiWordShl(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
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

static void sMultiWordShr(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[], int32_T n)
{
  int32_T nb;
  int32_T i;
  uint64_T ys;
  int32_T nc;
  uint32_T nr;
  uint32_T nl;
  uint64_T u1i;
  int32_T i1;
  uint64_T yi;
  nb = (int32_T)n2 / 64;
  i = 0;
  ys = (u1[n1 - 1] & 9223372036854775808UL) != 0UL ? MAX_uint64_T : 0UL;
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
      u1i = nc < n1 ? u1[nc] : ys;
      y[i] = yi | u1i << nl;
      i++;
    } else {
      for (i1 = nb; i1 <= nc - 1; i1++) {
        y[i] = u1[i1];
        i++;
      }
    }
  }

  while (i < n) {
    y[i] = ys;
    i++;
  }
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

void fi_fft(int32_T x[128], cint32_T xc[128])
{
  int32_T j;
  int32_T L;
  int32_T temp;
  int32_T k;
  real_T L2;
  real_T r;
  int32_T y;
  int128m_T r0;
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

  int128m_T r1;
  int128m_T r2;
  int128m_T r3;
  static int128m_T r4 = { { 0UL, 0UL } };

  int128m_T r5;
  int128m_T r6;
  static int128m_T r7 = { { 0UL, MAX_uint64_T } };

  int128m_T r8;
  static int128m_T r9 = { { MAX_uint64_T, 0UL } };

  int192m_T r10;
  int192m_T r11;
  int128m_T r12;
  int128m_T c_re;
  int128m_T r13;
  int128m_T r14;
  int128m_T r15;
  int128m_T r16;
  int128m_T c_im;
  int128m_T r17;
  int128m_T r18;
  int128m_T r19;
  static int128m_T r20 = { { 0UL, 18446744073709551614UL } };

  static int128m_T r21 = { { MAX_uint64_T, 1UL } };

  int128m_T r22;
  int128m_T b_c_im;
  int128m_T r23;
  int128m_T r24;
  int128m_T r25;
  int128m_T r26;
  int128m_T r27;
  int128m_T r28;
  int128m_T r29;
  int64_T i0;
  int128m_T r30;
  int128m_T r31;
  int128m_T r32;
  int128m_T r33;
  int128m_T r34;
  int128m_T r35;
  int128m_T r36;
  int128m_T r37;
  int128m_T r38;
  int128m_T r39;
  int128m_T r40;
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

  for (temp = 0; temp < 128; temp++) {
    xc[temp].re = x[temp];
    xc[temp].im = 0;
  }

  for (temp = 0; temp < 7; temp++) {
    L = (int32_T)rt_powd_snf(2.0, 1.0 + (real_T)temp);
    L2 = (real_T)L / 2.0;
    r = 128.0 / (real_T)L;
    for (k = 0; k <= (int32_T)((r - 1.0) + 1.0) - 1; k++) {
      for (j = 0; j <= (int32_T)((L2 - 1.0) + 1.0) - 1; j++) {
        y = k * L;
        sLong2MultiWord((int64_T)w[(int32_T)(((L2 - 1.0) + (real_T)j) + 1.0) - 1]
                        .re * (int64_T)xc[(int32_T)(((real_T)(y + j) + L2) + 1.0)
                        - 1].re, &r0.chunks[0U], 2);
        MultiWordSignedWrap(&r0.chunks[0U], 2, 63U, &r1.chunks[0U]);
        sLong2MultiWord((int64_T)w[(int32_T)(((L2 - 1.0) + (real_T)j) + 1.0) - 1]
                        .im * (int64_T)xc[(int32_T)(((real_T)(y + j) + L2) + 1.0)
                        - 1].im, &r0.chunks[0U], 2);
        MultiWordSignedWrap(&r0.chunks[0U], 2, 63U, &r2.chunks[0U]);
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
        sMultiWordShl(&r10.chunks[0U], 3, 63U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r12.chunks[0U], 2);
        sMultiWordShr(&r12.chunks[0U], 2, 63U, &c_re.chunks[0U], 2);
        sLong2MultiWord((int64_T)w[(int32_T)(((L2 - 1.0) + (real_T)j) + 1.0) - 1]
                        .re * (int64_T)xc[(int32_T)(((real_T)(y + j) + L2) + 1.0)
                        - 1].im, &r12.chunks[0U], 2);
        MultiWordSignedWrap(&r12.chunks[0U], 2, 63U, &r13.chunks[0U]);
        sLong2MultiWord((int64_T)w[(int32_T)(((L2 - 1.0) + (real_T)j) + 1.0) - 1]
                        .im * (int64_T)xc[(int32_T)(((real_T)(y + j) + L2) + 1.0)
                        - 1].re, &r12.chunks[0U], 2);
        MultiWordSignedWrap(&r12.chunks[0U], 2, 63U, &r14.chunks[0U]);
        MultiWordAdd(&r13.chunks[0U], &r14.chunks[0U], &r15.chunks[0U], 2);
        r12 = r4;
        r5 = r4;
        r6 = r4;
        if (sMultiWordLt(&r13.chunks[0U], &r12.chunks[0U], 2) && sMultiWordLt
            (&r14.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r15.chunks[0U],
             &r6.chunks[0U], 2)) {
          r15 = r7;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGt(&r13.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGt
              (&r14.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLe(&r15.chunks
               [0U], &r8.chunks[0U], 2)) {
            r15 = r9;
          }
        }

        sMultiWord2MultiWord(&r15.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 63U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r16.chunks[0U], 2);
        sMultiWordShr(&r16.chunks[0U], 2, 63U, &c_im.chunks[0U], 2);
        sLong2MultiWord((int64_T)xc[k * L + j].im << 24, &r16.chunks[0U], 2);
        MultiWordSignedWrap(&r16.chunks[0U], 2, 62U, &r17.chunks[0U]);
        MultiWordSignedWrap(&c_im.chunks[0U], 2, 62U, &r18.chunks[0U]);
        MultiWordSub(&r17.chunks[0U], &r18.chunks[0U], &r19.chunks[0U], 2);
        r16 = r4;
        r5 = r4;
        r6 = r4;
        if (sMultiWordLt(&r17.chunks[0U], &r16.chunks[0U], 2) && sMultiWordGe
            (&r18.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r19.chunks[0U],
             &r6.chunks[0U], 2)) {
          r19 = r20;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGe(&r17.chunks[0U], &r5.chunks[0U], 2) && sMultiWordLt
              (&r18.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLt(&r19.chunks
               [0U], &r8.chunks[0U], 2)) {
            r19 = r21;
          }
        }

        sMultiWord2MultiWord(&r19.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r22.chunks[0U], 2);
        sMultiWordShr(&r22.chunks[0U], 2, 62U, &b_c_im.chunks[0U], 2);
        sLong2MultiWord((int64_T)xc[k * L + j].re << 24, &r22.chunks[0U], 2);
        MultiWordSignedWrap(&r22.chunks[0U], 2, 62U, &r23.chunks[0U]);
        MultiWordSignedWrap(&c_re.chunks[0U], 2, 62U, &r24.chunks[0U]);
        MultiWordSub(&r23.chunks[0U], &r24.chunks[0U], &r25.chunks[0U], 2);
        r22 = r4;
        r5 = r4;
        r6 = r4;
        if (sMultiWordLt(&r23.chunks[0U], &r22.chunks[0U], 2) && sMultiWordGe
            (&r24.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r25.chunks[0U],
             &r6.chunks[0U], 2)) {
          r25 = r20;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGe(&r23.chunks[0U], &r5.chunks[0U], 2) && sMultiWordLt
              (&r24.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLt(&r25.chunks
               [0U], &r8.chunks[0U], 2)) {
            r25 = r21;
          }
        }

        sMultiWord2MultiWord(&r25.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r26.chunks[0U], 2);
        sMultiWordShr(&r26.chunks[0U], 2, 62U, &r27.chunks[0U], 2);
        sMultiWordShr(&r27.chunks[0U], 2, 1U, &r28.chunks[0U], 2);
        sMultiWordShrNear(&r28.chunks[0U], 2, 24U, &r29.chunks[0U], 2);
        i0 = MultiWord2sLong(&r29.chunks[0U]);
        if (i0 > 2147483647L) {
          i0 = 2147483647L;
        } else {
          if (i0 < -2147483648L) {
            i0 = -2147483648L;
          }
        }

        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].re = (int32_T)i0;
        sMultiWordShr(&b_c_im.chunks[0U], 2, 1U, &r27.chunks[0U], 2);
        sMultiWordShrNear(&r27.chunks[0U], 2, 24U, &r28.chunks[0U], 2);
        i0 = MultiWord2sLong(&r28.chunks[0U]);
        if (i0 > 2147483647L) {
          i0 = 2147483647L;
        } else {
          if (i0 < -2147483648L) {
            i0 = -2147483648L;
          }
        }

        xc[(int32_T)(((real_T)(k * L + j) + L2) + 1.0) - 1].im = (int32_T)i0;
        sLong2MultiWord((int64_T)xc[k * L + j].im << 24, &r27.chunks[0U], 2);
        MultiWordSignedWrap(&r27.chunks[0U], 2, 62U, &r30.chunks[0U]);
        MultiWordSignedWrap(&c_im.chunks[0U], 2, 62U, &r31.chunks[0U]);
        MultiWordAdd(&r30.chunks[0U], &r31.chunks[0U], &r32.chunks[0U], 2);
        r27 = r4;
        r26 = r4;
        r5 = r4;
        if (sMultiWordLt(&r30.chunks[0U], &r27.chunks[0U], 2) && sMultiWordLt
            (&r31.chunks[0U], &r26.chunks[0U], 2) && sMultiWordGe(&r32.chunks[0U],
             &r5.chunks[0U], 2)) {
          r32 = r20;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGt(&r30.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGt
              (&r31.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLe(&r32.chunks
               [0U], &r8.chunks[0U], 2)) {
            r32 = r21;
          }
        }

        sMultiWord2MultiWord(&r32.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r33.chunks[0U], 2);
        sMultiWordShr(&r33.chunks[0U], 2, 62U, &b_c_im.chunks[0U], 2);
        sLong2MultiWord((int64_T)xc[k * L + j].re << 24, &r33.chunks[0U], 2);
        MultiWordSignedWrap(&r33.chunks[0U], 2, 62U, &r34.chunks[0U]);
        MultiWordSignedWrap(&c_re.chunks[0U], 2, 62U, &r35.chunks[0U]);
        MultiWordAdd(&r34.chunks[0U], &r35.chunks[0U], &r36.chunks[0U], 2);
        r33 = r4;
        r5 = r4;
        r6 = r4;
        if (sMultiWordLt(&r34.chunks[0U], &r33.chunks[0U], 2) && sMultiWordLt
            (&r35.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r36.chunks[0U],
             &r6.chunks[0U], 2)) {
          r36 = r20;
        } else {
          r5 = r4;
          r6 = r4;
          r8 = r4;
          if (sMultiWordGt(&r34.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGt
              (&r35.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLe(&r36.chunks
               [0U], &r8.chunks[0U], 2)) {
            r36 = r21;
          }
        }

        sMultiWord2MultiWord(&r36.chunks[0U], 2, &r10.chunks[0U], 3);
        sMultiWordShl(&r10.chunks[0U], 3, 62U, &r11.chunks[0U], 3);
        sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r37.chunks[0U], 2);
        sMultiWordShr(&r37.chunks[0U], 2, 62U, &r38.chunks[0U], 2);
        sMultiWordShr(&r38.chunks[0U], 2, 1U, &r39.chunks[0U], 2);
        sMultiWordShrNear(&r39.chunks[0U], 2, 24U, &r40.chunks[0U], 2);
        i0 = MultiWord2sLong(&r40.chunks[0U]);
        if (i0 > 2147483647L) {
          i0 = 2147483647L;
        } else {
          if (i0 < -2147483648L) {
            i0 = -2147483648L;
          }
        }

        xc[k * L + j].re = (int32_T)i0;
        sMultiWordShr(&b_c_im.chunks[0U], 2, 1U, &r38.chunks[0U], 2);
        sMultiWordShrNear(&r38.chunks[0U], 2, 24U, &r39.chunks[0U], 2);
        i0 = MultiWord2sLong(&r39.chunks[0U]);
        if (i0 > 2147483647L) {
          i0 = 2147483647L;
        } else {
          if (i0 < -2147483648L) {
            i0 = -2147483648L;
          }
        }

        xc[k * L + j].im = (int32_T)i0;
      }
    }
  }
}

/* End of code generation (fi_fft.c) */
