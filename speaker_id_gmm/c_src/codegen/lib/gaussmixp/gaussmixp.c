/*
 * gaussmixp.c
 *
 * Code generation for function 'gaussmixp'
 *
 * C source code generated on: Wed Jan 30 22:03:32 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "gaussmixp.h"
#include "log.h"
#include "sum.h"
#include "exp.h"
#include "power.h"
#include "repmat.h"
#include "voicebox.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */

/*
 * function [lp]=gaussmixp(y,m,v,w)
 *  y = cat(1, testSamples(1).mfcc{:});
 *  m = gmm.M;
 *  v = gmm.V;
 *  w = gmm.W;
 */
void gaussmixp(const real_T y[2004], const real_T m[108], const real_T v[108],
               const real_T w[9], real_T lp[167])
{
  real_T b[108];
  real_T dv0[108];
  real_T b_b[9];
  real_T lvm[9];
  int32_T ix;
  real_T mx[167];
  real_T kk[1503];
  real_T km[1503];
  static real_T b_y[18036];
  int32_T iy;
  real_T dv1[18036];
  real_T x[1503];
  int32_T i;
  int32_T ixstart;
  int32_T ixstop;
  real_T mtmp;
  int32_T b_ix;
  boolean_T exitg1;
  real_T ps[167];

  /* GAUSSMIXP calculate probability densities from a Gaussian mixture model */
  /*  */
  /*  Inputs: n data values, k mixtures, p parameters, q data vector size */
  /*  */
  /*    Y(n,q) = input data */
  /*    M(k,p) = mixture means for x(p) */
  /*    V(k,p) or V(p,p,k) variances (diagonal or full) */
  /*    W(k,1) = weights */
  /*    A(q,p), B(q) = transformation: y=x*a'+b' (where y and x are row vectors) */
  /*             if A is omitted, it is assumed to be the first q rows of the */
  /*             identity matrix. B defaults to zero. */
  /*    Note that most commonly, q=p and A and B are omitted entirely. */
  /*  */
  /*  Outputs */
  /*  */
  /*   LP(n,1) = log probability of each data point */
  /*   RP(n,k) = relative probability of each mixture */
  /*   KH(n,1) = highest probability mixture */
  /*   KP(n,1) = relative probability of highest probability mixture */
  /*       Copyright (C) Mike Brookes 2000-2009 */
  /*       Version: $Id: gaussmixp.m,v 1.3 2009/04/08 07:51:21 dmb Exp $ */
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
  /* 'gaussmixp:49' [n,q]=size(y); */
  /* 'gaussmixp:50' [k,p]=size(m); */
  /* 'gaussmixp:51' memsize=voicebox('memsize'); */
  voicebox();

  /*  set memory size to use */
  /* 'gaussmixp:53' lp=zeros(n,1); */
  memset((void *)&lp[0], 0, 167U * sizeof(real_T));

  /* 'gaussmixp:54' wk=ones(k,1); */
  /* 'gaussmixp:56' vi=-0.5*v.^(-1); */
  power(v, b);

  /*  data-independent scale factor in exponent */
  /* 'gaussmixp:57' lvm=log(w)-0.5*sum(log(v),2); */
  memcpy((void *)&dv0[0], (void *)&v[0], 108U * sizeof(real_T));
  c_log(dv0);
  sum(dv0, b_b);
  memcpy((void *)&lvm[0], (void *)&w[0], 9U * sizeof(real_T));
  b_log(lvm);
  for (ix = 0; ix < 9; ix++) {
    lvm[ix] -= 0.5 * b_b[ix];
  }

  /*  log of external scale factor (excluding -0.5*q*log(2pi) term) */
  /* 'gaussmixp:58' ii=1:n; */
  /* 'gaussmixp:59' wnj=ones(1,n); */
  /* 'gaussmixp:60' kk=repmat(ii,k,1); */
  for (ix = 0; ix < 167; ix++) {
    mx[ix] = 1.0 + (real_T)ix;
  }

  repmat(mx, kk);

  /* 'gaussmixp:61' km=repmat(1:k,1,n); */
  for (ix = 0; ix < 9; ix++) {
    b_b[ix] = 1.0 + (real_T)ix;
  }

  b_repmat(b_b, km);

  /* 'gaussmixp:62' py=reshape(sum((y(kk(:),:)-m(km(:),:)).^2.*vi(km(:),:),2),k,n)+lvm(:,wnj); */
  for (ix = 0; ix < 12; ix++) {
    for (iy = 0; iy < 1503; iy++) {
      b_y[iy + 1503 * ix] = y[((int32_T)kk[iy] + 167 * ix) - 1] - m[((int32_T)
        km[iy] + 9 * ix) - 1];
    }
  }

  b_power(b_y, dv1);
  for (ix = 0; ix < 12; ix++) {
    for (iy = 0; iy < 1503; iy++) {
      b_y[iy + 1503 * ix] = dv1[iy + 1503 * ix] * (-0.5 * b[((int32_T)km[iy] + 9
        * ix) - 1]);
    }
  }

  b_sum(b_y, x);
  memcpy((void *)&kk[0], (void *)&x[0], 1503U * sizeof(real_T));
  for (ix = 0; ix < 167; ix++) {
    for (iy = 0; iy < 9; iy++) {
      km[iy + 9 * ix] = kk[iy + 9 * ix] + lvm[iy];
    }
  }

  /* 'gaussmixp:63' mx=max(py,[],1); */
  ix = -8;
  iy = -1;
  for (i = 0; i < 167; i++) {
    ix += 9;
    ixstart = ix;
    ixstop = ix + 8;
    mtmp = km[ix - 1];
    if (rtIsNaN(km[ix - 1])) {
      b_ix = ix;
      exitg1 = 0U;
      while ((exitg1 == 0U) && (b_ix + 1 <= ixstop)) {
        ixstart = b_ix + 1;
        if (!rtIsNaN(km[b_ix])) {
          mtmp = km[b_ix];
          exitg1 = 1U;
        } else {
          b_ix++;
        }
      }
    }

    if (ixstart < ixstop) {
      while (ixstart + 1 <= ixstop) {
        if (km[ixstart] > mtmp) {
          mtmp = km[ixstart];
        }

        ixstart++;
      }
    }

    iy++;
    mx[iy] = mtmp;
  }

  /*  find normalizing factor for each data point to prevent underflow when using exp() */
  /* 'gaussmixp:64' px=exp(py-mx(wk,:)); */
  for (ix = 0; ix < 167; ix++) {
    for (iy = 0; iy < 9; iy++) {
      kk[iy + 9 * ix] = km[iy + 9 * ix] - mx[ix];
    }
  }

  b_exp(kk);

  /*  find normalized probability of each mixture for each datapoint */
  /* 'gaussmixp:65' ps=sum(px,1); */
  c_sum(kk, ps);

  /*  total normalized likelihood of each data point */
  /* 'gaussmixp:66' lp(ii)=log(ps)+mx; */
  d_log(ps);
  for (ix = 0; ix < 167; ix++) {
    /* 'gaussmixp:67' lp=lp-0.5*q*log(2*pi); */
    lp[ix] = (ps[ix] + mx[ix]) - 11.027262398456072;
  }
}

/* End of code generation (gaussmixp.c) */
