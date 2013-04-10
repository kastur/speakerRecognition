/*
 * fi_mfcc_rtwutil.c
 *
 * Code generation for function 'fi_mfcc_rtwutil'
 *
 * C source code generated on: Fri Jan 25 00:33:15 2013
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
static void uMultiWord2sMultiWordSat(const uint64_T u1[], int32_T n1, uint64_T
  y[], int32_T n);

/* Function Definitions */
static void uMultiWord2sMultiWordSat(const uint64_T u1[], int32_T n1, uint64_T
  y[], int32_T n)
{
  int32_T nm1;
  boolean_T doSaturation = FALSE;
  int32_T i;
  nm1 = n - 1;
  if (n1 >= n) {
    doSaturation = ((u1[nm1] & 9223372036854775808UL) != 0UL);
    i = n1 - 1;
    while ((!doSaturation) && (i >= n)) {
      doSaturation = (u1[i] != 0UL);
      i--;
    }
  }

  if (doSaturation) {
    for (i = 0; i <= nm1 - 1; i++) {
      y[i] = MAX_uint64_T;
    }

    y[i] = ~9223372036854775808UL;
  } else {
    nm1 = n1 < n ? n1 : n;
    for (i = 0; i <= nm1 - 1; i++) {
      y[i] = u1[i];
    }

    while (i < n) {
      y[i] = 0UL;
      i++;
    }
  }
}

void MultiWordAdd(const uint64_T u1[], const uint64_T u2[], uint64_T y[],
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

void MultiWordSignedWrap(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T
  y[])
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

void MultiWordSub(const uint64_T u1[], const uint64_T u2[], uint64_T y[],
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

void sLong2MultiWord(int64_T u, uint64_T y[], int32_T n)
{
  uint64_T yi;
  int32_T i;
  y[0] = (uint64_T)u;
  yi = u < 0L ? MAX_uint64_T : 0UL;
  for (i = 1; i <= n - 1; i++) {
    y[i] = yi;
  }
}

void sMultiWord2MultiWord(const uint64_T u1[], int32_T n1, uint64_T y[], int32_T
  n)
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

void sMultiWord2sMultiWordSat(const uint64_T u1[], int32_T n1, uint64_T y[],
  int32_T n)
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

int32_T sMultiWordCmp(const uint64_T u1[], const uint64_T u2[], int32_T n)
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

boolean_T sMultiWordGe(const uint64_T u1[], const uint64_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) >= 0 ? TRUE : FALSE;
}

boolean_T sMultiWordGt(const uint64_T u1[], const uint64_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) > 0 ? TRUE : FALSE;
}

boolean_T sMultiWordLe(const uint64_T u1[], const uint64_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) <= 0 ? TRUE : FALSE;
}

boolean_T sMultiWordLt(const uint64_T u1[], const uint64_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) < 0 ? TRUE : FALSE;
}

void sMultiWordShl(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T y[],
                   int32_T n)
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

void sMultiWordShr(const uint64_T u1[], int32_T n1, uint32_T n2, uint64_T y[],
                   int32_T n)
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

void uMultiWord2MultiWord(const uint64_T u1[], int32_T n1, uint64_T y[], int32_T
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
      y[i] = 0UL;
    }
  }
}

int64_T uMultiWord2sLongSat(const uint64_T u1[], int32_T n1)
{
  uint64_T y;
  uint64_T *r103;
  r103 = &y;
  uMultiWord2sMultiWordSat(u1, n1, r103, 1);
  return (int64_T)y;
}

int32_T uMultiWordCmp(const uint64_T u1[], const uint64_T u2[], int32_T n)
{
  int32_T y;
  int32_T i;
  uint64_T u1i;
  uint64_T u2i;
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

boolean_T uMultiWordLe(const uint64_T u1[], const uint64_T u2[], int32_T n)
{
  return uMultiWordCmp(u1, u2, n) <= 0 ? TRUE : FALSE;
}

/* End of code generation (fi_mfcc_rtwutil.c) */
