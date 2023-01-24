//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_mb_OptimalManeuver_api.h
//
// Code generation for function 'mb_OptimalManeuver'
//

#ifndef _CODER_MB_OPTIMALMANEUVER_API_H
#define _CODER_MB_OPTIMALMANEUVER_API_H

// Include files
#include "emlrt.h"
#include "tmwtypes.h"
#include <algorithm>
#include <cstring>

// Variable Declarations
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

// Function Declarations
void mb_OptimalManeuver(real_T states[11], real_T controls[3],
                        real_T statesdot[11], real_T outputs[8],
                        real_T j_statesdot[154], real_T j_outputs[112]);

void mb_OptimalManeuver_api(const mxArray *const prhs[2], int32_T nlhs,
                            const mxArray *plhs[4]);

void mb_OptimalManeuver_atexit();

void mb_OptimalManeuver_initialize();

void mb_OptimalManeuver_terminate();

void mb_OptimalManeuver_xil_shutdown();

void mb_OptimalManeuver_xil_terminate();

#endif
// End of code generation (_coder_mb_OptimalManeuver_api.h)
