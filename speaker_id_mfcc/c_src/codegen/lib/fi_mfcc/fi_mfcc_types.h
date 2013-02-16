/*
 * fi_mfcc_types.h
 *
 * Code generation for function 'fi_mfcc'
 *
 * C source code generated on: Fri Jan 25 10:28:03 2013
 *
 */

#ifndef __FI_MFCC_TYPES_H__
#define __FI_MFCC_TYPES_H__

/* Type Definitions */
typedef struct
{
    uint32_T chunks[3];
} int96m_T;
typedef struct
{
    int96m_T re;
    int96m_T im;
} cint96m_T;
#ifndef struct_emxArray_creal_T_1x65
#define struct_emxArray_creal_T_1x65
typedef struct emxArray_creal_T_1x65
{
    creal_T data[65];
    int32_T size[2];
} emxArray_creal_T_1x65;
#endif
#ifndef struct_emxArray_int32_T_65
#define struct_emxArray_int32_T_65
typedef struct emxArray_int32_T_65
{
    int32_T data[65];
    int32_T size[1];
} emxArray_int32_T_65;
#endif
#ifndef struct_emxArray_real_T_1x65
#define struct_emxArray_real_T_1x65
typedef struct emxArray_real_T_1x65
{
    real_T data[65];
    int32_T size[2];
} emxArray_real_T_1x65;
#endif
typedef struct
{
    uint32_T chunks[4];
} int128m_T;
typedef struct
{
    uint32_T chunks[2];
} int64m_T;
typedef struct
{
    uint32_T chunks[4];
} uint128m_T;
typedef struct
{
    uint32_T chunks[2];
} uint64m_T;
typedef struct
{
    uint32_T chunks[3];
} uint96m_T;

#endif
/* End of code generation (fi_mfcc_types.h) */
