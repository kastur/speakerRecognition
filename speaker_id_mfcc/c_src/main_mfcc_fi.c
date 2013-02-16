#include "codegen/lib/fi_mfcc/fi_mfcc.h"
#include "codegen/lib/fi_mfcc/fi_mfcc_initialize.h"
#include "math.h"
#include "stdio.h"

void loadData(const char* filename, int ndata, int16_T* data) {
  FILE* f = fopen(filename, "r");
  printf("Loading %d values from %s\n\n", ndata, filename);
  int ii;
  for (ii = 0; ii < ndata; ++ii)
    fscanf(f, "%hd", &data[ii]);
  fclose(f);
}


void loadData32(const char* filename, int ndata, int32_T* data) {
  FILE* f = fopen(filename, "r");
  printf("Loading %d values from %s\n\n", ndata, filename);
  int ii;
  int temp;
  for (ii = 0; ii < ndata; ++ii) {
    fscanf(f, "%d", &temp);
    data[ii] = temp;
  }
  fclose(f);
}

int main() {
  int16_T d_frame[128];
  int16_T d_hamming[128];
  int16_T d_mel_filters[1690];
  int32_T d_mel[12];
  int32_T d_mel_expected[12];

  loadData("d_frame.txt", 128, d_frame);
  loadData("d_hamming.txt", 128, d_hamming);
  loadData("d_mel_filters.txt", 1690, d_mel_filters);

  loadData32("d_mel.txt", 12, d_mel_expected);

  int ii;

  printf("d_frame=[");
  for (ii = 0; ii < 128; ++ii) {
    printf("%d ", d_frame[ii]);
  }
  printf("];\n\n");

  printf("d_hamming=[");
  for (ii = 0; ii < 128; ++ii) {
    printf("%d ", d_hamming[ii]);
  }
  printf("];\n\n");

  fi_mfcc_initialize();
  fi_mfcc(d_frame, d_hamming, d_mel_filters, d_mel);

  printf("d_output=[ ...\n");
  int pass = true;
  for (ii = 0; ii < 12; ++ii) {
    printf("%d == %d; ...\n", d_mel[ii], d_mel_expected[ii]);
    if (d_mel[ii] != d_mel_expected[ii]) {
      pass = false;
    }
  }
  printf("];\n\n");

  printf((pass) ? "PASSED!" : "FAILED!");

  return 0;
}
