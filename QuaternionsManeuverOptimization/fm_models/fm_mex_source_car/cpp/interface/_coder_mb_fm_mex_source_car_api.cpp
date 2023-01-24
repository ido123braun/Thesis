//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_mb_fm_mex_source_car_api.cpp
//
// Code generation for function 'mb_fm_mex_source_car'
//

// Include files
#include "_coder_mb_fm_mex_source_car_api.h"
#include "_coder_mb_fm_mex_source_car_mex.h"

// Variable Definitions
emlrtCTX emlrtRootTLSGlobal{nullptr};

emlrtContext emlrtContextGlobal{
    true,                                                 // bFirstTime
    false,                                                // bInitialized
    131610U,                                              // fVersionInfo
    nullptr,                                              // fErrorFunction
    "mb_fm_mex_source_car",                               // fFunctionName
    nullptr,                                              // fRTCallStack
    false,                                                // bDebugMode
    {2045744189U, 2170104910U, 2743257031U, 4284093946U}, // fSigWrd
    nullptr                                               // fSigMem
};

// Function Declarations
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp,
                                   const mxArray *controls,
                                   const char_T *identifier))[2];

static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[2];

static const mxArray *b_emlrt_marshallOut(const real_T u[2]);

static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[4];

static const mxArray *c_emlrt_marshallOut(const real_T u[24]);

static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[2];

static const mxArray *d_emlrt_marshallOut(const real_T u[12]);

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *states,
                                 const char_T *identifier))[4];

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                 const emlrtMsgIdentifier *parentId))[4];

static const mxArray *emlrt_marshallOut(const real_T u[4]);

// Function Definitions
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp,
                                   const mxArray *controls,
                                   const char_T *identifier))[2]
{
  emlrtMsgIdentifier thisId;
  real_T(*y)[2];
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(controls), &thisId);
  emlrtDestroyArray(&controls);
  return y;
}

static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[2]
{
  real_T(*y)[2];
  y = d_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static const mxArray *b_emlrt_marshallOut(const real_T u[2])
{
  static const int32_T i{0};
  static const int32_T i1{2};
  const mxArray *m;
  const mxArray *y;
  y = nullptr;
  m = emlrtCreateNumericArray(1, (const void *)&i, mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m, &i1, 1);
  emlrtAssign(&y, m);
  return y;
}

static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[4]
{
  static const int32_T dims{4};
  real_T(*ret)[4];
  emlrtCheckBuiltInR2012b((emlrtCTX)sp, msgId, src, (const char_T *)"double",
                          false, 1U, (void *)&dims);
  ret = (real_T(*)[4])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static const mxArray *c_emlrt_marshallOut(const real_T u[24])
{
  static const int32_T iv[2]{0, 0};
  static const int32_T iv1[2]{4, 6};
  const mxArray *m;
  const mxArray *y;
  y = nullptr;
  m = emlrtCreateNumericArray(2, (const void *)&iv[0], mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m, &iv1[0], 2);
  emlrtAssign(&y, m);
  return y;
}

static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[2]
{
  static const int32_T dims{2};
  real_T(*ret)[2];
  emlrtCheckBuiltInR2012b((emlrtCTX)sp, msgId, src, (const char_T *)"double",
                          false, 1U, (void *)&dims);
  ret = (real_T(*)[2])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static const mxArray *d_emlrt_marshallOut(const real_T u[12])
{
  static const int32_T iv[2]{0, 0};
  static const int32_T iv1[2]{2, 6};
  const mxArray *m;
  const mxArray *y;
  y = nullptr;
  m = emlrtCreateNumericArray(2, (const void *)&iv[0], mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m, &iv1[0], 2);
  emlrtAssign(&y, m);
  return y;
}

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *states,
                                 const char_T *identifier))[4]
{
  emlrtMsgIdentifier thisId;
  real_T(*y)[4];
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  y = emlrt_marshallIn(sp, emlrtAlias(states), &thisId);
  emlrtDestroyArray(&states);
  return y;
}

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                 const emlrtMsgIdentifier *parentId))[4]
{
  real_T(*y)[4];
  y = c_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static const mxArray *emlrt_marshallOut(const real_T u[4])
{
  static const int32_T i{0};
  static const int32_T i1{4};
  const mxArray *m;
  const mxArray *y;
  y = nullptr;
  m = emlrtCreateNumericArray(1, (const void *)&i, mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m, &i1, 1);
  emlrtAssign(&y, m);
  return y;
}

void mb_fm_mex_source_car_api(const mxArray *const prhs[2], int32_T nlhs,
                              const mxArray *plhs[4])
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  const mxArray *prhs_copy_idx_0;
  const mxArray *prhs_copy_idx_1;
  real_T(*j_statesdot)[24];
  real_T(*j_outputs)[12];
  real_T(*states)[4];
  real_T(*statesdot)[4];
  real_T(*controls)[2];
  real_T(*outputs)[2];
  st.tls = emlrtRootTLSGlobal;
  statesdot = (real_T(*)[4])mxMalloc(sizeof(real_T[4]));
  outputs = (real_T(*)[2])mxMalloc(sizeof(real_T[2]));
  j_statesdot = (real_T(*)[24])mxMalloc(sizeof(real_T[24]));
  j_outputs = (real_T(*)[12])mxMalloc(sizeof(real_T[12]));
  prhs_copy_idx_0 = emlrtProtectR2012b(prhs[0], 0, false, -1);
  prhs_copy_idx_1 = emlrtProtectR2012b(prhs[1], 1, false, -1);
  // Marshall function inputs
  states = emlrt_marshallIn(&st, emlrtAlias(prhs_copy_idx_0), "states");
  controls = b_emlrt_marshallIn(&st, emlrtAlias(prhs_copy_idx_1), "controls");
  // Invoke the target function
  mb_fm_mex_source_car(*states, *controls, *statesdot, *outputs, *j_statesdot,
                       *j_outputs);
  // Marshall function outputs
  plhs[0] = emlrt_marshallOut(*statesdot);
  if (nlhs > 1) {
    plhs[1] = b_emlrt_marshallOut(*outputs);
  }
  if (nlhs > 2) {
    plhs[2] = c_emlrt_marshallOut(*j_statesdot);
  }
  if (nlhs > 3) {
    plhs[3] = d_emlrt_marshallOut(*j_outputs);
  }
}

void mb_fm_mex_source_car_atexit()
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtEnterRtStackR2012b(&st);
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  mb_fm_mex_source_car_xil_terminate();
  mb_fm_mex_source_car_xil_shutdown();
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void mb_fm_mex_source_car_initialize()
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, nullptr);
  emlrtEnterRtStackR2012b(&st);
  emlrtFirstTimeR2012b(emlrtRootTLSGlobal);
}

void mb_fm_mex_source_car_terminate()
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  st.tls = emlrtRootTLSGlobal;
  emlrtLeaveRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

// End of code generation (_coder_mb_fm_mex_source_car_api.cpp)
