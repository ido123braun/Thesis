// Call Function generated automatically on 26-Jan-2023 17:22:11
// Created on LAPTOP-P2LD3FGQ
#include "cstdint"
#include "mex.h"
#include "math.h"
#include "algorithm"
#include "mb_fm_mex_sysConstraint.h"
#include "mb_fm_mex_sysConstraint_types.h"

// Constants - Input Dimensions
#define DIM_M_OUTPUTS 10
#define DIM_M_STATES 12
#define DIM_M_CONTROLS 3

// Constants - Number of Independent Variables (non discrete control case)
#define N_IDP 25

// Constants - Output Sizes
#define NUM_OUT_CONSTRAINTVALUE 1

// Function Header
void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[]) try {

    // Declare input arrays
    mxArray const *array_outputs = prhs[0];
    mxArray const *array_states = prhs[1];
    mxArray const *array_controls = prhs[2];

    // Declare number of time steps
    int nEval;

    // Declare Outputs
    double *constraintvalue;
    double *j_constraintvalue;
    mwSize j_dim_constraintvalue[3];

    // Write Call Information
    if (nrhs == 0 && nlhs == 0) {
        // System Information
        mexPrintf("<strong>System Information</strong>\n");
        mexPrintf("Mex file created by Derivative Model Builder\n");
        mexPrintf("- Date:                26-Jan-2023 17:22:11\n");
        mexPrintf("- Computer:            LAPTOP-P2LD3FGQ\n");
        mexPrintf("- MATLAB-Version:      9.10.0.1602886 (R2021a)\n");
        mexPrintf("- DerivativeOrder:     1\n");
        mexPrintf("- Jacobian Calculation:true\n");
        mexPrintf("- Hessian-Calculation: false\n");
        mexPrintf("\n");

        // Input Information
        mexPrintf("<strong>Input Information</strong>\n");
        mexPrintf("<strong>Name</strong>     <strong>Size</strong>   <strong>DataType</strong> <strong>Derivative</strong> <strong>MultipleTimeEval</strong> <strong>VariableSize</strong>\n");
        mexPrintf("outputs  [10 1] double       true             true        false\n");
        mexPrintf("| phi\n");
        mexPrintf("| gamma\n");
        mexPrintf("| psi\n");
        mexPrintf("| alpha\n");
        mexPrintf("| CL\n");
        mexPrintf("| CD\n");
        mexPrintf("| T\n");
        mexPrintf("| TSFC\n");
        mexPrintf("| ng\n");
        mexPrintf("| Wneg\n");
        mexPrintf("\n");
        mexPrintf("states   [12 1] double       true             true        false\n");
        mexPrintf("| x_E\n");
        mexPrintf("| y_E\n");
        mexPrintf("| z_E\n");
        mexPrintf("| v\n");
        mexPrintf("| e0\n");
        mexPrintf("| e1\n");
        mexPrintf("| e2\n");
        mexPrintf("| e3\n");
        mexPrintf("| W\n");
        mexPrintf("| P\n");
        mexPrintf("| Js\n");
        mexPrintf("| n\n");
        mexPrintf("\n");
        mexPrintf("controls [3 1]  double       true             true        false\n");
        mexPrintf("| Pcom\n");
        mexPrintf("| Jscom\n");
        mexPrintf("| ncom\n");
        mexPrintf("\n");
        mexPrintf("\n");

        // Output Information
        mexPrintf("<strong>Output Information</strong>\n");
        mexPrintf("<strong>Name</strong>            <strong>Size</strong> \n");
        mexPrintf("constraintvalue [1 1]\n");

        return;
    }
    else if (nrhs == 0 && nlhs == 1) {
        const char *names[] = {"input", "output", "info", "name", "type", "WrapperClass"};
        const char *i_names[] = {"m", "n","name","argnames","type", "groupindex", "DataType"};
        const char *o_names[] = {"m", "n","name","argnames","type","jac_sparsity","hess_sparsity"};
        mxArray *struct_inputs;
        mxArray *struct_outputs;
        const char *info_names[] = {"Date", "Computer", "MATLAB", "DerivativeOrder", "Jacobian", "Hessian", "UseSparsityEstimator"};
        mxArray *struct_info;
        mxArray *mx;
        double *jacTemp;
        double *hessTemp;

        plhs[0] = mxCreateStructMatrix(1,1,6,names);
        mxSetField(plhs[0], 0, names[3], mxCreateString("fm_mex_sysConstraint"));
        mxSetField(plhs[0], 0, names[4], mxCreateString("PATH_FUNCTION"));
        mxSetField(plhs[0], 0, names[5], mxCreateString("falcon.ModelWrapper"));

        struct_inputs = mxCreateStructMatrix(3,1,7,i_names);

        mxSetField(struct_inputs, 0, i_names[0], mxCreateDoubleScalar(10));
        mxSetField(struct_inputs, 0, i_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_inputs, 0, i_names[2], mxCreateString("outputs"));
        mxSetField(struct_inputs, 0, i_names[4], mxCreateString("OUTPUT"));
        mxSetField(struct_inputs, 0, i_names[5], mxCreateDoubleScalar(0));
        mxSetField(struct_inputs, 0, i_names[6], mxCreateString("double"));
        mx = mxCreateCellMatrix(10, 1);
        mxSetCell(mx, 0,  mxCreateString("phi"));
        mxSetCell(mx, 1,  mxCreateString("gamma"));
        mxSetCell(mx, 2,  mxCreateString("psi"));
        mxSetCell(mx, 3,  mxCreateString("alpha"));
        mxSetCell(mx, 4,  mxCreateString("CL"));
        mxSetCell(mx, 5,  mxCreateString("CD"));
        mxSetCell(mx, 6,  mxCreateString("T"));
        mxSetCell(mx, 7,  mxCreateString("TSFC"));
        mxSetCell(mx, 8,  mxCreateString("ng"));
        mxSetCell(mx, 9,  mxCreateString("Wneg"));
        mxSetField(struct_inputs, 0, i_names[3], mx);

        mxSetField(struct_inputs, 1, i_names[0], mxCreateDoubleScalar(12));
        mxSetField(struct_inputs, 1, i_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_inputs, 1, i_names[2], mxCreateString("states"));
        mxSetField(struct_inputs, 1, i_names[4], mxCreateString("STATE"));
        mxSetField(struct_inputs, 1, i_names[5], mxCreateDoubleScalar(0));
        mxSetField(struct_inputs, 1, i_names[6], mxCreateString("double"));
        mx = mxCreateCellMatrix(12, 1);
        mxSetCell(mx, 0,  mxCreateString("x_E"));
        mxSetCell(mx, 1,  mxCreateString("y_E"));
        mxSetCell(mx, 2,  mxCreateString("z_E"));
        mxSetCell(mx, 3,  mxCreateString("v"));
        mxSetCell(mx, 4,  mxCreateString("e0"));
        mxSetCell(mx, 5,  mxCreateString("e1"));
        mxSetCell(mx, 6,  mxCreateString("e2"));
        mxSetCell(mx, 7,  mxCreateString("e3"));
        mxSetCell(mx, 8,  mxCreateString("W"));
        mxSetCell(mx, 9,  mxCreateString("P"));
        mxSetCell(mx, 10,  mxCreateString("Js"));
        mxSetCell(mx, 11,  mxCreateString("n"));
        mxSetField(struct_inputs, 1, i_names[3], mx);

        mxSetField(struct_inputs, 2, i_names[0], mxCreateDoubleScalar(3));
        mxSetField(struct_inputs, 2, i_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_inputs, 2, i_names[2], mxCreateString("controls"));
        mxSetField(struct_inputs, 2, i_names[4], mxCreateString("CONTROL"));
        mxSetField(struct_inputs, 2, i_names[5], mxCreateDoubleScalar(0));
        mxSetField(struct_inputs, 2, i_names[6], mxCreateString("double"));
        mx = mxCreateCellMatrix(3, 1);
        mxSetCell(mx, 0,  mxCreateString("Pcom"));
        mxSetCell(mx, 1,  mxCreateString("Jscom"));
        mxSetCell(mx, 2,  mxCreateString("ncom"));
        mxSetField(struct_inputs, 2, i_names[3], mx);
        mxSetField(plhs[0], 0, names[0], struct_inputs);

        struct_outputs = mxCreateStructMatrix(1,1,7,o_names);

        mxSetField(struct_outputs, 0, o_names[0], mxCreateDoubleScalar(1));
        mxSetField(struct_outputs, 0, o_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_outputs, 0, o_names[2], mxCreateString("constraintvalue"));
        mxSetField(struct_outputs, 0, o_names[4], mxCreateString("VALUE"));
        mx = mxCreateDoubleMatrix(1, 25, mxREAL);
        jacTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(jacTemp, 25, 0);
        jacTemp[14] = 1.000000;
        jacTemp[15] = 1.000000;
        jacTemp[16] = 1.000000;
        jacTemp[17] = 1.000000;
        mxSetField(struct_outputs, 0, o_names[5], mx);
        mx = mxCreateDoubleMatrix(0, 0, mxREAL);
        hessTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(hessTemp, 0, 0);
        mxSetField(struct_outputs, 0, o_names[6], mx);
        mx = mxCreateCellMatrix(1, 1);
        mxSetCell(mx, 0,  mxCreateString("constraintvaluetmp"));
        mxSetField(struct_outputs, 0, o_names[3], mx);
        mxSetField(plhs[0], 0, names[1], struct_outputs);
        struct_info = mxCreateStructMatrix(1,1,7,info_names);
        mxSetField(struct_info, 0, info_names[0], mxCreateString("26-Jan-2023 17:22:11"));
        mxSetField(struct_info, 0, info_names[1], mxCreateString("LAPTOP-P2LD3FGQ"));
        mxSetField(struct_info, 0, info_names[2], mxCreateString("9.10.0.1602886 (R2021a)"));
        mxSetField(struct_info, 0, info_names[3], mxCreateDoubleScalar(1));
        mxSetField(struct_info, 0, info_names[4], mxCreateLogicalScalar(true));
        mxSetField(struct_info, 0, info_names[5], mxCreateLogicalScalar(false));
        mxSetField(struct_info, 0, info_names[6], mxCreateLogicalScalar(false));
        mxSetField(plhs[0], 0, names[2], struct_info);
        return;
    }

    // Check Number of Input Arguments
    if (nrhs < 3 || nrhs > 3) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error","Wrong number of input arguments for fm_mex_sysConstraint. The required number of input arguments is 3. Call the mex file with no input arguments to get exact input & output type information.");
    }

    // Extract Inputs

    if (!mxIsClass(array_outputs, "double")) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Wrong argument type: outputs must be double, found %s.", mxGetClassName(array_outputs));
    }
    double const *outputs = reinterpret_cast<double const *>(mxGetPr(array_outputs));

    if (!mxIsClass(array_states, "double")) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Wrong argument type: states must be double, found %s.", mxGetClassName(array_states));
    }
    double const *states = reinterpret_cast<double const *>(mxGetPr(array_states));

    if (!mxIsClass(array_controls, "double")) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Wrong argument type: controls must be double, found %s.", mxGetClassName(array_controls));
    }
    double const *controls = reinterpret_cast<double const *>(mxGetPr(array_controls));
    nEval = mxGetN(array_outputs);

    // Check Input Dimensions
    // Input_1: outputs
    if (mxGetM(array_outputs) != DIM_M_OUTPUTS) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of rows for input 1 with name \"outputs\" should be 10 but is %i.", mxGetM(prhs[0]));
    }
    if (mxGetN(array_outputs) != nEval) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of columns for input 1 with name \"outputs\" should be equal to the number of time steps (%i) but is %i.", nEval, mxGetN(prhs[0]));
    }
    // Input_2: states
    if (mxGetM(array_states) != DIM_M_STATES) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of rows for input 2 with name \"states\" should be 12 but is %i.", mxGetM(prhs[1]));
    }
    if (mxGetN(array_states) != nEval) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of columns for input 2 with name \"states\" should be equal to the number of time steps (%i) but is %i.", nEval, mxGetN(prhs[1]));
    }
    // Input_3: controls
    if (mxGetM(array_controls) != DIM_M_CONTROLS) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of rows for input 3 with name \"controls\" should be 3 but is %i.", mxGetM(prhs[2]));
    }
    if (mxGetN(array_controls) != nEval) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of columns for input 3 with name \"controls\" should be equal to the number of time steps (%i) but is %i.", nEval, mxGetN(prhs[2]));
    }

    // Prepare jacobian and hessian dimensions
    // Output_1: constraintvalue
    plhs[0] = mxCreateDoubleMatrix(1, 1*nEval, mxREAL);
    constraintvalue = mxGetPr(plhs[0]);
    // Output_jacobian_1: constraintvalue
    j_dim_constraintvalue[0] = NUM_OUT_CONSTRAINTVALUE;
    j_dim_constraintvalue[1] = N_IDP;
    j_dim_constraintvalue[2] = nEval;
    plhs[1] = mxCreateNumericArray(3,j_dim_constraintvalue,mxDOUBLE_CLASS,mxREAL);
    j_constraintvalue = mxGetPr(plhs[1]);

    // Call Model in for-loop
    for (int iEval = 0; iEval < nEval; iEval++) {
        mb_fm_mex_sysConstraint(
        &outputs[DIM_M_OUTPUTS * iEval],
        &states[DIM_M_STATES * iEval],
        &controls[DIM_M_CONTROLS * iEval],
        &constraintvalue[NUM_OUT_CONSTRAINTVALUE * iEval],
        &j_constraintvalue[NUM_OUT_CONSTRAINTVALUE * N_IDP * iEval]
        );
    }
    // Remove Temporary Variables - Variable Size Data

}
catch (std::exception& e)
{
    mexErrMsgIdAndTxt("MATLAB:callModel:Error", "%s", e.what());
}
