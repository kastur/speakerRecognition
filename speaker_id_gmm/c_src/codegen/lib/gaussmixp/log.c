/*
 * log.c
 *
 * Code generation for function 'log'
 *
 * C source code generated on: Wed Jan 30 22:03:32 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "gaussmixp.h"
#include "log.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */

/*
 *
 */
void b_log(real_T x[9])
{
  int32_T k;
  for (k = 0; k < 9; k++) {
    x[k] = log(x[k]);
  }
}

/*
 *
 */
void c_log(real_T x[108])
{
  int32_T k;
  for (k = 0; k < 108; k++) {
    x[k] = log(x[k]);
  }
}

/*
 *
 */
void d_log(real_T x[167])
{
  int32_T k;
  for (k = 0; k < 167; k++) {
    x[k] = log(x[k]);
  }
}

/* End of code generation (log.c) */
