/*
 * fi_mfcc.h
 *
 * Code generation for function 'fi_mfcc'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

#ifndef __FI_MFCC_H__
#define __FI_MFCC_H__
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
extern void fi_mfcc(const int16_T d_frame[128], const int16_T d_hamming[128], const int16_T d_mel_filters[1690], int32_T d_mel[12]);
#endif
/* End of code generation (fi_mfcc.h) */
