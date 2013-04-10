/*
 * mtimes1.c
 *
 * Code generation for function 'mtimes1'
 *
 * C source code generated on: Fri Jan 25 00:33:15 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "fi_mfcc.h"
#include "mfcc_bare.h"
#include "mtimes1.h"
#include "fi_fft.h"
#include "abs.h"
#include "fi_mfcc_rtwutil.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
cint128m_T mtimes(const cint32_T a0, const cint32_T b0)
{
  cint128m_T cout;
  int128m_T r31;
  int128m_T r32;
  int128m_T r33;
  int128m_T r34;
  static int128m_T r35 = { { 0UL, 0UL } };

  int128m_T r36;
  int128m_T r37;
  static int128m_T r38 = { { 0UL, MAX_uint64_T } };

  static int128m_T r39 = { { MAX_uint64_T, 0UL } };

  int192m_T r40;
  int192m_T r41;
  int128m_T r42;
  int128m_T r43;
  int128m_T r44;
  int128m_T r45;
  int128m_T r46;
  int128m_T r47;
  int128m_T r48;
  sLong2MultiWord((int64_T)a0.re * (int64_T)b0.re, &r31.chunks[0U], 2);
  MultiWordSignedWrap(&r31.chunks[0U], 2, 63U, &r32.chunks[0U]);
  sLong2MultiWord((int64_T)a0.im * (int64_T)b0.im, &r31.chunks[0U], 2);
  MultiWordSignedWrap(&r31.chunks[0U], 2, 63U, &r33.chunks[0U]);
  MultiWordSub(&r32.chunks[0U], &r33.chunks[0U], &r34.chunks[0U], 2);
  r31 = r35;
  r36 = r35;
  r37 = r35;
  if (sMultiWordLt(&r32.chunks[0U], &r31.chunks[0U], 2) && sMultiWordGe
      (&r33.chunks[0U], &r36.chunks[0U], 2) && sMultiWordGe(&r34.chunks[0U],
       &r37.chunks[0U], 2)) {
    r34 = r38;
  } else {
    r31 = r35;
    r36 = r35;
    r37 = r35;
    if (sMultiWordGe(&r32.chunks[0U], &r31.chunks[0U], 2) && sMultiWordLt
        (&r33.chunks[0U], &r36.chunks[0U], 2) && sMultiWordLt(&r34.chunks[0U],
         &r37.chunks[0U], 2)) {
      r34 = r39;
    }
  }

  sMultiWord2MultiWord(&r34.chunks[0U], 2, &r40.chunks[0U], 3);
  sMultiWordShl(&r40.chunks[0U], 3, 63U, &r41.chunks[0U], 3);
  sMultiWord2sMultiWordSat(&r41.chunks[0U], 3, &r42.chunks[0U], 2);
  sMultiWordShr(&r42.chunks[0U], 2, 63U, &r43.chunks[0U], 2);
  cout.re = r43;
  sLong2MultiWord((int64_T)a0.re * (int64_T)b0.im, &r42.chunks[0U], 2);
  MultiWordSignedWrap(&r42.chunks[0U], 2, 63U, &r44.chunks[0U]);
  sLong2MultiWord((int64_T)a0.im * (int64_T)b0.re, &r42.chunks[0U], 2);
  MultiWordSignedWrap(&r42.chunks[0U], 2, 63U, &r45.chunks[0U]);
  MultiWordAdd(&r44.chunks[0U], &r45.chunks[0U], &r46.chunks[0U], 2);
  r42 = r35;
  r31 = r35;
  r32 = r35;
  if (sMultiWordLt(&r44.chunks[0U], &r42.chunks[0U], 2) && sMultiWordLt
      (&r45.chunks[0U], &r31.chunks[0U], 2) && sMultiWordGe(&r46.chunks[0U],
       &r32.chunks[0U], 2)) {
    r46 = r38;
  } else {
    r31 = r35;
    r32 = r35;
    r33 = r35;
    if (sMultiWordGt(&r44.chunks[0U], &r31.chunks[0U], 2) && sMultiWordGt
        (&r45.chunks[0U], &r32.chunks[0U], 2) && sMultiWordLe(&r46.chunks[0U],
         &r33.chunks[0U], 2)) {
      r46 = r39;
    }
  }

  sMultiWord2MultiWord(&r46.chunks[0U], 2, &r40.chunks[0U], 3);
  sMultiWordShl(&r40.chunks[0U], 3, 63U, &r41.chunks[0U], 3);
  sMultiWord2sMultiWordSat(&r41.chunks[0U], 3, &r47.chunks[0U], 2);
  sMultiWordShr(&r47.chunks[0U], 2, 63U, &r48.chunks[0U], 2);
  cout.im = r48;
  return cout;
}

/* End of code generation (mtimes1.c) */
