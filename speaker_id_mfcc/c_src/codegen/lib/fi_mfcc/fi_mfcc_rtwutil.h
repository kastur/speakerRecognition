/*
 * fi_mfcc_rtwutil.h
 *
 * Code generation for function 'fi_mfcc_rtwutil'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

#ifndef __FI_MFCC_RTWUTIL_H__
#define __FI_MFCC_RTWUTIL_H__
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
extern void MultiWordAdd(const uint32_T u1[], const uint32_T u2[], uint32_T y[], int32_T n);
extern void MultiWordSignedWrap(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T y[]);
extern void MultiWordSub(const uint32_T u1[], const uint32_T u2[], uint32_T y[], int32_T n);
extern real_T rt_hypotd_snf(real_T u0, real_T u1);
extern void sMultiWord2MultiWord(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T n);
extern void sMultiWord2sMultiWordSat(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T n);
extern boolean_T sMultiWordGe(const uint32_T u1[], const uint32_T u2[], int32_T n);
extern boolean_T sMultiWordGt(const uint32_T u1[], const uint32_T u2[], int32_T n);
extern boolean_T sMultiWordLe(const uint32_T u1[], const uint32_T u2[], int32_T n);
extern boolean_T sMultiWordLt(const uint32_T u1[], const uint32_T u2[], int32_T n);
extern void sMultiWordMul(const uint32_T u1[], int32_T n1, const uint32_T u2[], int32_T n2, uint32_T y[], int32_T n);
extern void sMultiWordShl(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T y[], int32_T n);
extern void sMultiWordShr(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T y[], int32_T n);
extern void uMultiWord2MultiWord(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T n);
extern void uMultiWord2sMultiWordSat(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T n);
extern int32_T uMultiWordCmp(const uint32_T u1[], const uint32_T u2[], int32_T n);
extern boolean_T uMultiWordLe(const uint32_T u1[], const uint32_T u2[], int32_T n);
#endif
/* End of code generation (fi_mfcc_rtwutil.h) */
