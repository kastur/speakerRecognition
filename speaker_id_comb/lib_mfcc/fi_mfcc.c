/*
 * fi_mfcc.c
 *
 * Code generation for function 'fi_mfcc'
 *
 * C source code generated on: Fri Jan 25 00:33:15 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "abs.h"
#include "fi_fft.h"
#include "power1.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static real_T sMultiWord2Double(const uint64_T u1[], int32_T n1, int32_T e1);

/* Function Definitions */
static real_T sMultiWord2Double(const uint64_T u1[], int32_T n1, int32_T e1)
{
  real_T y;
  int32_T b_exp;
  uint64_T cb;
  int32_T i;
  uint64_T u1i;
  y = 0.0;
  b_exp = e1;
  if ((u1[n1 - 1] & 9223372036854775808UL) != 0UL) {
    cb = 1UL;
    for (i = 0; i <= n1 - 1; i++) {
      u1i = ~u1[i];
      cb += u1i;
      y -= ldexp((real_T)cb, b_exp);
      cb = cb < u1i ? 1UL : 0UL;
      b_exp += 64;
    }
  } else {
    for (i = 0; i <= n1 - 1; i++) {
      y += ldexp((real_T)u1[i], b_exp);
      b_exp += 64;
    }
  }

  return y;
}

void fi_mfcc(const int16_T d_frame[128], const int16_T d_hamming[128], const
             int16_T d_mel_filters[1690], int32_T d_mel[12])
{
  int32_T b_d_frame[128];
  int32_T i;
  int32_T k;
  cint32_T d_fft[128];
  int32_T b_d_fft[65];
  int64_T c[26];
  int64_T i0;
  int128m_T rv0[26];
  int32_T d_log_resp[32];
  real_T u;
  real_T v;
  cint32_T b_d_mel[32];
  for (i = 0; i < 128; i++) {
    k = d_frame[i] * d_hamming[i];
    b_d_frame[i] = (k >> 5) + ((k & 16) != 0);
  }

  fi_fft(b_d_frame, d_fft);
  b_abs(*(cint32_T (*)[65])&d_fft[0], b_d_fft);
  for (i = 0; i < 26; i++) {
    c[i] = 0L;
    for (k = 0; k < 65; k++) {
      i0 = (int64_T)d_mel_filters[i + 26 * k] * (int64_T)b_d_fft[k];
      i0 = (i0 & 140737488355328L) != 0L ? i0 | -140737488355328L : i0 &
        140737488355327L;
      i0 = c[i] + ((i0 & 18014398509481984L) != 0L ? i0 | -18014398509481984L :
                   i0 & 18014398509481983L);
      if (i0 > 18014398509481983L) {
        i0 = 18014398509481983L;
      } else {
        if (i0 < -18014398509481984L) {
          i0 = -18014398509481984L;
        }
      }

      c[i] = i0;
    }
  }

  power(c, rv0);
  for (i = 0; i < 26; i++) {
    u = log(sMultiWord2Double(&rv0[i].chunks[0U], 2, 0) * 1.3234889800848443E-23)
      * 1.6777216E+7;
    v = fabs(u);
    if (v < 4.503599627370496E+15) {
      if (v >= 0.5) {
        u = floor(u + 0.5);
      } else {
        u *= 0.0;
      }
    }

    if (u < 2.147483648E+9) {
      if (u >= -2.147483648E+9) {
        k = (int32_T)u;
      } else {
        k = MIN_int32_T;
      }
    } else if (u >= 2.147483648E+9) {
      k = MAX_int32_T;
    } else {
      k = 0;
    }

    d_log_resp[i] = k;
  }

  d_log_resp[26] = 0;
  d_log_resp[27] = 0;
  d_log_resp[28] = 0;
  d_log_resp[29] = 0;
  d_log_resp[30] = 0;
  d_log_resp[31] = 0;
  b_fi_fft(d_log_resp, b_d_mel);
  c_abs(b_d_mel, d_log_resp);
  for (i = 0; i < 12; i++) {
    d_mel[i] = d_log_resp[i + 1];
  }
}

/* End of code generation (fi_mfcc.c) */
