#include "codegen/lib/fi_mfcc/mfcc_bare.h"
#include "math.h"
#include "stdio.h"

void loadReal(const char* filename, int ndata, real_T* data) {
  FILE* f = fopen(filename, "r");
  printf("Loading %d values from %s\n\n", ndata, filename);
  int ii;
  for (ii = 0; ii < ndata; ++ii)
    fscanf(f, "%lf", &data[ii]);
  fclose(f);
}

void loadComplexReal(const char* filename, int ndata, creal_T* data) {
  FILE* f = fopen(filename, "r");
  printf("Loading %d values from %s\n\n", ndata, filename);
  int ii;
  for (ii = 0; ii < ndata; ++ii) {
    fscanf(f, "%lf", &(data[ii].re));
    fscanf(f, "%lf", &(data[ii].im));
  }
  fclose(f);
}

int main() {
  real_T d_frame[128];
  real_T d_hamming[128];
  real_T d_mel_filters[2016];
  creal_T d_dct_coeff[32];
  creal_T d_mel[13];
  real_T d_mel_expected[13];

  real_T fftA = 2.0;
  real_T fftB = 64.0;

  loadReal("real_frame.txt", 128, d_frame);
  loadReal("real_hamming_coeff.txt", 128, d_hamming);
  loadReal("real_mel_filterbank.txt", 2016, d_mel_filters);

  loadComplexReal("creal_dct_coeff.txt", 32, d_dct_coeff);

  loadReal("real_mel.txt", 13, d_mel_expected);

  int ii;

  printf("d_frame=[");
  for (ii = 0; ii < 128; ++ii) {
    printf("%lf ", d_frame[ii]);
  }
  printf("];\n\n");

  printf("d_hamming=[");
  for (ii = 0; ii < 128; ++ii) {
    printf("%lf ", d_hamming[ii]);
  }
  printf("];\n\n");

  int kk = 0;
  for (kk = 0; kk < 10; kk++){
  for (ii = 0; ii < 167; ++ii) {
    mfcc_bare(d_frame, d_hamming, d_mel_filters, fftA, fftB, d_dct_coeff, d_mel);
  }
  }

  printf("d_mel=[ ...\n");
  int pass = true;
  for (ii = 0; ii < 13; ++ii) {
    printf("%lf == %lf; ...\n", d_mel[ii].re, d_mel_expected[ii]);
    if (fabs(d_mel[ii].re - d_mel_expected[ii]) < 1e-10) {
      pass = false;
    }
  }
  printf("];\n\n");

  printf((pass) ? "PASSED!" : "FAILED!");

  return 0;
}
