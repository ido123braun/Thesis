// Call Function generated automatically on 25-Jan-2023 22:49:00
// Created on LAPTOP-P2LD3FGQ
#include "cstdint"
#include "mex.h"
#include "math.h"
#include "algorithm"
#include "mb_OptimalManeuver.h"
#include "mb_OptimalManeuver_types.h"

// Constants - Input Dimensions
#define DIM_M_STATES 11
#define DIM_M_CONTROLS 3

// Constants - Number of Independent Variables (non discrete control case)
#define N_IDP 14

// Constants - Output Sizes
#define NUM_OUT_STATESDOT 11
#define NUM_OUT_OUTPUTS 7

// Function Header
void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[]) try {

    // Declare input arrays
    mxArray const *array_states = prhs[0];
    mxArray const *array_controls = prhs[1];

    // Declare number of time steps
    int nEval;

    // Declare Outputs
    double *statesdot;
    double *j_statesdot;
    mwSize j_dim_statesdot[3];
    double *outputs;
    double *j_outputs;
    mwSize j_dim_outputs[3];

    // Write Call Information
    if (nrhs == 0 && nlhs == 0) {
        // System Information
        mexPrintf("<strong>System Information</strong>\n");
        mexPrintf("Mex file created by Derivative Model Builder\n");
        mexPrintf("- Date:                25-Jan-2023 22:49:00\n");
        mexPrintf("- Computer:            LAPTOP-P2LD3FGQ\n");
        mexPrintf("- MATLAB-Version:      9.10.0.1602886 (R2021a)\n");
        mexPrintf("- DerivativeOrder:     1\n");
        mexPrintf("- Jacobian Calculation:true\n");
        mexPrintf("- Hessian-Calculation: false\n");
        mexPrintf("\n");

        // Input Information
        mexPrintf("<strong>Input Information</strong>\n");
        mexPrintf("<strong>Name</strong>     <strong>Size</strong>   <strong>DataType</strong> <strong>Derivative</strong> <strong>MultipleTimeEval</strong> <strong>VariableSize</strong>\n");
        mexPrintf("states   [11 1] double       true             true        false\n");
        mexPrintf("| x_E\n");
        mexPrintf("| y_E\n");
        mexPrintf("| z_E\n");
        mexPrintf("| v\n");
        mexPrintf("| phi\n");
        mexPrintf("| gamma\n");
        mexPrintf("| psi\n");
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
        mexPrintf("<strong>Name</strong>      <strong>Size</strong>  \n");
        mexPrintf("statesdot [11 1]\n");
        mexPrintf("| xdot_E\n");
        mexPrintf("| ydot_E\n");
        mexPrintf("| zdot_E\n");
        mexPrintf("| vdot\n");
        mexPrintf("| phidot\n");
        mexPrintf("| gammadot\n");
        mexPrintf("| psidot\n");
        mexPrintf("| Wdot\n");
        mexPrintf("| Pdot\n");
        mexPrintf("| Jsdot\n");
        mexPrintf("| ndot\n");
        mexPrintf("\n");
        mexPrintf("outputs   [7 1] \n");
        mexPrintf("| alpha\n");
        mexPrintf("| CL\n");
        mexPrintf("| CD\n");
        mexPrintf("| T\n");
        mexPrintf("| TSFC\n");
        mexPrintf("| ng\n");
        mexPrintf("| Wneg\n");
        mexPrintf("\n");

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
        mxSetField(plhs[0], 0, names[3], mxCreateString("OptimalManeuver"));
        mxSetField(plhs[0], 0, names[4], mxCreateString("SIMULATION_MODEL"));
        mxSetField(plhs[0], 0, names[5], mxCreateString("falcon.ModelWrapper"));

        struct_inputs = mxCreateStructMatrix(2,1,7,i_names);

        mxSetField(struct_inputs, 0, i_names[0], mxCreateDoubleScalar(11));
        mxSetField(struct_inputs, 0, i_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_inputs, 0, i_names[2], mxCreateString("states"));
        mxSetField(struct_inputs, 0, i_names[4], mxCreateString("STATE"));
        mxSetField(struct_inputs, 0, i_names[5], mxCreateDoubleScalar(0));
        mxSetField(struct_inputs, 0, i_names[6], mxCreateString("double"));
        mx = mxCreateCellMatrix(11, 1);
        mxSetCell(mx, 0,  mxCreateString("x_E"));
        mxSetCell(mx, 1,  mxCreateString("y_E"));
        mxSetCell(mx, 2,  mxCreateString("z_E"));
        mxSetCell(mx, 3,  mxCreateString("v"));
        mxSetCell(mx, 4,  mxCreateString("phi"));
        mxSetCell(mx, 5,  mxCreateString("gamma"));
        mxSetCell(mx, 6,  mxCreateString("psi"));
        mxSetCell(mx, 7,  mxCreateString("W"));
        mxSetCell(mx, 8,  mxCreateString("P"));
        mxSetCell(mx, 9,  mxCreateString("Js"));
        mxSetCell(mx, 10,  mxCreateString("n"));
        mxSetField(struct_inputs, 0, i_names[3], mx);

        mxSetField(struct_inputs, 1, i_names[0], mxCreateDoubleScalar(3));
        mxSetField(struct_inputs, 1, i_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_inputs, 1, i_names[2], mxCreateString("controls"));
        mxSetField(struct_inputs, 1, i_names[4], mxCreateString("CONTROL"));
        mxSetField(struct_inputs, 1, i_names[5], mxCreateDoubleScalar(0));
        mxSetField(struct_inputs, 1, i_names[6], mxCreateString("double"));
        mx = mxCreateCellMatrix(3, 1);
        mxSetCell(mx, 0,  mxCreateString("Pcom"));
        mxSetCell(mx, 1,  mxCreateString("Jscom"));
        mxSetCell(mx, 2,  mxCreateString("ncom"));
        mxSetField(struct_inputs, 1, i_names[3], mx);
        mxSetField(plhs[0], 0, names[0], struct_inputs);

        struct_outputs = mxCreateStructMatrix(2,1,7,o_names);

        mxSetField(struct_outputs, 0, o_names[0], mxCreateDoubleScalar(11));
        mxSetField(struct_outputs, 0, o_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_outputs, 0, o_names[2], mxCreateString("statesdot"));
        mxSetField(struct_outputs, 0, o_names[4], mxCreateString("STATEDOT"));
        mx = mxCreateDoubleMatrix(11, 14, mxREAL);
        jacTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(jacTemp, 154, 0);
        jacTemp[25] = 1.000000;
        jacTemp[26] = 1.000000;
        jacTemp[27] = 1.000000;
        jacTemp[28] = 1.000000;
        jacTemp[29] = 1.000000;
        jacTemp[33] = 1.000000;
        jacTemp[34] = 1.000000;
        jacTemp[35] = 1.000000;
        jacTemp[36] = 1.000000;
        jacTemp[37] = 1.000000;
        jacTemp[38] = 1.000000;
        jacTemp[39] = 1.000000;
        jacTemp[40] = 1.000000;
        jacTemp[48] = 1.000000;
        jacTemp[49] = 1.000000;
        jacTemp[50] = 1.000000;
        jacTemp[55] = 1.000000;
        jacTemp[56] = 1.000000;
        jacTemp[57] = 1.000000;
        jacTemp[58] = 1.000000;
        jacTemp[59] = 1.000000;
        jacTemp[60] = 1.000000;
        jacTemp[61] = 1.000000;
        jacTemp[66] = 1.000000;
        jacTemp[67] = 1.000000;
        jacTemp[80] = 1.000000;
        jacTemp[81] = 1.000000;
        jacTemp[82] = 1.000000;
        jacTemp[83] = 1.000000;
        jacTemp[92] = 1.000000;
        jacTemp[96] = 1.000000;
        jacTemp[102] = 1.000000;
        jacTemp[103] = 1.000000;
        jacTemp[104] = 1.000000;
        jacTemp[105] = 1.000000;
        jacTemp[106] = 1.000000;
        jacTemp[108] = 1.000000;
        jacTemp[113] = 1.000000;
        jacTemp[114] = 1.000000;
        jacTemp[115] = 1.000000;
        jacTemp[116] = 1.000000;
        jacTemp[120] = 1.000000;
        jacTemp[129] = 1.000000;
        jacTemp[141] = 1.000000;
        jacTemp[153] = 1.000000;
        mxSetField(struct_outputs, 0, o_names[5], mx);
        mx = mxCreateDoubleMatrix(0, 0, mxREAL);
        hessTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(hessTemp, 0, 0);
        mxSetField(struct_outputs, 0, o_names[6], mx);
        mx = mxCreateCellMatrix(11, 1);
        mxSetCell(mx, 0,  mxCreateString("xdot_E"));
        mxSetCell(mx, 1,  mxCreateString("ydot_E"));
        mxSetCell(mx, 2,  mxCreateString("zdot_E"));
        mxSetCell(mx, 3,  mxCreateString("vdot"));
        mxSetCell(mx, 4,  mxCreateString("phidot"));
        mxSetCell(mx, 5,  mxCreateString("gammadot"));
        mxSetCell(mx, 6,  mxCreateString("psidot"));
        mxSetCell(mx, 7,  mxCreateString("Wdot"));
        mxSetCell(mx, 8,  mxCreateString("Pdot"));
        mxSetCell(mx, 9,  mxCreateString("Jsdot"));
        mxSetCell(mx, 10,  mxCreateString("ndot"));
        mxSetField(struct_outputs, 0, o_names[3], mx);

        mxSetField(struct_outputs, 1, o_names[0], mxCreateDoubleScalar(7));
        mxSetField(struct_outputs, 1, o_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_outputs, 1, o_names[2], mxCreateString("outputs"));
        mxSetField(struct_outputs, 1, o_names[4], mxCreateString("OUTPUT"));
        mx = mxCreateDoubleMatrix(7, 14, mxREAL);
        jacTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(jacTemp, 98, 0);
        jacTemp[14] = 1.000000;
        jacTemp[15] = 1.000000;
        jacTemp[16] = 1.000000;
        jacTemp[17] = 1.000000;
        jacTemp[19] = 1.000000;
        jacTemp[21] = 1.000000;
        jacTemp[22] = 1.000000;
        jacTemp[23] = 1.000000;
        jacTemp[24] = 1.000000;
        jacTemp[26] = 1.000000;
        jacTemp[49] = 1.000000;
        jacTemp[50] = 1.000000;
        jacTemp[51] = 1.000000;
        jacTemp[54] = 1.000000;
        jacTemp[55] = 1.000000;
        jacTemp[66] = 1.000000;
        jacTemp[68] = 1.000000;
        jacTemp[70] = 1.000000;
        jacTemp[71] = 1.000000;
        jacTemp[72] = 1.000000;
        jacTemp[75] = 1.000000;
        mxSetField(struct_outputs, 1, o_names[5], mx);
        mx = mxCreateDoubleMatrix(0, 0, mxREAL);
        hessTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(hessTemp, 0, 0);
        mxSetField(struct_outputs, 1, o_names[6], mx);
        mx = mxCreateCellMatrix(7, 1);
        mxSetCell(mx, 0,  mxCreateString("alpha"));
        mxSetCell(mx, 1,  mxCreateString("CL"));
        mxSetCell(mx, 2,  mxCreateString("CD"));
        mxSetCell(mx, 3,  mxCreateString("T"));
        mxSetCell(mx, 4,  mxCreateString("TSFC"));
        mxSetCell(mx, 5,  mxCreateString("ng"));
        mxSetCell(mx, 6,  mxCreateString("Wneg"));
        mxSetField(struct_outputs, 1, o_names[3], mx);
        mxSetField(plhs[0], 0, names[1], struct_outputs);
        struct_info = mxCreateStructMatrix(1,1,7,info_names);
        mxSetField(struct_info, 0, info_names[0], mxCreateString("25-Jan-2023 22:49:00"));
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
    if (nrhs < 2 || nrhs > 2) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error","Wrong number of input arguments for OptimalManeuver. The required number of input arguments is 2. Call the mex file with no input arguments to get exact input & output type information.");
    }

    // Extract Inputs

    if (!mxIsClass(array_states, "double")) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Wrong argument type: states must be double, found %s.", mxGetClassName(array_states));
    }
    double const *states = reinterpret_cast<double const *>(mxGetPr(array_states));

    if (!mxIsClass(array_controls, "double")) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Wrong argument type: controls must be double, found %s.", mxGetClassName(array_controls));
    }
    double const *controls = reinterpret_cast<double const *>(mxGetPr(array_controls));
    nEval = mxGetN(array_states);

    // Check Input Dimensions
    // Input_1: states
    if (mxGetM(array_states) != DIM_M_STATES) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of rows for input 1 with name \"states\" should be 11 but is %i.", mxGetM(prhs[0]));
    }
    if (mxGetN(array_states) != nEval) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of columns for input 1 with name \"states\" should be equal to the number of time steps (%i) but is %i.", nEval, mxGetN(prhs[0]));
    }
    // Input_2: controls
    if (mxGetM(array_controls) != DIM_M_CONTROLS) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of rows for input 2 with name \"controls\" should be 3 but is %i.", mxGetM(prhs[1]));
    }
    if (mxGetN(array_controls) != nEval) {
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of columns for input 2 with name \"controls\" should be equal to the number of time steps (%i) but is %i.", nEval, mxGetN(prhs[1]));
    }

    // Prepare jacobian and hessian dimensions
    // Output_1: statesdot
    plhs[0] = mxCreateDoubleMatrix(11, 1*nEval, mxREAL);
    statesdot = mxGetPr(plhs[0]);
    // Output_jacobian_1: statesdot
    j_dim_statesdot[0] = NUM_OUT_STATESDOT;
    j_dim_statesdot[1] = N_IDP;
    j_dim_statesdot[2] = nEval;
    plhs[2] = mxCreateNumericArray(3,j_dim_statesdot,mxDOUBLE_CLASS,mxREAL);
    j_statesdot = mxGetPr(plhs[2]);

    // Output_2: outputs
    plhs[1] = mxCreateDoubleMatrix(7, 1*nEval, mxREAL);
    outputs = mxGetPr(plhs[1]);
    // Output_jacobian_2: outputs
    j_dim_outputs[0] = NUM_OUT_OUTPUTS;
    j_dim_outputs[1] = N_IDP;
    j_dim_outputs[2] = nEval;
    plhs[3] = mxCreateNumericArray(3,j_dim_outputs,mxDOUBLE_CLASS,mxREAL);
    j_outputs = mxGetPr(plhs[3]);

    // Call Model in for-loop
    for (int iEval = 0; iEval < nEval; iEval++) {
        mb_OptimalManeuver(
        &states[DIM_M_STATES * iEval],
        &controls[DIM_M_CONTROLS * iEval],
        &statesdot[NUM_OUT_STATESDOT * iEval],
        &outputs[NUM_OUT_OUTPUTS * iEval],
        &j_statesdot[NUM_OUT_STATESDOT * N_IDP * iEval],
        &j_outputs[NUM_OUT_OUTPUTS * N_IDP * iEval]
        );
    }
    // Remove Temporary Variables - Variable Size Data

}
catch (std::exception& e)
{
    mexErrMsgIdAndTxt("MATLAB:callModel:Error", "%s", e.what());
}
