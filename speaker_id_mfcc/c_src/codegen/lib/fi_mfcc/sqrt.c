/*
 * sqrt.c
 *
 * Code generation for function 'sqrt'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "sqrt.h"
#include "abs.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
void b_sqrt(const uint96m_T x[65], int32_T yreturn[65])
{
  int32_T i;
  uint96m_T r74;
  static uint96m_T r75 = { { 0U, 0U, 0U } };

  uint96m_T r76;
  int32_T b_i;
  int32_T ytempPlusLsb;
  int32_T ytemp;
  uint32_T u6;
  uint32_T u7;
  int64m_T r77;
  int96m_T r78;
  int96m_T r79;
  int64m_T r80;
  int64m_T r81;
  int64m_T r82;
  static int64m_T r83 = { { 0U, 0U } };

  int64m_T r84;
  int64m_T r85;
  int64m_T r86;
  static int64m_T r87 = { { 0U, 2147483648U } };

  static int64m_T r88 = { { MAX_uint32_T, 2147483647U } };

  int64m_T r89;
  int64m_T r90;
  int64m_T r91;
  for (i = 0; i < 65; i++) {
    yreturn[i] = 0;
    r74 = x[i];
    r76 = r75;
    if (uMultiWordLe(&r74.chunks[0U], &r76.chunks[0U], 3)) {
      yreturn[i] = 0;
    } else {
      for (b_i = 30; b_i > -1; b_i += -1) {
        ytempPlusLsb = yreturn[i];
        ytemp = yreturn[i] | 1 << b_i;
        u6 = (uint32_T)ytemp;
        u7 = (uint32_T)ytemp;
        sMultiWordMul(&u6, 1, &u7, 1, &r77.chunks[0U], 2);
        sMultiWord2MultiWord(&r77.chunks[0U], 2, &r78.chunks[0U], 3);
        r74 = x[i];
        uMultiWord2MultiWord(&r74.chunks[0U], 3, &r79.chunks[0U], 3);
        if (sMultiWordLe(&r78.chunks[0U], &r79.chunks[0U], 3)) {
          ytempPlusLsb = ytemp;
        }

        yreturn[i] = ytempPlusLsb;
      }

      if (yreturn[i] < ~(1 << 31)) {
        b_i = yreturn[i];
        ytempPlusLsb = b_i + 1;
        if ((b_i > 0) && (ytempPlusLsb <= 0)) {
          ytempPlusLsb = MAX_int32_T;
        }

        r74 = x[i];
        uMultiWord2sMultiWordSat(&r74.chunks[0U], 3, &r80.chunks[0U], 2);
        u6 = (uint32_T)yreturn[i];
        u7 = (uint32_T)yreturn[i];
        sMultiWordMul(&u6, 1, &u7, 1, &r81.chunks[0U], 2);
        MultiWordSub(&r80.chunks[0U], &r81.chunks[0U], &r82.chunks[0U], 2);
        r84 = r83;
        r85 = r83;
        r86 = r83;
        if (sMultiWordLt(&r80.chunks[0U], &r84.chunks[0U], 2) && sMultiWordGe
            (&r81.chunks[0U], &r85.chunks[0U], 2) && sMultiWordGe(&r82.chunks[0U],
             &r86.chunks[0U], 2)) {
          r82 = r87;
        } else {
          r84 = r83;
          r85 = r83;
          r86 = r83;
          if (sMultiWordGe(&r80.chunks[0U], &r84.chunks[0U], 2) && sMultiWordLt(
               &r81.chunks[0U], &r85.chunks[0U], 2) && sMultiWordLt(&r82.chunks
               [0U], &r86.chunks[0U], 2)) {
            r82 = r88;
          }
        }

        u6 = (uint32_T)ytempPlusLsb;
        u7 = (uint32_T)ytempPlusLsb;
        sMultiWordMul(&u6, 1, &u7, 1, &r89.chunks[0U], 2);
        r74 = x[i];
        uMultiWord2sMultiWordSat(&r74.chunks[0U], 3, &r90.chunks[0U], 2);
        MultiWordSub(&r89.chunks[0U], &r90.chunks[0U], &r91.chunks[0U], 2);
        r84 = r83;
        r85 = r83;
        r86 = r83;
        if (sMultiWordLt(&r89.chunks[0U], &r84.chunks[0U], 2) && sMultiWordGe
            (&r90.chunks[0U], &r85.chunks[0U], 2) && sMultiWordGe(&r91.chunks[0U],
             &r86.chunks[0U], 2)) {
          r91 = r87;
        } else {
          r84 = r83;
          r85 = r83;
          r86 = r83;
          if (sMultiWordGe(&r89.chunks[0U], &r84.chunks[0U], 2) && sMultiWordLt(
               &r90.chunks[0U], &r85.chunks[0U], 2) && sMultiWordLt(&r91.chunks
               [0U], &r86.chunks[0U], 2)) {
            r91 = r88;
          }
        }

        if (sMultiWordLt(&r91.chunks[0U], &r82.chunks[0U], 2)) {
          yreturn[i] = ytempPlusLsb;
        }
      }
    }
  }
}

/* End of code generation (sqrt.c) */
