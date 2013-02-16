#include "codegen/lib/fi_fft/fi_fft.h"
#include "codegen/lib/fi_fft/fi_fft_initialize.h"
#include "math.h"
#include "stdio.h"

int main() {
  int32_T input[128];
  cint32_T output[128];

  int ii;

  for (ii = 0; ii < 128; ++ii) {
    double tt = (1/127.0) * ii;
    input[ii] = sin(20.0 * 2 * 3.14 * tt) * (1 << 24);
  }

  printf("input=[");
  for (ii = 0; ii < 128; ++ii) {
    printf("%d \n", input[ii]);
  }
  printf("];");

  fi_fft_initialize();
  fi_fft(input, output);

  printf("output=[");
  for (ii = 0; ii < 128; ++ii) {
    printf("%d %d;\n", output[ii].re, output[ii].im);
  }
  printf("];");
  return 0;
}
