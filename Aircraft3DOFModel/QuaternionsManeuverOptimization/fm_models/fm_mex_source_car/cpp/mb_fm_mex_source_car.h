//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// mb_fm_mex_source_car.h
//
// Code generation for function 'mb_fm_mex_source_car'
//

#ifndef MB_FM_MEX_SOURCE_CAR_H
#define MB_FM_MEX_SOURCE_CAR_H

// Include files
#include "rtwtypes.h"
#include <cstddef>
#include <cstdlib>

// Function Declarations
extern void mb_fm_mex_source_car(const double states[4],
                                 const double controls[2], double statesdot[4],
                                 double outputs[2], double j_statesdot[24],
                                 double j_outputs[12]);

extern void mb_fm_mex_source_car_initialize();

extern void mb_fm_mex_source_car_terminate();

#endif
// End of code generation (mb_fm_mex_source_car.h)
