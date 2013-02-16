/*
 * log.c
 *
 * Code generation for function 'log'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "log.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static real_T rt_atan2d_snf(real_T u0, real_T u1);

/* Function Definitions */
static real_T rt_atan2d_snf(real_T u0, real_T u1)
{
  real_T y;
  int32_T i4;
  int32_T i5;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = rtNaN;
  } else if (rtIsInf(u0) && rtIsInf(u1)) {
    if (u1 > 0.0) {
      i4 = 1;
    } else {
      i4 = -1;
    }

    if (u0 > 0.0) {
      i5 = 1;
    } else {
      i5 = -1;
    }

    y = atan2((real_T)i5, (real_T)i4);
  } else if (u1 == 0.0) {
    if (u0 > 0.0) {
      y = RT_PI / 2.0;
    } else if (u0 < 0.0) {
      y = -(RT_PI / 2.0);
    } else {
      y = 0.0;
    }
  } else {
    y = atan2(u0, u1);
  }

  return y;
}

void b_log(real_T x[32])
{
  int32_T k;
  for (k = 0; k < 32; k++) {
    x[k] = log(x[k]);
  }
}

void c_log(creal_T *x)
{
  real_T x_re;
  real_T x_im;
  real_T b_x_im;
  real_T b_x_re;
  if ((x->im == 0.0) && rtIsNaN(x->re)) {
  } else if ((fabs(x->re) > 8.9884656743115785E+307) || (fabs(x->im) >
              8.9884656743115785E+307)) {
    x_re = x->re;
    x_im = x->im;
    b_x_im = x->im;
    b_x_re = x->re;
    x->re = log(rt_hypotd_snf(fabs(x_re / 2.0), fabs(x_im / 2.0))) +
      0.69314718055994529;
    x->im = rt_atan2d_snf(b_x_im, b_x_re);
  } else {
    x_re = x->re;
    x_im = x->im;
    b_x_im = x->im;
    b_x_re = x->re;
    x->re = log(rt_hypotd_snf(fabs(x_re), fabs(x_im)));
    x->im = rt_atan2d_snf(b_x_im, b_x_re);
  }
}

/* End of code generation (log.c) */
