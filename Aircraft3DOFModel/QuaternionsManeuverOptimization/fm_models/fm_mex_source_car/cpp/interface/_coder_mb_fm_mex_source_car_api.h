//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_mb_fm_mex_source_car_api.h
//
// Code generation for function 'mb_fm_mex_source_car'
//

#ifndef _CODER_MB_FM_MEX_SOURCE_CAR_API_H
#define _CODER_MB_FM_MEX_SOURCE_CAR_API_H

// Include files
#include "emlrt.h"
#include "tmwtypes.h"
#include <algorithm>
#include <cstring>

// Variable Declarations
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

// Function Declarations
void mb_fm_mex_source_car(real_T states[4], real_T controls[2],
                          real_T statesdot[4], real_T outputs[2],
                          real_T j_statesdot[24], real_T j_outputs[12]);

void mb_fm_mex_source_car_api(const mxArray *const prhs[2], int32_T nlhs,
                              const mxArray *plhs[4]);

void mb_fm_mex_source_car_atexit();

void mb_fm_mex_source_car_initialize();

void mb_fm_mex_source_car_terminate();

void mb_fm_mex_source_car_xil_shutdown();

void mb_fm_mex_source_car_xil_terminate();

#endif
// End of code generation (_coder_mb_fm_mex_source_car_api.h)
