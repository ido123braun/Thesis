//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_mb_fm_mex_sysConstraint_api.h
//
// Code generation for function 'mb_fm_mex_sysConstraint'
//

#ifndef _CODER_MB_FM_MEX_SYSCONSTRAINT_API_H
#define _CODER_MB_FM_MEX_SYSCONSTRAINT_API_H

// Include files
#include "emlrt.h"
#include "tmwtypes.h"
#include <algorithm>
#include <cstring>

// Variable Declarations
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

// Function Declarations
void mb_fm_mex_sysConstraint(real_T outputs[16], real_T states[14],
                             real_T controls[3], real_T constraintvalue[2],
                             real_T j_constraintvalue[66]);

void mb_fm_mex_sysConstraint_api(const mxArray *const prhs[3], int32_T nlhs,
                                 const mxArray *plhs[2]);

void mb_fm_mex_sysConstraint_atexit();

void mb_fm_mex_sysConstraint_initialize();

void mb_fm_mex_sysConstraint_terminate();

void mb_fm_mex_sysConstraint_xil_shutdown();

void mb_fm_mex_sysConstraint_xil_terminate();

#endif
// End of code generation (_coder_mb_fm_mex_sysConstraint_api.h)
