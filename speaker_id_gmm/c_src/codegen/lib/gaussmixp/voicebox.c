/*
 * voicebox.c
 *
 * Code generation for function 'voicebox'
 *
 * C source code generated on: Wed Jan 30 22:03:32 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "gaussmixp.h"
#include "voicebox.h"
#include "gaussmixp_data.h"

/* Type Definitions */
typedef struct {
  char_T dir_temp[7];
  char_T dir_data[18];
  char_T shorten[18];
  char_T flac[15];
  char_T sfsbin[28];
  char_T sfssuffix[4];
  real_T memsize;
  real_T dy_cpfrac;
  real_T dy_cproj;
  real_T dy_cspurt;
  real_T dy_dopsp;
  real_T dy_ewdly;
  real_T dy_ewlen;
  real_T dy_ewtaper;
  real_T dy_fwlen;
  real_T dy_fxmax;
  real_T dy_fxmin;
  real_T dy_fxminf;
  real_T dy_gwlen;
  real_T dy_lpcdur;
  real_T dy_lpcn;
  real_T dy_lpcnf;
  real_T dy_lpcstep;
  real_T dy_nbest;
  real_T dy_preemph;
  real_T dy_spitch;
  real_T dy_wener;
  real_T dy_wpitch;
  real_T dy_wslope;
  real_T dy_wxcorr;
  real_T dy_xwlen;
  real_T rapt_f0min;
  real_T rapt_f0max;
  real_T rapt_tframe;
  real_T rapt_tlpw;
  real_T rapt_tcorw;
  real_T rapt_candtr;
  real_T rapt_lagwt;
  real_T rapt_freqwt;
  real_T rapt_vtranc;
  real_T rapt_vtrac;
  real_T rapt_vtrsc;
  real_T rapt_vobias;
  real_T rapt_doublec;
  real_T rapt_absnoise;
  real_T rapt_relnoise;
  real_T rapt_signoise;
  real_T rapt_ncands;
  real_T rapt_trms;
  real_T rapt_dtrms;
  real_T rapt_preemph;
  real_T rapt_nfullag;
} struct_T;

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */
static struct_T PP;

/* Function Declarations */

/* Function Definitions */

/*
 * function y=voicebox(f,v)
 * VOICEBOX  set global parameters for Voicebox functions Y=(FIELD,VAL)
 *
 *   Inputs:  F   is a field name
 *            V   is a new value for the field
 *
 *  Outputs:  Y   is set equal to the structure of parameters if the
 *                f and v inputs are both present or both absent. If only
 *                input f is specified, then y is set to the value of the
 *                corresponding field or null if it doesn't exist.
 *
 *  This routine contains default values for constants that are used by
 *  other functions in the VOICEBOX toolbox. Values in the first section below,
 *  entitled "System-dependent directory paths" should be set as follows:
 *     PP.dir_temp     directory for storing temporary files
 *     PP.dir_data     default directory to preappend to speech data file names
 *                     when the "d" option is specified in READWAV etc.
 *     PP.shorten      location of SHORTEN executable. SHORTEN is a proprietary file compression
 *                     algorithm that is used for some SPHERE-format files. READSPH
 *                     will try to call an external decoder if it is asked to
 *                     read such a compressed file.
 *     PP.sfsbin       location of Speech Filing Sysytem binaries. If the "c" option
 *                     is given to READSFS, it will try to create a requested item
 *                     if it is not present in the SFS file. This parameter tells it
 *                     where to find the SFS executables.
 *     PP.sfssuffix    suffix for Speech Filing Sysytem binaries. READSFS uses this paremeter
 *                     to create the name of an SFS executable (see PP.sfsbin above).
 *  Other values defined in this routine are the defaults for specific algorithm constants.
 *  If you want to change these, please refer to the individual routines for a fuller description.
 */
