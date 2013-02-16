/*
 * gaussmixp_initialize.c
 *
 * Code generation for function 'gaussmixp_initialize'
 *
 * C source code generated on: Wed Jan 30 21:55:07 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "gaussmixp.h"
#include "gaussmixp_initialize.h"
#include "gaussmixp_data.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
void gaussmixp_initialize(void)
{
  rt_InitInfAndNaN(8U);
  PP_not_empty = FALSE;
}

/* End of code generation (gaussmixp_initialize.c) */
