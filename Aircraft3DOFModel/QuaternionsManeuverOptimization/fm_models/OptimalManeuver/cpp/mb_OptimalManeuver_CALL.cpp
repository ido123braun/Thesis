// Call Function generated automatically on 22-Jan-2023 21:55:40
// Created on LAPTOP-P2LD3FGQ
#include "cstdint"
#include "mex.h"
#include "math.h"
#include "algorithm"
#include "mb_OptimalManeuver.h"
#include "mb_OptimalManeuver_types.h"

// Constants - Input Dimensions
#define DIM_M_STATES 14
#define DIM_M_CONTROLS 3

// Constants - Number of Independent Variables (non discrete control case)
#define N_IDP 17

// Constants - Output Sizes
#define NUM_OUT_STATESDOT 14
#define NUM_OUT_OUTPUTS 16

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
        mexPrintf("- Date:                22-Jan-2023 21:55:40\n");
        mexPrintf("- Computer:            LAPTOP-P2LD3FGQ\n");
        mexPrintf("- MATLAB-Version:      9.10.0.1602886 (R2021a)\n");
        mexPrintf("- DerivativeOrder:     1\n");
        mexPrintf("- Jacobian Calculation:true\n");
        mexPrintf("- Hessian-Calculation: false\n");
        mexPrintf("\n");

        // Input Information
        mexPrintf("<strong>Input Information</strong>\n");
        mexPrintf("<strong>Name</strong>     <strong>Size</strong>   <strong>DataType</strong> <strong>Derivative</strong> <strong>MultipleTimeEval</strong> <strong>VariableSize</strong>\n");
        mexPrintf("states   [14 1] double       true             true        false\n");
        mexPrintf("| x_E\n");
        mexPrintf("| y_E\n");
        mexPrintf("| z_E\n");
        mexPrintf("| vx_E\n");
        mexPrintf("| vy_E\n");
        mexPrintf("| vz_E\n");
        mexPrintf("| e0\n");
        mexPrintf("| e1\n");
        mexPrintf("| e2\n");
        mexPrintf("| e3\n");
        mexPrintf("| W_P\n");
        mexPrintf("| phidot_P\n");
        mexPrintf("| Js_P\n");
        mexPrintf("| n_P\n");
        mexPrintf("\n");
        mexPrintf("controls [3 1]  double       true             true        false\n");
        mexPrintf("| phidotcom_P\n");
        mexPrintf("| Jscom_P\n");
        mexPrintf("| ncom_P\n");
        mexPrintf("\n");
        mexPrintf("\n");

        // Output Information
        mexPrintf("<strong>Output Information</strong>\n");
        mexPrintf("<strong>Name</strong>      <strong>Size</strong>  \n");
        mexPrintf("statesdot [14 1]\n");
        mexPrintf("| xdot_E\n");
        mexPrintf("| ydot_E\n");
        mexPrintf("| zdot_E\n");
        mexPrintf("| vxdot_E\n");
        mexPrintf("| vydot_E\n");
        mexPrintf("| vzdot_E\n");
        mexPrintf("| e0dot\n");
        mexPrintf("| e1dot\n");
        mexPrintf("| e2dot\n");
        mexPrintf("| e3dot\n");
        mexPrintf("| Wdot_P\n");
        mexPrintf("| phidot2_P\n");
        mexPrintf("| Jsdot_P\n");
        mexPrintf("| ndot_P\n");
        mexPrintf("\n");
        mexPrintf("outputs   [16 1]\n");
        mexPrintf("| phi_P\n");
        mexPrintf("| gamma_P\n");
        mexPrintf("| psi_P\n");
        mexPrintf("| alpha\n");
        mexPrintf("| CL\n");
        mexPrintf("| CD\n");
        mexPrintf("| T\n");
        mexPrintf("| TSFC\n");
        mexPrintf("| rho_P\n");
        mexPrintf("| Omega1_P\n");
        mexPrintf("| Omega2_P\n");
        mexPrintf("| Omega3_P\n");
        mexPrintf("| e0dot\n");
        mexPrintf("| e1dot\n");
        mexPrintf("| e2dot\n");
        mexPrintf("| e3dot\n");
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

        mxSetField(struct_inputs, 0, i_names[0], mxCreateDoubleScalar(14));
        mxSetField(struct_inputs, 0, i_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_inputs, 0, i_names[2], mxCreateString("states"));
        mxSetField(struct_inputs, 0, i_names[4], mxCreateString("STATE"));
        mxSetField(struct_inputs, 0, i_names[5], mxCreateDoubleScalar(0));
        mxSetField(struct_inputs, 0, i_names[6], mxCreateString("double"));
        mx = mxCreateCellMatrix(14, 1);
        mxSetCell(mx, 0,  mxCreateString("x_E"));
        mxSetCell(mx, 1,  mxCreateString("y_E"));
        mxSetCell(mx, 2,  mxCreateString("z_E"));
        mxSetCell(mx, 3,  mxCreateString("vx_E"));
        mxSetCell(mx, 4,  mxCreateString("vy_E"));
        mxSetCell(mx, 5,  mxCreateString("vz_E"));
        mxSetCell(mx, 6,  mxCreateString("e0"));
        mxSetCell(mx, 7,  mxCreateString("e1"));
        mxSetCell(mx, 8,  mxCreateString("e2"));
        mxSetCell(mx, 9,  mxCreateString("e3"));
        mxSetCell(mx, 10,  mxCreateString("W_P"));
        mxSetCell(mx, 11,  mxCreateString("phidot_P"));
        mxSetCell(mx, 12,  mxCreateString("Js_P"));
        mxSetCell(mx, 13,  mxCreateString("n_P"));
        mxSetField(struct_inputs, 0, i_names[3], mx);

        mxSetField(struct_inputs, 1, i_names[0], mxCreateDoubleScalar(3));
        mxSetField(struct_inputs, 1, i_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_inputs, 1, i_names[2], mxCreateString("controls"));
        mxSetField(struct_inputs, 1, i_names[4], mxCreateString("CONTROL"));
        mxSetField(struct_inputs, 1, i_names[5], mxCreateDoubleScalar(0));
        mxSetField(struct_inputs, 1, i_names[6], mxCreateString("double"));
        mx = mxCreateCellMatrix(3, 1);
        mxSetCell(mx, 0,  mxCreateString("phidotcom_P"));
        mxSetCell(mx, 1,  mxCreateString("Jscom_P"));
        mxSetCell(mx, 2,  mxCreateString("ncom_P"));
        mxSetField(struct_inputs, 1, i_names[3], mx);
        mxSetField(plhs[0], 0, names[0], struct_inputs);

        struct_outputs = mxCreateStructMatrix(2,1,7,o_names);

        mxSetField(struct_outputs, 0, o_names[0], mxCreateDoubleScalar(14));
        mxSetField(struct_outputs, 0, o_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_outputs, 0, o_names[2], mxCreateString("statesdot"));
        mxSetField(struct_outputs, 0, o_names[4], mxCreateString("STATEDOT"));
        mx = mxCreateDoubleMatrix(14, 17, mxREAL);
        jacTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(jacTemp, 238, 0);
        jacTemp[31] = 1.000000;
        jacTemp[32] = 1.000000;
        jacTemp[33] = 1.000000;
        jacTemp[34] = 1.000000;
        jacTemp[35] = 1.000000;
        jacTemp[36] = 1.000000;
        jacTemp[37] = 1.000000;
        jacTemp[38] = 1.000000;
        jacTemp[42] = 1.000000;
        jacTemp[45] = 1.000000;
        jacTemp[46] = 1.000000;
        jacTemp[47] = 1.000000;
        jacTemp[48] = 1.000000;
        jacTemp[49] = 1.000000;
        jacTemp[50] = 1.000000;
        jacTemp[51] = 1.000000;
        jacTemp[52] = 1.000000;
        jacTemp[57] = 1.000000;
        jacTemp[59] = 1.000000;
        jacTemp[60] = 1.000000;
        jacTemp[61] = 1.000000;
        jacTemp[62] = 1.000000;
        jacTemp[63] = 1.000000;
        jacTemp[64] = 1.000000;
        jacTemp[65] = 1.000000;
        jacTemp[66] = 1.000000;
        jacTemp[72] = 1.000000;
        jacTemp[73] = 1.000000;
        jacTemp[74] = 1.000000;
        jacTemp[75] = 1.000000;
        jacTemp[76] = 1.000000;
        jacTemp[77] = 1.000000;
        jacTemp[78] = 1.000000;
        jacTemp[79] = 1.000000;
        jacTemp[80] = 1.000000;
        jacTemp[87] = 1.000000;
        jacTemp[88] = 1.000000;
        jacTemp[89] = 1.000000;
        jacTemp[90] = 1.000000;
        jacTemp[91] = 1.000000;
        jacTemp[92] = 1.000000;
        jacTemp[93] = 1.000000;
        jacTemp[101] = 1.000000;
        jacTemp[102] = 1.000000;
        jacTemp[103] = 1.000000;
        jacTemp[104] = 1.000000;
        jacTemp[105] = 1.000000;
        jacTemp[106] = 1.000000;
        jacTemp[107] = 1.000000;
        jacTemp[115] = 1.000000;
        jacTemp[116] = 1.000000;
        jacTemp[117] = 1.000000;
        jacTemp[118] = 1.000000;
        jacTemp[119] = 1.000000;
        jacTemp[120] = 1.000000;
        jacTemp[121] = 1.000000;
        jacTemp[129] = 1.000000;
        jacTemp[130] = 1.000000;
        jacTemp[131] = 1.000000;
        jacTemp[132] = 1.000000;
        jacTemp[133] = 1.000000;
        jacTemp[134] = 1.000000;
        jacTemp[135] = 1.000000;
        jacTemp[143] = 1.000000;
        jacTemp[144] = 1.000000;
        jacTemp[145] = 1.000000;
        jacTemp[146] = 1.000000;
        jacTemp[147] = 1.000000;
        jacTemp[148] = 1.000000;
        jacTemp[149] = 1.000000;
        jacTemp[160] = 1.000000;
        jacTemp[161] = 1.000000;
        jacTemp[162] = 1.000000;
        jacTemp[163] = 1.000000;
        jacTemp[165] = 1.000000;
        jacTemp[171] = 1.000000;
        jacTemp[172] = 1.000000;
        jacTemp[173] = 1.000000;
        jacTemp[174] = 1.000000;
        jacTemp[175] = 1.000000;
        jacTemp[176] = 1.000000;
        jacTemp[177] = 1.000000;
        jacTemp[178] = 1.000000;
        jacTemp[180] = 1.000000;
        jacTemp[185] = 1.000000;
        jacTemp[186] = 1.000000;
        jacTemp[187] = 1.000000;
        jacTemp[188] = 1.000000;
        jacTemp[189] = 1.000000;
        jacTemp[190] = 1.000000;
        jacTemp[191] = 1.000000;
        jacTemp[195] = 1.000000;
        jacTemp[207] = 1.000000;
        jacTemp[222] = 1.000000;
        jacTemp[237] = 1.000000;
        mxSetField(struct_outputs, 0, o_names[5], mx);
        mx = mxCreateDoubleMatrix(0, 0, mxREAL);
        hessTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(hessTemp, 0, 0);
        mxSetField(struct_outputs, 0, o_names[6], mx);
        mx = mxCreateCellMatrix(14, 1);
        mxSetCell(mx, 0,  mxCreateString("xdot_E"));
        mxSetCell(mx, 1,  mxCreateString("ydot_E"));
        mxSetCell(mx, 2,  mxCreateString("zdot_E"));
        mxSetCell(mx, 3,  mxCreateString("vxdot_E"));
        mxSetCell(mx, 4,  mxCreateString("vydot_E"));
        mxSetCell(mx, 5,  mxCreateString("vzdot_E"));
        mxSetCell(mx, 6,  mxCreateString("e0dot"));
        mxSetCell(mx, 7,  mxCreateString("e1dot"));
        mxSetCell(mx, 8,  mxCreateString("e2dot"));
        mxSetCell(mx, 9,  mxCreateString("e3dot"));
        mxSetCell(mx, 10,  mxCreateString("Wdot_P"));
        mxSetCell(mx, 11,  mxCreateString("phidot2_P"));
        mxSetCell(mx, 12,  mxCreateString("Jsdot_P"));
        mxSetCell(mx, 13,  mxCreateString("ndot_P"));
        mxSetField(struct_outputs, 0, o_names[3], mx);

        mxSetField(struct_outputs, 1, o_names[0], mxCreateDoubleScalar(16));
        mxSetField(struct_outputs, 1, o_names[1], mxCreateDoubleScalar(1));
        mxSetField(struct_outputs, 1, o_names[2], mxCreateString("outputs"));
        mxSetField(struct_outputs, 1, o_names[4], mxCreateString("OUTPUT"));
        mx = mxCreateDoubleMatrix(16, 17, mxREAL);
        jacTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(jacTemp, 272, 0);
        jacTemp[35] = 1.000000;
        jacTemp[36] = 1.000000;
        jacTemp[37] = 1.000000;
        jacTemp[38] = 1.000000;
        jacTemp[40] = 1.000000;
        jacTemp[41] = 1.000000;
        jacTemp[42] = 1.000000;
        jacTemp[43] = 1.000000;
        jacTemp[44] = 1.000000;
        jacTemp[45] = 1.000000;
        jacTemp[46] = 1.000000;
        jacTemp[47] = 1.000000;
        jacTemp[49] = 1.000000;
        jacTemp[50] = 1.000000;
        jacTemp[51] = 1.000000;
        jacTemp[52] = 1.000000;
        jacTemp[53] = 1.000000;
        jacTemp[54] = 1.000000;
        jacTemp[57] = 1.000000;
        jacTemp[58] = 1.000000;
        jacTemp[59] = 1.000000;
        jacTemp[60] = 1.000000;
        jacTemp[61] = 1.000000;
        jacTemp[62] = 1.000000;
        jacTemp[63] = 1.000000;
        jacTemp[65] = 1.000000;
        jacTemp[66] = 1.000000;
        jacTemp[67] = 1.000000;
        jacTemp[68] = 1.000000;
        jacTemp[69] = 1.000000;
        jacTemp[70] = 1.000000;
        jacTemp[73] = 1.000000;
        jacTemp[74] = 1.000000;
        jacTemp[75] = 1.000000;
        jacTemp[76] = 1.000000;
        jacTemp[77] = 1.000000;
        jacTemp[78] = 1.000000;
        jacTemp[79] = 1.000000;
        jacTemp[81] = 1.000000;
        jacTemp[83] = 1.000000;
        jacTemp[84] = 1.000000;
        jacTemp[85] = 1.000000;
        jacTemp[86] = 1.000000;
        jacTemp[89] = 1.000000;
        jacTemp[90] = 1.000000;
        jacTemp[91] = 1.000000;
        jacTemp[92] = 1.000000;
        jacTemp[93] = 1.000000;
        jacTemp[94] = 1.000000;
        jacTemp[95] = 1.000000;
        jacTemp[96] = 1.000000;
        jacTemp[105] = 1.000000;
        jacTemp[106] = 1.000000;
        jacTemp[107] = 1.000000;
        jacTemp[108] = 1.000000;
        jacTemp[109] = 1.000000;
        jacTemp[110] = 1.000000;
        jacTemp[111] = 1.000000;
        jacTemp[112] = 1.000000;
        jacTemp[121] = 1.000000;
        jacTemp[122] = 1.000000;
        jacTemp[123] = 1.000000;
        jacTemp[124] = 1.000000;
        jacTemp[125] = 1.000000;
        jacTemp[126] = 1.000000;
        jacTemp[127] = 1.000000;
        jacTemp[128] = 1.000000;
        jacTemp[137] = 1.000000;
        jacTemp[138] = 1.000000;
        jacTemp[139] = 1.000000;
        jacTemp[140] = 1.000000;
        jacTemp[141] = 1.000000;
        jacTemp[142] = 1.000000;
        jacTemp[143] = 1.000000;
        jacTemp[144] = 1.000000;
        jacTemp[153] = 1.000000;
        jacTemp[154] = 1.000000;
        jacTemp[155] = 1.000000;
        jacTemp[156] = 1.000000;
        jacTemp[157] = 1.000000;
        jacTemp[158] = 1.000000;
        jacTemp[159] = 1.000000;
        jacTemp[163] = 1.000000;
        jacTemp[164] = 1.000000;
        jacTemp[165] = 1.000000;
        jacTemp[169] = 1.000000;
        jacTemp[170] = 1.000000;
        jacTemp[171] = 1.000000;
        jacTemp[172] = 1.000000;
        jacTemp[173] = 1.000000;
        jacTemp[174] = 1.000000;
        jacTemp[175] = 1.000000;
        jacTemp[185] = 1.000000;
        jacTemp[188] = 1.000000;
        jacTemp[189] = 1.000000;
        jacTemp[190] = 1.000000;
        jacTemp[191] = 1.000000;
        jacTemp[198] = 1.000000;
        jacTemp[201] = 1.000000;
        jacTemp[202] = 1.000000;
        jacTemp[203] = 1.000000;
        jacTemp[204] = 1.000000;
        jacTemp[205] = 1.000000;
        jacTemp[206] = 1.000000;
        jacTemp[207] = 1.000000;
        jacTemp[211] = 1.000000;
        jacTemp[212] = 1.000000;
        jacTemp[213] = 1.000000;
        jacTemp[217] = 1.000000;
        jacTemp[218] = 1.000000;
        jacTemp[219] = 1.000000;
        jacTemp[220] = 1.000000;
        jacTemp[221] = 1.000000;
        jacTemp[222] = 1.000000;
        jacTemp[223] = 1.000000;
        mxSetField(struct_outputs, 1, o_names[5], mx);
        mx = mxCreateDoubleMatrix(0, 0, mxREAL);
        hessTemp = reinterpret_cast<double *>(mxGetPr(mx));
        std::fill_n(hessTemp, 0, 0);
        mxSetField(struct_outputs, 1, o_names[6], mx);
        mx = mxCreateCellMatrix(16, 1);
        mxSetCell(mx, 0,  mxCreateString("phi_P"));
        mxSetCell(mx, 1,  mxCreateString("gamma_P"));
        mxSetCell(mx, 2,  mxCreateString("psi_P"));
        mxSetCell(mx, 3,  mxCreateString("alpha"));
        mxSetCell(mx, 4,  mxCreateString("CL"));
        mxSetCell(mx, 5,  mxCreateString("CD"));
        mxSetCell(mx, 6,  mxCreateString("T"));
        mxSetCell(mx, 7,  mxCreateString("TSFC"));
        mxSetCell(mx, 8,  mxCreateString("rho_P"));
        mxSetCell(mx, 9,  mxCreateString("Omega1_P"));
        mxSetCell(mx, 10,  mxCreateString("Omega2_P"));
        mxSetCell(mx, 11,  mxCreateString("Omega3_P"));
        mxSetCell(mx, 12,  mxCreateString("e0dot"));
        mxSetCell(mx, 13,  mxCreateString("e1dot"));
        mxSetCell(mx, 14,  mxCreateString("e2dot"));
        mxSetCell(mx, 15,  mxCreateString("e3dot"));
        mxSetField(struct_outputs, 1, o_names[3], mx);
        mxSetField(plhs[0], 0, names[1], struct_outputs);
        struct_info = mxCreateStructMatrix(1,1,7,info_names);
        mxSetField(struct_info, 0, info_names[0], mxCreateString("22-Jan-2023 21:55:40"));
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
        mexErrMsgIdAndTxt("MATLAB:callModel:Error", "Number of rows for input 1 with name \"states\" should be 14 but is %i.", mxGetM(prhs[0]));
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
    plhs[0] = mxCreateDoubleMatrix(14, 1*nEval, mxREAL);
    statesdot = mxGetPr(plhs[0]);
    // Output_jacobian_1: statesdot
    j_dim_statesdot[0] = NUM_OUT_STATESDOT;
    j_dim_statesdot[1] = N_IDP;
    j_dim_statesdot[2] = nEval;
    plhs[2] = mxCreateNumericArray(3,j_dim_statesdot,mxDOUBLE_CLASS,mxREAL);
    j_statesdot = mxGetPr(plhs[2]);

    // Output_2: outputs
    plhs[1] = mxCreateDoubleMatrix(16, 1*nEval, mxREAL);
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
