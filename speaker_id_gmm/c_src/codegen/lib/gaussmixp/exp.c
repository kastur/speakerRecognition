/*
 * exp.c
 *
 * Code generation for function 'exp'
 *
 * C source code generated on: Wed Jan 30 22:03:32 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "gaussmixp.h"
#include "exp.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */

/*
 *
 */
void b_exp(real_T x[1503])
{
  int32_T k;
  for (k = 0; k < 1503; k++) {
    x[k] = exp(x[k]);
  }
}

/* End of code generation (exp.c) */
