/*
 * sum.c
 *
 * Code generation for function 'sum'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "sum.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
creal_T sum(const creal_T x_data[65], const int32_T x_size[2])
{
  creal_T y;
  int32_T k;
  if (x_size[1] == 0) {
    y.re = 0.0;
    y.im = 0.0;
  } else {
    y = x_data[0];
    for (k = 2; k <= x_size[1]; k++) {
      y.re += x_data[k - 1].re;
      y.im += x_data[k - 1].im;
    }
  }

  return y;
}

/* End of code generation (sum.c) */
