/*
 * sqrt.c
 *
 * Code generation for function 'sqrt'
 *
 * C source code generated on: Fri Jan 25 00:33:15 2013
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
void b_sqrt(const uint128m_T x[65], int32_T yreturn[65])
{
  int32_T i;
  uint128m_T r56;
  static uint128m_T r57 = { { 0UL, 0UL } };

  uint128m_T r58;
  int32_T ytempPlusLsb;
  int32_T b_yreturn;
  int32_T ytemp;
  int128m_T r59;
  int128m_T r60;
  int64_T q0;
  int64_T q1;
  int64_T qY;
  int64_T b_qY;
  for (i = 0; i < 65; i++) {
    yreturn[i] = 0;
    r56 = x[i];
    r58 = r57;
    if (uMultiWordLe(&r56.chunks[0U], &r58.chunks[0U], 2)) {
      yreturn[i] = 0;
    } else {
      for (ytempPlusLsb = 30; ytempPlusLsb > -1; ytempPlusLsb += -1) {
        b_yreturn = yreturn[i];
        ytemp = yreturn[i] | 1 << ytempPlusLsb;
        sLong2MultiWord((int64_T)ytemp * (int64_T)ytemp, &r59.chunks[0U], 2);
        r56 = x[i];
        uMultiWord2MultiWord(&r56.chunks[0U], 2, &r60.chunks[0U], 2);
        if (sMultiWordLe(&r59.chunks[0U], &r60.chunks[0U], 2)) {
          b_yreturn = ytemp;
        }

        yreturn[i] = b_yreturn;
      }

      if (yreturn[i] < ~(1 << 31)) {
        q0 = (int64_T)yreturn[i] + 1L;
        if (q0 > 2147483647L) {
          q0 = 2147483647L;
        } else {
          if (q0 < -2147483648L) {
            q0 = -2147483648L;
          }
        }

        ytempPlusLsb = (int32_T)q0;
        q0 = (int64_T)ytempPlusLsb * (int64_T)ytempPlusLsb;
        r56 = x[i];
        q1 = uMultiWord2sLongSat(&r56.chunks[0U], 2);
        qY = q0 - q1;
        if ((q0 < 0L) && ((q1 >= 0L) && (qY >= 0L))) {
          qY = MIN_int64_T;
        } else {
          if ((q0 >= 0L) && ((q1 < 0L) && (qY < 0L))) {
            qY = MAX_int64_T;
          }
        }

        r56 = x[i];
        q0 = uMultiWord2sLongSat(&r56.chunks[0U], 2);
        q1 = (int64_T)yreturn[i] * (int64_T)yreturn[i];
        b_qY = q0 - q1;
        if ((q0 < 0L) && ((q1 >= 0L) && (b_qY >= 0L))) {
          b_qY = MIN_int64_T;
        } else {
          if ((q0 >= 0L) && ((q1 < 0L) && (b_qY < 0L))) {
            b_qY = MAX_int64_T;
          }
        }

        if (qY < b_qY) {
          yreturn[i] = ytempPlusLsb;
        }
      }
    }
  }
}

/* End of code generation (sqrt.c) */
