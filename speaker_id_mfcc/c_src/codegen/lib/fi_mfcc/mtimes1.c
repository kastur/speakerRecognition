/*
 * mtimes1.c
 *
 * Code generation for function 'mtimes1'
 *
 * C source code generated on: Fri Jan 25 10:28:04 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "mtimes1.h"
#include "abs.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
cint96m_T mtimes(const cint32_T a0, const cint32_T b0)
{
  cint96m_T cout;
  uint32_T u2;
  uint32_T u3;
  int64m_T r46;
  int96m_T r47;
  int96m_T r48;
  int96m_T r49;
  int96m_T r50;
  static int96m_T r51 = { { 0U, 0U, 0U } };

  int96m_T r52;
  int96m_T r53;
  static int96m_T r54 = { { 0U, 0U, MAX_uint32_T } };

  static int96m_T r55 = { { MAX_uint32_T, MAX_uint32_T, 0U } };

  int128m_T r56;
  int128m_T r57;
  int96m_T r58;
  int96m_T r59;
  int96m_T r60;
  int96m_T r61;
  int96m_T r62;
  int96m_T r63;
  int96m_T r64;
  u2 = (uint32_T)a0.re;
  u3 = (uint32_T)b0.re;
  sMultiWordMul(&u2, 1, &u3, 1, &r46.chunks[0U], 2);
  sMultiWord2MultiWord(&r46.chunks[0U], 2, &r47.chunks[0U], 3);
  MultiWordSignedWrap(&r47.chunks[0U], 3, 31U, &r48.chunks[0U]);
  u2 = (uint32_T)a0.im;
  u3 = (uint32_T)b0.im;
  sMultiWordMul(&u2, 1, &u3, 1, &r46.chunks[0U], 2);
  sMultiWord2MultiWord(&r46.chunks[0U], 2, &r47.chunks[0U], 3);
  MultiWordSignedWrap(&r47.chunks[0U], 3, 31U, &r49.chunks[0U]);
  MultiWordSub(&r48.chunks[0U], &r49.chunks[0U], &r50.chunks[0U], 3);
  r47 = r51;
  r52 = r51;
  r53 = r51;
  if (sMultiWordLt(&r48.chunks[0U], &r47.chunks[0U], 3) && sMultiWordGe
      (&r49.chunks[0U], &r52.chunks[0U], 3) && sMultiWordGe(&r50.chunks[0U],
       &r53.chunks[0U], 3)) {
    r50 = r54;
  } else {
    r47 = r51;
    r52 = r51;
    r53 = r51;
    if (sMultiWordGe(&r48.chunks[0U], &r47.chunks[0U], 3) && sMultiWordLt
        (&r49.chunks[0U], &r52.chunks[0U], 3) && sMultiWordLt(&r50.chunks[0U],
         &r53.chunks[0U], 3)) {
      r50 = r55;
    }
  }

  sMultiWord2MultiWord(&r50.chunks[0U], 3, &r56.chunks[0U], 4);
  sMultiWordShl(&r56.chunks[0U], 4, 31U, &r57.chunks[0U], 4);
  sMultiWord2sMultiWordSat(&r57.chunks[0U], 4, &r58.chunks[0U], 3);
  sMultiWordShr(&r58.chunks[0U], 3, 31U, &r59.chunks[0U], 3);
  cout.re = r59;
  u2 = (uint32_T)a0.re;
  u3 = (uint32_T)b0.im;
  sMultiWordMul(&u2, 1, &u3, 1, &r46.chunks[0U], 2);
  sMultiWord2MultiWord(&r46.chunks[0U], 2, &r58.chunks[0U], 3);
  MultiWordSignedWrap(&r58.chunks[0U], 3, 31U, &r60.chunks[0U]);
  u2 = (uint32_T)a0.im;
  u3 = (uint32_T)b0.re;
  sMultiWordMul(&u2, 1, &u3, 1, &r46.chunks[0U], 2);
  sMultiWord2MultiWord(&r46.chunks[0U], 2, &r58.chunks[0U], 3);
  MultiWordSignedWrap(&r58.chunks[0U], 3, 31U, &r61.chunks[0U]);
  MultiWordAdd(&r60.chunks[0U], &r61.chunks[0U], &r62.chunks[0U], 3);
  r58 = r51;
  r47 = r51;
  r48 = r51;
  if (sMultiWordLt(&r60.chunks[0U], &r58.chunks[0U], 3) && sMultiWordLt
      (&r61.chunks[0U], &r47.chunks[0U], 3) && sMultiWordGe(&r62.chunks[0U],
       &r48.chunks[0U], 3)) {
    r62 = r54;
  } else {
    r47 = r51;
    r48 = r51;
    r49 = r51;
    if (sMultiWordGt(&r60.chunks[0U], &r47.chunks[0U], 3) && sMultiWordGt
        (&r61.chunks[0U], &r48.chunks[0U], 3) && sMultiWordLe(&r62.chunks[0U],
         &r49.chunks[0U], 3)) {
      r62 = r55;
    }
  }

  sMultiWord2MultiWord(&r62.chunks[0U], 3, &r56.chunks[0U], 4);
  sMultiWordShl(&r56.chunks[0U], 4, 31U, &r57.chunks[0U], 4);
  sMultiWord2sMultiWordSat(&r57.chunks[0U], 4, &r63.chunks[0U], 3);
  sMultiWordShr(&r63.chunks[0U], 3, 31U, &r64.chunks[0U], 3);
  cout.im = r64;
  return cout;
}

/* End of code generation (mtimes1.c) */
