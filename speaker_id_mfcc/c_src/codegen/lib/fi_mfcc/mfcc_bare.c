/*
 * mfcc_bare.c
 *
 * Code generation for function 'mfcc_bare'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "log.h"
#include "sum.h"
#include "fft.h"
#include "abs1.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
void mfcc_bare(const real_T samples_in_window[128], const real_T hamming_coeff
               [128], const real_T mel_filterbank[2016], real_T fftA, real_T
               fftB, const creal_T dct_coeff[32], creal_T mel[13])
{
  real_T b_samples_in_window[128];
  int32_T i0;
  creal_T samples_in_freq[128];
  int32_T i1;
  int32_T i2;
  int32_T i3;
  int32_T ar;
  int32_T ib;
  creal_T samples_in_freq_data[65];
  int32_T tmp_data[65];
  int32_T ia;
  int32_T loop_ub;
  int32_T samples_in_freq_size[2];
  int32_T tmp_size[2];
  real_T b_tmp_data[65];
  real_T b_data[65];
  real_T melfilter_resps[32];
  real_T b_melfilter_resps[32];
  creal_T dcv0[32];
  int32_T c_tmp_data[65];
  int32_T b_samples_in_freq_size[2];
  creal_T dc0;

  /*  initialization */
  /*  8kHz sampling frequency. */
  /*  128 (size of windows). */
  /*  64 step size for subsequent windows. */
  /*  26 (# of mel frequency pass band filters). */
  /*  overrride this to power of 2. */
  /*  # 12 (# of cepstral coefficients (output features)) */
  /*  compute features for one input window */
  for (i0 = 0; i0 < 128; i0++) {
    b_samples_in_window[i0] = samples_in_window[i0] * hamming_coeff[i0];
  }

  fft(b_samples_in_window, samples_in_freq);
  if (fftA > fftB) {
    i0 = 1;
    i1 = 0;
  } else {
    i0 = (int32_T)fftA;
    i1 = (int32_T)fftB;
  }

  if (fftA > fftB) {
    i2 = 1;
    i3 = 0;
  } else {
    i2 = (int32_T)fftA;
    i3 = (int32_T)fftB;
  }

  if (fftA > fftB) {
    ar = 1;
    ib = 0;
  } else {
    ar = (int32_T)fftA;
    ib = (int32_T)fftB;
  }

  ia = (ib - ar) + 1;
  loop_ub = ib - ar;
  for (ib = 0; ib <= loop_ub; ib++) {
    tmp_data[ib] = ar + ib;
  }

  samples_in_freq_size[0] = 1;
  samples_in_freq_size[1] = ia;
  loop_ub = ia - 1;
  for (ar = 0; ar <= loop_ub; ar++) {
    samples_in_freq_data[ar] = samples_in_freq[tmp_data[ar] - 1];
  }

  d_abs(samples_in_freq_data, samples_in_freq_size, b_tmp_data, tmp_size);
  loop_ub = tmp_size[1] - 1;
  for (ar = 0; ar <= loop_ub; ar++) {
    b_data[ar] = b_tmp_data[ar];
  }

  if (tmp_size[1] == 1) {
    for (ar = 0; ar < 32; ar++) {
      melfilter_resps[ar] = 0.0;
      for (ib = 0; ib < 63; ib++) {
        melfilter_resps[ar] += mel_filterbank[ar + (ib << 5)] * b_data[ib];
      }
    }
  } else {
    memset(&melfilter_resps[0], 0, sizeof(real_T) << 5);
    if (63 == tmp_size[1]) {
      for (ar = 0; ar < 32; ar++) {
        melfilter_resps[ar] = 0.0;
        for (ib = 0; ib < 63; ib++) {
          melfilter_resps[ar] += mel_filterbank[ar + (ib << 5)] * b_data[ib];
        }
      }
    } else {
      memset(&melfilter_resps[0], 0, sizeof(real_T) << 5);
      ar = -1;
      for (ib = 0; ib < 63; ib++) {
        if (b_data[ib] != 0.0) {
          ia = ar;
          for (loop_ub = 0; loop_ub < 32; loop_ub++) {
            ia++;
            melfilter_resps[loop_ub] += b_data[ib] * mel_filterbank[ia];
          }
        }

        ar += 32;
      }
    }
  }

  b_log(melfilter_resps);

  /*  Compute DCT */
  for (ar = 0; ar < 16; ar++) {
    b_melfilter_resps[ar] = melfilter_resps[ar << 1];
  }

  for (ar = 0; ar < 16; ar++) {
    b_melfilter_resps[ar + 16] = melfilter_resps[31 + -2 * ar];
  }

  b_fft(b_melfilter_resps, dcv0);
  for (ar = 0; ar < 32; ar++) {
    melfilter_resps[ar] = dcv0[ar].re * dct_coeff[ar].re - dcv0[ar].im *
      dct_coeff[ar].im;
  }

  ia = (i1 - i0) + 1;
  loop_ub = i1 - i0;
  for (i1 = 0; i1 <= loop_ub; i1++) {
    tmp_data[i1] = i0 + i1;
  }

  loop_ub = i3 - i2;
  for (i0 = 0; i0 <= loop_ub; i0++) {
    c_tmp_data[i0] = i2 + i0;
  }

  b_samples_in_freq_size[0] = 1;
  b_samples_in_freq_size[1] = ia;
  loop_ub = ia - 1;
  for (i0 = 0; i0 <= loop_ub; i0++) {
    samples_in_freq_data[i0].re = samples_in_freq[tmp_data[i0] - 1].re *
      samples_in_freq[c_tmp_data[i0] - 1].re - samples_in_freq[tmp_data[i0] - 1]
      .im * -samples_in_freq[c_tmp_data[i0] - 1].im;
    samples_in_freq_data[i0].im = samples_in_freq[tmp_data[i0] - 1].re *
      -samples_in_freq[c_tmp_data[i0] - 1].im + samples_in_freq[tmp_data[i0] - 1]
      .im * samples_in_freq[c_tmp_data[i0] - 1].re;
  }

  dc0 = sum(samples_in_freq_data, b_samples_in_freq_size);
  c_log(&dc0);
  for (i0 = 0; i0 < 32; i0++) {
    b_melfilter_resps[i0] = melfilter_resps[i0] / 8.0;
  }

  mel[0] = dc0;
  for (i0 = 0; i0 < 12; i0++) {
    mel[i0 + 1].re = b_melfilter_resps[i0 + 1];
    mel[i0 + 1].im = 0.0;
  }
}

/* End of code generation (mfcc_bare.c) */
