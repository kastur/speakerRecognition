/*
 * sum.c
 *
 * Code generation for function 'sum'
 *
 * C source code generated on: Wed Jan 30 21:55:07 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "gaussmixp.h"
#include "sum.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */

/*
 *
 */
void sum(const real_T x[108], real_T y[9])
{
  int32_T iy;
  int32_T ixstart;
  int32_T j;
  int32_T ix;
  real_T s;
  int32_T k;
  iy = -1;
  ixstart = -1;
  for (j = 0; j < 9; j++) {
    ixstart++;
    ix = ixstart;
    s = x[ixstart];
    for (k = 0; k < 11; k++) {
      ix += 9;
      s += x[ix];
    }

    iy++;
    y[iy] = s;
  }
}

/* End of code generation (sum.c) */
