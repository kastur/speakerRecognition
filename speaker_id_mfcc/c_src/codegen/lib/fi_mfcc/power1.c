/*
 * power1.c
 *
 * Code generation for function 'power1'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "power1.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
void power(const int64m_T a[26], int128m_T yout[26])
{
  int32_T i;
  int64m_T r92;
  int64m_T r93;
  int128m_T r94;
  for (i = 0; i < 26; i++) {
    r92 = a[i];
    r93 = a[i];
    sMultiWordMul(&r92.chunks[0U], 2, &r93.chunks[0U], 2, &r94.chunks[0U], 4);
    yout[i] = r94;
  }
}

/* End of code generation (power1.c) */