real_T voicebox(void)
{
  int32_T i0;
  static const char_T cv0[7] = { 'F', ':', '\\', 'T', 'E', 'M', 'P' };

  static const char_T cv1[18] = { 'E', ':', '\\', 'd', 'm', 'b', '\\', 'd', 'a',
    't', 'a', '\\', 's', 'p', 'e', 'e', 'c', 'h' };

  static const char_T cv2[18] = { 'C', ':', '\\', 'b', 'i', 'n', '\\', 's', 'h',
    'o', 'r', 't', 'e', 'n', '.', 'e', 'x', 'e' };

  static const char_T cv3[15] = { 'C', ':', '\\', 'b', 'i', 'n', '\\', 'f', 'l',
    'a', 'c', '.', 'e', 'x', 'e' };

  static const char_T cv4[28] = { 'F', ':', '\\', 'P', 'r', 'o', 'g', 'r', 'a',
    'm', ' ', 'F', 'i', 'l', 'e', 's', '\\', 'S', 'F', 'S', '\\', 'P', 'r', 'o',
    'g', 'r', 'a', 'm' };

  static const char_T cv5[4] = { '.', 'e', 'x', 'e' };

  /*  Bugs/Suggestions */
  /*     (1)  Could allow a * at the end of F to act as a wildcard and return/print a part structure */
  /*       Copyright (C) Mike Brookes 2003 */
  /*       Version: $Id: voicebox.m,v 1.17 2011/07/28 06:48:45 dmb Exp $ */
  /*  */
  /*    VOICEBOX is a MATLAB toolbox for speech processing. */
  /*    Home page: http://www.ee.ic.ac.uk/hp/staff/dmb/voicebox/voicebox.html */
  /*  */
  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  /*    This program is free software; you can redistribute it and/or modify */
  /*    it under the terms of the GNU General Public License as published by */
  /*    the Free Software Foundation; either version 2 of the License, or */
  /*    (at your option) any later version. */
  /*  */
  /*    This program is distributed in the hope that it will be useful, */
  /*    but WITHOUT ANY WARRANTY; without even the implied warranty of */
  /*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the */
  /*    GNU General Public License for more details. */
  /*  */
  /*    You can obtain a copy of the GNU General Public License from */
  /*    http://www.gnu.org/copyleft/gpl.html or by writing to */
  /*    Free Software Foundation, Inc.,675 Mass Ave, Cambridge, MA 02139, USA. */
  /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  /* 'voicebox:57' if isempty(PP) */
  if (!PP_not_empty) {
    /*  System-dependent directory paths and constants */
    /* 'voicebox:61' PP.dir_temp='F:\TEMP'; */
    for (i0 = 0; i0 < 7; i0++) {
      PP.dir_temp[i0] = cv0[i0];
    }

    PP_not_empty = TRUE;

    /*  directory for storing temporary files */
    /* 'voicebox:62' PP.dir_data='E:\dmb\data\speech'; */
    for (i0 = 0; i0 < 18; i0++) {
      PP.dir_data[i0] = cv1[i0];

      /*  default directory to preappend to speech data file names */
      /* 'voicebox:63' PP.shorten='C:\bin\shorten.exe'; */
      PP.shorten[i0] = cv2[i0];
    }

    /*  location of shorten executable */
    /* 'voicebox:64' PP.flac='C:\bin\flac.exe'; */
    for (i0 = 0; i0 < 15; i0++) {
      PP.flac[i0] = cv3[i0];
    }

    /*  location of flac executable */
    /* 'voicebox:65' PP.sfsbin='F:\Program Files\SFS\Program'; */
    for (i0 = 0; i0 < 28; i0++) {
      PP.sfsbin[i0] = cv4[i0];
    }

    /*  location of Speech Filing Sysytem binaries */
    /* 'voicebox:66' PP.sfssuffix='.exe'; */
    for (i0 = 0; i0 < 4; i0++) {
      PP.sfssuffix[i0] = cv5[i0];
    }

    /*  suffix for Speech Filing Sysytem binaries */
    /* 'voicebox:67' PP.memsize=50e6; */
    PP.memsize = 5.0E+7;

    /*  Maximum amount of temporary memory to use (Bytes) */
    /*  DYPSA glottal closure identifier */
    /* 'voicebox:71' PP.dy_cpfrac=0.3; */
    PP.dy_cpfrac = 0.3;

    /*  presumed closed phase fraction of larynx cycle */
    /* 'voicebox:72' PP.dy_cproj=0.2; */
    PP.dy_cproj = 0.2;

    /*  cost of projected candidate */
    /* 'voicebox:73' PP.dy_cspurt=-0.45; */
    PP.dy_cspurt = -0.45;

    /*  cost of a talkspurt */
    /* 'voicebox:74' PP.dy_dopsp=1; */
    PP.dy_dopsp = 1.0;

    /*  Use phase slope projection (1) or not (0)? */
    /* 'voicebox:75' PP.dy_ewdly=0.0008; */
    PP.dy_ewdly = 0.0008;

    /*  window delay for energy cost function term [~ energy peak delay from closure] (sec) */
    /* 'voicebox:76' PP.dy_ewlen=0.003; */
    PP.dy_ewlen = 0.003;

    /*  window length for energy cost function term (sec) */
    /* 'voicebox:77' PP.dy_ewtaper=0.001; */
    PP.dy_ewtaper = 0.001;

    /*  taper length for energy cost function window (sec) */
    /* 'voicebox:78' PP.dy_fwlen=0.00045; */
    PP.dy_fwlen = 0.00045;

    /*  window length used to smooth group delay (sec) */
    /* 'voicebox:79' PP.dy_fxmax=500; */
    PP.dy_fxmax = 500.0;

    /*  max larynx frequency (Hz) */
    /* 'voicebox:80' PP.dy_fxmin=50; */
    PP.dy_fxmin = 50.0;

    /*  min larynx frequency (Hz) */
    /* 'voicebox:81' PP.dy_fxminf=60; */
    PP.dy_fxminf = 60.0;

    /*  min larynx frequency (Hz) [used for Frobenius norm only] */
    /* 'voicebox:82' PP.dy_gwlen=0.0030; */
    PP.dy_gwlen = 0.003;

    /*  group delay evaluation window length (sec) */
    /* 'voicebox:83' PP.dy_lpcdur=0.020; */
    PP.dy_lpcdur = 0.02;

    /*  lpc analysis frame length (sec) */
    /* 'voicebox:84' PP.dy_lpcn=2; */
    PP.dy_lpcn = 2.0;

    /*  lpc additional poles */
    /* 'voicebox:85' PP.dy_lpcnf=0.001; */
    PP.dy_lpcnf = 0.001;

    /*  lpc poles per Hz (1/Hz) */
    /* 'voicebox:86' PP.dy_lpcstep=0.010; */
    PP.dy_lpcstep = 0.01;

    /*  lpc analysis step (sec) */
    /* 'voicebox:87' PP.dy_nbest=5; */
    PP.dy_nbest = 5.0;

    /*  Number of NBest paths to keep */
    /* 'voicebox:88' PP.dy_preemph=50; */
    PP.dy_preemph = 50.0;

    /*  pre-emphasis filter frequency (Hz) (to avoid preemphasis, make this very large) */
    /* 'voicebox:89' PP.dy_spitch=0.2; */
    PP.dy_spitch = 0.2;

    /*  scale factor for pitch deviation cost */
    /* 'voicebox:90' PP.dy_wener=0.3; */
    PP.dy_wener = 0.3;

    /*  DP energy weighting */
    /* 'voicebox:91' PP.dy_wpitch=0.5; */
    PP.dy_wpitch = 0.5;

    /*  DP pitch weighting */
    /* 'voicebox:92' PP.dy_wslope=0.1; */
    PP.dy_wslope = 0.1;

    /*  DP group delay slope weighting */
    /* 'voicebox:93' PP.dy_wxcorr=0.8; */
    PP.dy_wxcorr = 0.8;

    /*  DP cross correlation weighting */
    /* 'voicebox:94' PP.dy_xwlen=0.01; */
    PP.dy_xwlen = 0.01;

    /*  cross-correlation length for waveform similarity (sec) */
    /*  RAPT pitch tracker */
    /* 'voicebox:98' PP.rapt_f0min=50; */
    PP.rapt_f0min = 50.0;

    /*  Min F0 (Hz) */
    /* 'voicebox:99' PP.rapt_f0max=500; */
    PP.rapt_f0max = 500.0;

    /*  Max F0 (Hz) */
    /* 'voicebox:100' PP.rapt_tframe=0.01; */
    PP.rapt_tframe = 0.01;

    /*  frame size (s) */
    /* 'voicebox:101' PP.rapt_tlpw=0.005; */
    PP.rapt_tlpw = 0.005;

    /*  low pass filter window size (s) */
    /* 'voicebox:102' PP.rapt_tcorw=0.0075; */
    PP.rapt_tcorw = 0.0075;

    /*  correlation window size (s) */
    /* 'voicebox:103' PP.rapt_candtr=0.3; */
    PP.rapt_candtr = 0.3;

    /*  minimum peak in NCCF */
    /* 'voicebox:104' PP.rapt_lagwt=0.3; */
    PP.rapt_lagwt = 0.3;

    /*  linear lag taper factor */
    /* 'voicebox:105' PP.rapt_freqwt=0.02; */
    PP.rapt_freqwt = 0.02;

    /*  cost factor for F0 change */
    /* 'voicebox:106' PP.rapt_vtranc=0.005; */
    PP.rapt_vtranc = 0.005;

    /*  fixed voice-state transition cost */
    /* 'voicebox:107' PP.rapt_vtrac=0.5; */
    PP.rapt_vtrac = 0.5;

    /*  delta amplitude modulated transition cost */
    /* 'voicebox:108' PP.rapt_vtrsc=0.5; */
    PP.rapt_vtrsc = 0.5;

    /*  delta spectrum modulated transition cost */
    /* 'voicebox:109' PP.rapt_vobias=0.0; */
    PP.rapt_vobias = 0.0;

    /*  bias to encourage voiced hypotheses */
    /* 'voicebox:110' PP.rapt_doublec=0.35; */
    PP.rapt_doublec = 0.35;

    /*  cost of exact doubling or halving */
    /* 'voicebox:111' PP.rapt_absnoise=0; */
    PP.rapt_absnoise = 0.0;

    /*  absolute rms noise level */
    /* 'voicebox:112' PP.rapt_relnoise=2; */
    PP.rapt_relnoise = 2.0;

    /*  rms noise level relative to noise floor */
    /* 'voicebox:113' PP.rapt_signoise=0.001; */
    PP.rapt_signoise = 0.001;

    /*  ratio of peak signal rms to noise floor (0.001 = 60dB) */
    /* 'voicebox:114' PP.rapt_ncands=20; */
    PP.rapt_ncands = 20.0;

    /*  max hypotheses at each frame */
    /* 'voicebox:115' PP.rapt_trms=0.03; */
    PP.rapt_trms = 0.03;

    /*  window length for rms measurement */
    /* 'voicebox:116' PP.rapt_dtrms=0.02; */
    PP.rapt_dtrms = 0.02;

    /*  window spacing for rms measurement */
    /* 'voicebox:117' PP.rapt_preemph=-7000; */
    PP.rapt_preemph = -7000.0;

    /*  s-plane position of preemphasis zero */
    /* 'voicebox:118' PP.rapt_nfullag=7; */
    PP.rapt_nfullag = 7.0;

    /*  number of full lags to try (must be odd) */
    /*  now check some of the key values for validity */
    /*      if exist(PP.dir_temp)~=7        % check that temp directory exists */
    /*          PP.dir_temp = winenvar('temp');     % else use windows temp directory */
    /*      end */
    /*   */
    /*      [fnp,fnn,fne]=fileparts(mfilename('fullpath')); */
    /*      if exist(PP.shorten)~=2        % check that shorten executable exists */
    /*          PP.shorten=fullfile(fnp,'shorten.exe'); % next try local directory */
    /*          if exist(PP.shorten)~=2        % check if it exists in local directory */
    /*              PP.shorten='shorten.exe'; % finally assume it is on the search path */
    /*          end */
    /*      end */
    /*   */
    /*      if exist(PP.flac)~=2        % check that flac executable exists */
    /*          PP.flac=fullfile(fnp,'flac.exe'); % next try local directory */
    /*          if exist(PP.flac)~=2        % check if it exists in local directory */
    /*              PP.shorten='flac.exe'; % finally assume it is on the search path */
    /*          end */
    /*      end */
  }

  /* 'voicebox:142' if nargin==0 */
  /* 'voicebox:160' elseif nargin==1 */
  /* 'voicebox:161' if isfield(PP,f) */
  /* 'voicebox:162' y=PP.(f); */
  return PP.memsize;
}

/* End of code generation (voicebox.c) */
