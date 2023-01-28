//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// mb_fm_mex_sysConstraint.h
//
// Code generation for function 'mb_fm_mex_sysConstraint'
//

#ifndef MB_FM_MEX_SYSCONSTRAINT_H
#define MB_FM_MEX_SYSCONSTRAINT_H

// Include files
#include "rtwtypes.h"
#include <cstddef>
#include <cstdlib>

// Custom Header Code
#include <cstdint>
#define CHAR16_T uint16_t
#include "mex.h"
// Function Declarations
extern void mb_fm_mex_sysConstraint(const double outputs[10],
                                    const double states[12],
                                    const double controls[3],
                                    double *constraintvalue,
                                    double j_constraintvalue[25]);

extern void mb_fm_mex_sysConstraint_initialize();

extern void mb_fm_mex_sysConstraint_terminate();

#endif
// End of code generation (mb_fm_mex_sysConstraint.h)
