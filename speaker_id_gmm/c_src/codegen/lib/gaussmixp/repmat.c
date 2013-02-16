/*
 * repmat.c
 *
 * Code generation for function 'repmat'
 *
 * C source code generated on: Wed Jan 30 22:03:32 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "gaussmixp.h"
#include "repmat.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */

/*
 *
 */
void b_repmat(const real_T a[9], real_T b[1503])
{
  int32_T ib;
  int32_T jtilecol;
  int32_T iacol;
  int32_T jcol;
  ib = 0;
  for (jtilecol = 0; jtilecol < 167; jtilecol++) {
    iacol = 0;
    for (jcol = 0; jcol < 9; jcol++) {
      b[ib] = a[iacol];
      ib++;
      iacol++;
    }
  }
}

/*
 *
 */
void repmat(const real_T a[167], real_T b[1503])
{
  int32_T ia;
  int32_T ib;
  int32_T iacol;
  int32_T jcol;
  int32_T itilerow;
  ia = 1;
  ib = 0;
  iacol = 1;
  for (jcol = 0; jcol < 167; jcol++) {
    for (itilerow = 0; itilerow < 9; itilerow++) {
      b[ib] = a[iacol - 1];
      ia = iacol + 1;
      ib++;
    }

    iacol = ia;
  }
}

/* End of code generation (repmat.c) */
