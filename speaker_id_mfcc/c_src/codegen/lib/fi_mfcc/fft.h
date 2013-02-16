/*
 * fft.h
 *
 * Code generation for function 'fft'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

#ifndef __FFT_H__
#define __FFT_H__
/* Include files */
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "rt_defines.h"
#include "rt_nonfinite.h"

#include "rtwtypes.h"
#include "fi_mfcc_types.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern void b_fft(const real_T x[32], creal_T y[32]);
extern void fft(const real_T x[128], creal_T y[128]);
#endif
/* End of code generation (fft.h) */
