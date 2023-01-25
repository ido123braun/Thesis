//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// _coder_mb_OptimalManeuver_api.cpp
//
// Code generation for function 'mb_OptimalManeuver'
//

// Include files
#include "_coder_mb_OptimalManeuver_api.h"
#include "_coder_mb_OptimalManeuver_mex.h"

// Variable Definitions
emlrtCTX emlrtRootTLSGlobal{nullptr};

emlrtContext emlrtContextGlobal{
    true,                                                 // bFirstTime
    false,                                                // bInitialized
    131610U,                                              // fVersionInfo
    nullptr,                                              // fErrorFunction
    "mb_OptimalManeuver",                                 // fFunctionName
    nullptr,                                              // fRTCallStack
    false,                                                // bDebugMode
    {2045744189U, 2170104910U, 2743257031U, 4284093946U}, // fSigWrd
    nullptr                                               // fSigMem
};

// Function Declarations
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp,
                                   const mxArray *controls,
                                   const char_T *identifier))[3];

static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[3];

static const mxArray *b_emlrt_marshallOut(const real_T u[7]);

static real_T (*c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[11];

static const mxArray *c_emlrt_marshallOut(const real_T u[154]);

static real_T (*d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[3];

static const mxArray *d_emlrt_marshallOut(const real_T u[98]);

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *states,
                                 const char_T *identifier))[11];

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                 const emlrtMsgIdentifier *parentId))[11];

static const mxArray *emlrt_marshallOut(const real_T u[11]);

// Function Definitions
static real_T (*b_emlrt_marshallIn(const emlrtStack *sp,
                                   const mxArray *controls,
                                   const char_T *identifier))[3]
{
  emlrtMsgIdentifier thisId;
  real_T(*y)[3];
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(controls), &thisId);
  emlrtDestroyArray(&controls);
  return y;
}

static real_T (*b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[3]
{
  real_T(*y)[3];
  y = d_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static const mxArray *b_emlrt_marshallOut(const real_T u[7])
{
  static const int32_T i{0};
  static const int32_T i1{7};
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
                                   const emlrtMsgIdentifier *msgId))[11]
{
  static const int32_T dims{11};
  real_T(*ret)[11];
  emlrtCheckBuiltInR2012b((emlrtCTX)sp, msgId, src, (const char_T *)"double",
                          false, 1U, (void *)&dims);
  ret = (real_T(*)[11])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static const mxArray *c_emlrt_marshallOut(const real_T u[154])
{
  static const int32_T iv[2]{0, 0};
  static const int32_T iv1[2]{11, 14};
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
                                   const emlrtMsgIdentifier *msgId))[3]
{
  static const int32_T dims{3};
  real_T(*ret)[3];
  emlrtCheckBuiltInR2012b((emlrtCTX)sp, msgId, src, (const char_T *)"double",
                          false, 1U, (void *)&dims);
  ret = (real_T(*)[3])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static const mxArray *d_emlrt_marshallOut(const real_T u[98])
{
  static const int32_T iv[2]{0, 0};
  static const int32_T iv1[2]{7, 14};
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
                                 const char_T *identifier))[11]
{
  emlrtMsgIdentifier thisId;
  real_T(*y)[11];
  thisId.fIdentifier = const_cast<const char_T *>(identifier);
  thisId.fParent = nullptr;
  thisId.bParentIsCell = false;
  y = emlrt_marshallIn(sp, emlrtAlias(states), &thisId);
  emlrtDestroyArray(&states);
  return y;
}

static real_T (*emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                 const emlrtMsgIdentifier *parentId))[11]
{
  real_T(*y)[11];
  y = c_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static const mxArray *emlrt_marshallOut(const real_T u[11])
{
  static const int32_T i{0};
  static const int32_T i1{11};
  const mxArray *m;
  const mxArray *y;
  y = nullptr;
  m = emlrtCreateNumericArray(1, (const void *)&i, mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m, &i1, 1);
  emlrtAssign(&y, m);
  return y;
}

void mb_OptimalManeuver_api(const mxArray *const prhs[2], int32_T nlhs,
                            const mxArray *plhs[4])
{
  emlrtStack st{
      nullptr, // site
      nullptr, // tls
      nullptr  // prev
  };
  real_T(*j_statesdot)[154];
  real_T(*j_outputs)[98];
  real_T(*states)[11];
  real_T(*statesdot)[11];
  real_T(*outputs)[7];
  real_T(*controls)[3];
  st.tls = emlrtRootTLSGlobal;
  statesdot = (real_T(*)[11])mxMalloc(sizeof(real_T[11]));
  outputs = (real_T(*)[7])mxMalloc(sizeof(real_T[7]));
  j_statesdot = (real_T(*)[154])mxMalloc(sizeof(real_T[154]));
  j_outputs = (real_T(*)[98])mxMalloc(sizeof(real_T[98]));
  // Marshall function inputs
  states = emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "states");
  controls = b_emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "controls");
  // Invoke the target function
  mb_OptimalManeuver(*states, *controls, *statesdot, *outputs, *j_statesdot,
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

void mb_OptimalManeuver_atexit()
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
  mb_OptimalManeuver_xil_terminate();
  mb_OptimalManeuver_xil_shutdown();
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

void mb_OptimalManeuver_initialize()
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

void mb_OptimalManeuver_terminate()
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

// End of code generation (_coder_mb_OptimalManeuver_api.cpp)
