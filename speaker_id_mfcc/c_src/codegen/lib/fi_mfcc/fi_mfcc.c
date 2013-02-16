/*
 * fi_mfcc.c
 *
 * Code generation for function 'fi_mfcc'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "abs.h"
#include "fi_fft.h"
#include "power1.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static real_T sMultiWord2Double(const uint32_T u1[], int32_T n1, int32_T e1);

/* Function Definitions */
static real_T sMultiWord2Double(const uint32_T u1[], int32_T n1, int32_T e1)
{
  real_T y;
  int32_T b_exp;
  int32_T cb;
  int32_T i;
  uint32_T u1i;
  uint32_T yi;
  y = 0.0;
  b_exp = e1;
  if ((u1[n1 - 1] & 2147483648U) != 0U) {
    cb = 1;
    for (i = 0; i <= n1 - 1; i++) {
      u1i = ~u1[i];
      yi = u1i + (uint32_T)cb;
      y -= ldexp((real_T)yi, b_exp);
      cb = (int32_T)(yi < u1i ? 1U : 0U);
      b_exp += 32;
    }
  } else {
    for (i = 0; i <= n1 - 1; i++) {
      y += ldexp((real_T)u1[i], b_exp);
      b_exp += 32;
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
  static int64m_T r0 = { { 0U, 0U } };

  int64m_T c[26];
  int64m_T r1;
  uint32_T u0;
  uint32_T u1;
  int64m_T r2;
  int64m_T r3;
  int64m_T r4;
  int64m_T r5;
  int64m_T r6;
  static int64m_T r7 = { { 0U, 4290772992U } };

  int64m_T r8;
  static int64m_T r9 = { { MAX_uint32_T, 4194303U } };

  int96m_T r10;
  int96m_T r11;
  int64m_T r12;
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
    c[i] = r0;
    for (k = 0; k < 65; k++) {
      r1 = c[i];
      u0 = (uint32_T)d_mel_filters[i + 26 * k];
      u1 = (uint32_T)b_d_fft[k];
      sMultiWordMul(&u0, 1, &u1, 1, &r2.chunks[0U], 2);
      MultiWordSignedWrap(&r2.chunks[0U], 2, 9U, &r3.chunks[0U]);
      MultiWordAdd(&r1.chunks[0U], &r3.chunks[0U], &r4.chunks[0U], 2);
      r2 = r0;
      r5 = r0;
      r6 = r0;
      if (sMultiWordLt(&r1.chunks[0U], &r2.chunks[0U], 2) && sMultiWordLt
          (&r3.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGe(&r4.chunks[0U],
           &r6.chunks[0U], 2)) {
        r4 = r7;
      } else {
        r5 = r0;
        r6 = r0;
        r8 = r0;
        if (sMultiWordGt(&r1.chunks[0U], &r5.chunks[0U], 2) && sMultiWordGt
            (&r3.chunks[0U], &r6.chunks[0U], 2) && sMultiWordLe(&r4.chunks[0U],
             &r8.chunks[0U], 2)) {
          r4 = r9;
        }
      }

      sMultiWord2MultiWord(&r4.chunks[0U], 2, &r10.chunks[0U], 3);
      sMultiWordShl(&r10.chunks[0U], 3, 9U, &r11.chunks[0U], 3);
      sMultiWord2sMultiWordSat(&r11.chunks[0U], 3, &r12.chunks[0U], 2);
      sMultiWordShr(&r12.chunks[0U], 2, 9U, &c[i].chunks[0U], 2);
    }
  }

  power(c, rv0);
  for (i = 0; i < 26; i++) {
    u = log(sMultiWord2Double(&rv0[i].chunks[0U], 4, 0) * 1.3234889800848443E-23)
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
