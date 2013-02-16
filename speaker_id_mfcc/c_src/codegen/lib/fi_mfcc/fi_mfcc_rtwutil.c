/*
 * fi_mfcc_rtwutil.c
 *
 * Code generation for function 'fi_mfcc_rtwutil'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static int32_T sMultiWordCmp(const uint32_T u1[], const uint32_T u2[], int32_T n);

/* Function Definitions */
static int32_T sMultiWordCmp(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  int32_T y;
  uint32_T su1;
  uint32_T su2;
  int32_T i;
  su1 = u1[n - 1] & 2147483648U;
  su2 = u2[n - 1] & 2147483648U;
  if ((su1 ^ su2) != 0U) {
    y = su1 != 0U ? -1 : 1;
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

void MultiWordAdd(const uint32_T u1[], const uint32_T u2[], uint32_T y[],
                  int32_T n)
{
  int32_T i;
  uint32_T u1i;
  uint32_T carry = 0U;
  uint32_T yi;
  int32_T carry1;
  int32_T carry2;
  for (i = 0; i <= n - 1; i++) {
    u1i = u1[i];
    yi = (u1i + u2[i]) + carry;
    y[i] = yi;
    carry1 = (int32_T)(yi <= u1i ? 1U : 0U);
    carry2 = (int32_T)(yi < u1i ? 1U : 0U);
    carry = carry != 0U ? (uint32_T)carry1 : (uint32_T)carry2;
  }
}

void MultiWordSignedWrap(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T
  y[])
{
  int32_T n1m1;
  int32_T i;
  uint32_T ns;
  uint32_T ys;
  n1m1 = n1 - 1;
  for (i = 0; i <= n1m1 - 1; i++) {
    y[i] = u1[i];
  }

  ns = 31U - n2;
  ns = 1U << ns;
  ys = (u1[n1m1] & ns) != 0U ? MAX_uint32_T : 0U;
  ns = (ns << 1U) - 1U;
  y[n1m1] = (u1[n1m1] & ns) | (~ns & ys);
}

void MultiWordSub(const uint32_T u1[], const uint32_T u2[], uint32_T y[],
                  int32_T n)
{
  int32_T i;
  uint32_T u1i;
  uint32_T borrow = 0U;
  uint32_T yi;
  int32_T borrow1;
  int32_T borrow2;
  for (i = 0; i <= n - 1; i++) {
    u1i = u1[i];
    yi = (u1i - u2[i]) - borrow;
    y[i] = yi;
    borrow1 = (int32_T)(yi >= u1i ? 1U : 0U);
    borrow2 = (int32_T)(yi > u1i ? 1U : 0U);
    borrow = borrow != 0U ? (uint32_T)borrow1 : (uint32_T)borrow2;
  }
}

real_T rt_hypotd_snf(real_T u0, real_T u1)
{
  real_T y;
  real_T a;
  a = fabs(u0);
  y = fabs(u1);
  if (a < y) {
    a /= y;
    y *= sqrt(a * a + 1.0);
  } else if (a > y) {
    y /= a;
    y = a * sqrt(y * y + 1.0);
  } else if (rtIsNaN(y)) {
  } else {
    y = a * 1.4142135623730951;
  }

  return y;
}

void sMultiWord2MultiWord(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T
  n)
{
  int32_T nm;
  int32_T i;
  uint32_T u1i;
  nm = n1 < n ? n1 : n;
  for (i = 0; i <= nm - 1; i++) {
    y[i] = u1[i];
  }

  if (n > n1) {
    u1i = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
    for (i = nm; i <= n - 1; i++) {
      y[i] = u1i;
    }
  }
}

void sMultiWord2sMultiWordSat(const uint32_T u1[], int32_T n1, uint32_T y[],
  int32_T n)
{
  int32_T nm1;
  int32_T n1m1;
  uint32_T ys;
  boolean_T doSaturation = FALSE;
  nm1 = n - 1;
  n1m1 = n1 - 1;
  ys = (u1[n1m1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
  if (n1 > n) {
    doSaturation = (((u1[n1m1] ^ u1[nm1]) & 2147483648U) != 0U);
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

    y[n1m1] = ys ^ 2147483648U;
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

boolean_T sMultiWordGe(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) >= 0 ? TRUE : FALSE;
}

boolean_T sMultiWordGt(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) > 0 ? TRUE : FALSE;
}

boolean_T sMultiWordLe(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) <= 0 ? TRUE : FALSE;
}

boolean_T sMultiWordLt(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) < 0 ? TRUE : FALSE;
}

void sMultiWordMul(const uint32_T u1[], int32_T n1, const uint32_T u2[], int32_T
                   n2, uint32_T y[], int32_T n)
{
  boolean_T isNegative1;
  boolean_T isNegative2;
  int32_T cb1;
  int32_T k;
  int32_T i;
  uint32_T cb;
  uint32_T u1i;
  int32_T a1;
  int32_T a0;
  int32_T cb2;
  int32_T nj;
  int32_T j;
  uint32_T yk;
  int32_T b1;
  int32_T b0;
  uint32_T w01;
  uint32_T t;
  isNegative1 = ((u1[n1 - 1] & 2147483648U) != 0U);
  isNegative2 = ((u2[n2 - 1] & 2147483648U) != 0U);
  cb1 = 1;

  /* Initialize output to zero */
  for (k = 0; k <= n - 1; k++) {
    y[k] = 0U;
  }

  for (i = 0; i <= n1 - 1; i++) {
    cb = 0U;
    u1i = u1[i];
    if (isNegative1) {
      u1i = ~u1i + (uint32_T)cb1;
      cb1 = (int32_T)(u1i < (uint32_T)cb1 ? 1U : 0U);
    }

    a1 = (int32_T)(u1i >> 16U);
    a0 = (int32_T)(u1i & 65535U);
    cb2 = 1;
    k = n - i;
    nj = n2 <= k ? n2 : k;
    k = i;
    for (j = 0; j <= nj - 1; j++) {
      yk = y[k];
      u1i = u2[j];
      if (isNegative2) {
        u1i = ~u1i + (uint32_T)cb2;
        cb2 = (int32_T)(u1i < (uint32_T)cb2 ? 1U : 0U);
      }

      b1 = (int32_T)(u1i >> 16U);
      b0 = (int32_T)(u1i & 65535U);
      u1i = (uint32_T)a1 * (uint32_T)b0;
      w01 = (uint32_T)a0 * (uint32_T)b1;
      yk += cb;
      cb = yk < cb ? 1U : 0U;
      t = (uint32_T)a0 * (uint32_T)b0;
      yk += t;
      cb += yk < t ? 1U : 0U;
      t = u1i << 16U;
      yk += t;
      cb += yk < t ? 1U : 0U;
      t = w01 << 16U;
      yk += t;
      cb += yk < t ? 1U : 0U;
      y[k] = yk;
      cb += u1i >> 16U;
      cb += w01 >> 16U;
      cb += (uint32_T)a1 * (uint32_T)b1;
      k++;
    }

    if (k < n) {
      y[k] = cb;
    }
  }

  /* Apply sign */
  if ((int32_T)isNegative1 != (int32_T)isNegative2) {
    cb = 1U;
    for (k = 0; k <= n - 1; k++) {
      yk = ~y[k] + cb;
      y[k] = yk;
      cb = yk < cb ? 1U : 0U;
    }
  }
}

void sMultiWordShl(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T y[],
                   int32_T n)
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

void sMultiWordShr(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T y[],
                   int32_T n)
{
  int32_T nb;
  int32_T i;
  uint32_T ys;
  int32_T nc;
  uint32_T nr;
  uint32_T nl;
  uint32_T u1i;
  int32_T i1;
  uint32_T yi;
  nb = (int32_T)n2 / 32;
  i = 0;
  ys = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
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

void uMultiWord2MultiWord(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T
  n)
{
  int32_T nm;
  int32_T i;
  nm = n1 < n ? n1 : n;
  for (i = 0; i <= nm - 1; i++) {
    y[i] = u1[i];
  }

  if (n > n1) {
    for (i = nm; i <= n - 1; i++) {
      y[i] = 0U;
    }
  }
}

void uMultiWord2sMultiWordSat(const uint32_T u1[], int32_T n1, uint32_T y[],
  int32_T n)
{
  int32_T nm1;
  boolean_T doSaturation = FALSE;
  int32_T i;
  nm1 = n - 1;
  if (n1 >= n) {
    doSaturation = ((u1[nm1] & 2147483648U) != 0U);
    i = n1 - 1;
    while ((!doSaturation) && (i >= n)) {
      doSaturation = (u1[i] != 0U);
      i--;
    }
  }

  if (doSaturation) {
    for (i = 0; i <= nm1 - 1; i++) {
      y[i] = MAX_uint32_T;
    }

    y[i] = 2147483647U;
  } else {
    nm1 = n1 < n ? n1 : n;
    for (i = 0; i <= nm1 - 1; i++) {
      y[i] = u1[i];
    }

    while (i < n) {
      y[i] = 0U;
      i++;
    }
  }
}

int32_T uMultiWordCmp(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  int32_T y;
  int32_T i;
  uint32_T u1i;
  uint32_T u2i;
  y = 0;
  i = n;
  while ((y == 0) && (i > 0)) {
    i--;
    u1i = u1[i];
    u2i = u2[i];
    if (u1i != u2i) {
      y = u1i > u2i ? 1 : -1;
    }
  }

  return y;
}

boolean_T uMultiWordLe(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  return uMultiWordCmp(u1, u2, n) <= 0 ? TRUE : FALSE;
}

/* End of code generation (fi_mfcc_rtwutil.c) */
