//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// mb_OptimalManeuver.h
//
// Code generation for function 'mb_OptimalManeuver'
//

#ifndef MB_OPTIMALMANEUVER_H
#define MB_OPTIMALMANEUVER_H

// Include files
#include "rtwtypes.h"
#include <cstddef>
#include <cstdlib>

// Custom Header Code
#include <cstdint>
#define CHAR16_T uint16_t
#include "mex.h"
// Function Declarations
extern void mb_OptimalManeuver(const double states[11],
                               const double controls[3], double statesdot[11],
                               double outputs[7], double j_statesdot[154],
                               double j_outputs[98]);

extern void mb_OptimalManeuver_initialize();

extern void mb_OptimalManeuver_terminate();

#endif
// End of code generation (mb_OptimalManeuver.h)
