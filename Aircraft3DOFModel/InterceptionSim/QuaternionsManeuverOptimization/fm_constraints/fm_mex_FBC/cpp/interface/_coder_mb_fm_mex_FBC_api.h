//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_mb_fm_mex_FBC_api.h
//
// Code generation for function 'mb_fm_mex_FBC'
//

#ifndef _CODER_MB_FM_MEX_FBC_API_H
#define _CODER_MB_FM_MEX_FBC_API_H

// Include files
#include "emlrt.h"
#include "tmwtypes.h"
#include <algorithm>
#include <cstring>

// Variable Declarations
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

// Function Declarations
void mb_fm_mex_FBC(real_T states[12], real_T controls[3], real_T constant_1,
                   real_T *constraintvalue, real_T j_constraintvalue[15]);

void mb_fm_mex_FBC_api(const mxArray *const prhs[3], int32_T nlhs,
                       const mxArray *plhs[2]);

void mb_fm_mex_FBC_atexit();

void mb_fm_mex_FBC_initialize();

void mb_fm_mex_FBC_terminate();

void mb_fm_mex_FBC_xil_shutdown();

void mb_fm_mex_FBC_xil_terminate();

#endif
// End of code generation (_coder_mb_fm_mex_FBC_api.h)
