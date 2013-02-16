/*
 * abs1.c
 *
 * Code generation for function 'abs1'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "abs1.h"
#include "log.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
void d_abs(const creal_T x_data[65], const int32_T x_size[2], real_T y_data[65],
           int32_T y_size[2])
{
  int8_T iv0[2];
  int32_T k;
  for (k = 0; k < 2; k++) {
    iv0[k] = (int8_T)x_size[k];
  }

  y_size[0] = 1;
  y_size[1] = iv0[1];
  for (k = 0; k <= x_size[1] - 1; k++) {
    y_data[k] = rt_hypotd_snf(fabs(x_data[k].re), fabs(x_data[k].im));
  }
}

/* End of code generation (abs1.c) */
