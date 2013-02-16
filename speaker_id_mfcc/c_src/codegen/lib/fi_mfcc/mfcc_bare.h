/*
 * mfcc_bare.h
 *
 * Code generation for function 'mfcc_bare'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

#ifndef __MFCC_BARE_H__
#define __MFCC_BARE_H__
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
extern void mfcc_bare(const real_T samples_in_window[128], const real_T hamming_coeff[128], const real_T mel_filterbank[2016], real_T fftA, real_T fftB, const creal_T dct_coeff[32], creal_T mel[13]);
#endif
/* End of code generation (mfcc_bare.h) */
