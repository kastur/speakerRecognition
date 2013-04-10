/*
 * power1.c
 *
 * Code generation for function 'power1'
 *
 * C source code generated on: Fri Jan 25 00:33:15 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "power1.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static void sMultiWordMul(const uint64_T u1[], int32_T n1, const uint64_T u2[],
  int32_T n2, uint64_T y[], int32_T n);

/* Function Definitions */
static void sMultiWordMul(const uint64_T u1[], int32_T n1, const uint64_T u2[],
  int32_T n2, uint64_T y[], int32_T n)
{
  boolean_T isNegative1;
  boolean_T isNegative2;
  uint64_T cb1;
  int32_T k;
  int32_T i;
  uint64_T cb;
  uint64_T u1i;
  uint64_T a1;
  uint64_T a0;
  uint64_T cb2;
  int32_T nj;
  int32_T j;
  uint64_T yk;
  uint64_T b1;
  uint64_T w10;
  uint64_T w01;
  isNegative1 = ((u1[n1 - 1] & 9223372036854775808UL) != 0UL);
  isNegative2 = ((u2[n2 - 1] & 9223372036854775808UL) != 0UL);
  cb1 = 1UL;

  /* Initialize output to zero */
  for (k = 0; k <= n - 1; k++) {
    y[k] = 0UL;
  }

  for (i = 0; i <= n1 - 1; i++) {
    cb = 0UL;
    u1i = u1[i];
    if (isNegative1) {
      u1i = ~u1i + cb1;
      cb1 = u1i < cb1 ? 1UL : 0UL;
    }

    a1 = u1i >> 32U;
    a0 = u1i & 4294967295UL;
    cb2 = 1UL;
    k = n - i;
    nj = n2 <= k ? n2 : k;
    k = i;
    for (j = 0; j <= nj - 1; j++) {
      yk = y[k];
      u1i = u2[j];
      if (isNegative2) {
        u1i = ~u1i + cb2;
        cb2 = u1i < cb2 ? 1UL : 0UL;
      }

      b1 = u1i >> 32U;
      u1i &= 4294967295UL;
      w10 = a1 * u1i;
      w01 = a0 * b1;
      yk += cb;
      cb = yk < cb ? 1UL : 0UL;
      u1i *= a0;
      yk += u1i;
      cb += yk < u1i ? 1UL : 0UL;
      u1i = w10 << 32U;
      yk += u1i;
      cb += yk < u1i ? 1UL : 0UL;
      u1i = w01 << 32U;
      yk += u1i;
      cb += yk < u1i ? 1UL : 0UL;
      y[k] = yk;
      cb += w10 >> 32U;
      cb += w01 >> 32U;
      cb += a1 * b1;
      k++;
    }

    if (k < n) {
      y[k] = cb;
    }
  }

  /* Apply sign */
  if ((int32_T)isNegative1 != (int32_T)isNegative2) {
    cb = 1UL;
    for (k = 0; k <= n - 1; k++) {
      yk = ~y[k] + cb;
      y[k] = yk;
      cb = yk < cb ? 1UL : 0UL;
    }
  }
}

void power(const int64_T a[26], int128m_T yout[26])
{
  int32_T i;
  uint64_T u0;
  uint64_T u1;
  int128m_T r61;
  for (i = 0; i < 26; i++) {
    u0 = (uint64_T)a[i];
    u1 = (uint64_T)a[i];
    sMultiWordMul(&u0, 1, &u1, 1, &r61.chunks[0U], 2);
    yout[i] = r61;
  }
}

/* End of code generation (power1.c) */
