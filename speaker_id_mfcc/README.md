***Floating-point MFCC in C***

I was able to get MATLAB to generate C code for MFCC.

  - The reference is the MATLAB "voicebox" toolbox `melcepst.m` function.

  - `mfcc_bare.m` is a bare-bones version of `melcepst.m`. Find an example (and testcase) in `example_mfcc_bare.m`

  - Using *Embedded Coder* in MATLAB, _.m_ can be converted to ANSI _.c_ `MFCCProject/MFCC.prj` is an Embedded Coder project that can be opened in MATLAB (assuming the toolbox is installed).

  - I've already generated C code, placed in  `MFCCProject/codegen/lib/fi_mfcc/mfcc_bare.{c,h}`

  - `main_mfcc_bare.c` is a standard ANSI C program with a `main()` method. We can include `mfcc_bare.h` and compile all the sources together using `gcc`. (See the `Makefile`).

  - Summary: Write standard MATLAB, convert to C, call from C program.
  
  - *Caveats* Static parameters like filter coefficients are generated via MATLAB and dumped to a txt files. These are then loaded by the C program. This way we don't have to go through the hassle of converting the parameter-generating programs into C.


***Fixed-point MFCC in C***

  - Same procedure as above, except using the MATLAB `fixed-point toolbox` to help with the fixed-point computations.

  - Generate ANSI C code again. You can find the MATLAB code in `fi_mfcc.m` and an example in `example_fi_mfcc.m`. The generated C code in `MFCCProject/codegen/lib/fi_mfcc/fi_mfcc.{h,c}` and an example using that C code in `MFCCProject/main_mfcc.c`. See the `Makefile` to see how it's all compiled.

  - *NOTE* Right now this is broken, half-way there implementation. However, the fixed-point FFT _is_ working. Instead of `fi_mfcc` in the statement above, substitute by `fi_fft`.
