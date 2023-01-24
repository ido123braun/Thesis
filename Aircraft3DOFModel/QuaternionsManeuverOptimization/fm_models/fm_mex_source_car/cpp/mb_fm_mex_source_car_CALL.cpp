// Call Function generated automatically on 25-Mar-2022 18:01:58
// Created on LAPTOP-P2LD3FGQ
#include "mex.h"
#include "math.h"
#include "mb_fm_mex_source_car.h"

// Constants - Input Dimensions
#define DIM_M_STATES 4
#define DIM_M_CONTROLS 2

// Constants - Number of Independent Variables (non discrete control case)
#define N_IDP 6

// Constants - Output Sizes
#define NUM_OUT_STATESDOT 4
#define NUM_OUT_OUTPUTS 2

// Function Header
void mexFunction( int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[] ) {
	
	// Define Inputs
	double *states;
	double *controls;
	
	// Declare number of time steps
	int nEval;
	
	// Declare Outputs
	double *statesdot, *j_statesdot;
	mwSize j_dim_statesdot[3];
	double *outputs, *j_outputs;
	mwSize j_dim_outputs[3];
	
	// Write Call Information
	if (nrhs == 0 && nlhs == 0) {
		// System Information
		mexPrintf("<strong>System Information</strong>\n");
		mexPrintf("Mex file created by Derivative Model Builder\n");
		mexPrintf("- Date:                25-Mar-2022 18:01:58\n");
		mexPrintf("- Computer:            LAPTOP-P2LD3FGQ\n");
		mexPrintf("- MATLAB-Version:      9.10.0.1602886 (R2021a)\n");
		mexPrintf("- Hessian-Calculation: false\n");
		mexPrintf("\n");
		
		// Input Information
		mexPrintf("<strong>Input Information</strong>\n");
		mexPrintf("<strong>Name</strong>     <strong>Size</strong>  <strong>Derivative</strong> <strong>MultipleTimeEval</strong> <strong>VariableSize</strong>\n");
		mexPrintf("states   [4 1]       true             true        false\n");
		mexPrintf("| x\n");
		mexPrintf("| y\n");
		mexPrintf("| V\n");
		mexPrintf("| chi\n");
		mexPrintf("\n");
		mexPrintf("controls [2 1]       true             true        false\n");
		mexPrintf("| Vdot\n");
		mexPrintf("| chidot\n");
		mexPrintf("\n");
		mexPrintf("\n");
		
		// Output Information
		mexPrintf("<strong>Output Information</strong>\n");
		mexPrintf("<strong>Name</strong>      <strong>Size</strong> \n");
		mexPrintf("statesdot [4 1]\n");
		mexPrintf("outputs   [2 1]\n");
		mexPrintf("| dummyout\n");
		mexPrintf("| dummy1\n");
		mexPrintf("\n");
		
		return;
	}
	else if (nrhs == 0 && nlhs == 1) {
		const char *names[] = {"input", "output", "info", "name", "type"};
		const char *i_names[] = {"m", "n","name","argnames","type", "groupindex"};
		const char *o_names[] = {"m", "n","name","argnames","type","jac_sparsity","hess_sparsity"};
		mxArray *struct_inputs;
		mxArray *struct_outputs;
		const char *info_names[] = {"Date", "Computer","MATLAB","Hessian"};
		mxArray *struct_info;
		mxArray *mx;
		double* jac_hess;
		plhs[0] = mxCreateStructMatrix(1,1,5,names);
		mxSetField(plhs[0], 0, names[3], mxCreateString("fm_mex_source_car"));
		mxSetField(plhs[0], 0, names[4], mxCreateString("SIMULATION_MODEL"));
		struct_inputs = mxCreateStructMatrix(2,1,6,i_names);
		mxSetField(struct_inputs, 0, i_names[0], mxCreateDoubleScalar(4));
		mxSetField(struct_inputs, 0, i_names[1], mxCreateDoubleScalar(1));
		mxSetField(struct_inputs, 0, i_names[2], mxCreateString("states"));
		mxSetField(struct_inputs, 0, i_names[4], mxCreateString("STATE"));
		mxSetField(struct_inputs, 0, i_names[5], mxCreateDoubleScalar(0));
		mx = mxCreateCellMatrix(4, 1);
		mxSetCell(mx, 0,  mxCreateString("x"));
		mxSetCell(mx, 1,  mxCreateString("y"));
		mxSetCell(mx, 2,  mxCreateString("V"));
		mxSetCell(mx, 3,  mxCreateString("chi"));
		mxSetField(struct_inputs, 0, i_names[3], mx);
		mxSetField(struct_inputs, 1, i_names[0], mxCreateDoubleScalar(2));
		mxSetField(struct_inputs, 1, i_names[1], mxCreateDoubleScalar(1));
		mxSetField(struct_inputs, 1, i_names[2], mxCreateString("controls"));
		mxSetField(struct_inputs, 1, i_names[4], mxCreateString("CONTROL"));
		mxSetField(struct_inputs, 1, i_names[5], mxCreateDoubleScalar(0));
		mx = mxCreateCellMatrix(2, 1);
		mxSetCell(mx, 0,  mxCreateString("Vdot"));
		mxSetCell(mx, 1,  mxCreateString("chidot"));
		mxSetField(struct_inputs, 1, i_names[3], mx);
		mxSetField(plhs[0], 0, names[0], struct_inputs);
		struct_outputs = mxCreateStructMatrix(2,1,7,o_names);
		mxSetField(struct_outputs, 0, o_names[0], mxCreateDoubleScalar(4));
		mxSetField(struct_outputs, 0, o_names[1], mxCreateDoubleScalar(1));
		mxSetField(struct_outputs, 0, o_names[2], mxCreateString("statesdot"));
		mxSetField(struct_outputs, 0, o_names[4], mxCreateString("STATEDOT"));
		mx = mxCreateDoubleMatrix(4, 6, mxREAL);
		jac_hess = mxGetPr(mx);
		jac_hess[0] = 0.000000;
		jac_hess[1] = 0.000000;
		jac_hess[2] = 0.000000;
		jac_hess[3] = 0.000000;
		jac_hess[4] = 0.000000;
		jac_hess[5] = 0.000000;
		jac_hess[6] = 0.000000;
		jac_hess[7] = 0.000000;
		jac_hess[8] = 1.000000;
		jac_hess[9] = 1.000000;
		jac_hess[10] = 0.000000;
		jac_hess[11] = 0.000000;
		jac_hess[12] = 1.000000;
		jac_hess[13] = 1.000000;
		jac_hess[14] = 0.000000;
		jac_hess[15] = 0.000000;
		jac_hess[16] = 0.000000;
		jac_hess[17] = 0.000000;
		jac_hess[18] = 1.000000;
		jac_hess[19] = 0.000000;
		jac_hess[20] = 0.000000;
		jac_hess[21] = 0.000000;
		jac_hess[22] = 0.000000;
		jac_hess[23] = 1.000000;
		mxSetField(struct_outputs, 0, o_names[5], mx);
		mx = mxCreateDoubleMatrix(0, 0, mxREAL);
		jac_hess = mxGetPr(mx);
		mxSetField(struct_outputs, 0, o_names[6], mx);
		mx = mxCreateCellMatrix(0,0);
		mxSetField(struct_outputs, 0, o_names[3], mx);
		mxSetField(struct_outputs, 1, o_names[0], mxCreateDoubleScalar(2));
		mxSetField(struct_outputs, 1, o_names[1], mxCreateDoubleScalar(1));
		mxSetField(struct_outputs, 1, o_names[2], mxCreateString("outputs"));
		mxSetField(struct_outputs, 1, o_names[4], mxCreateString("OUTPUT"));
		mx = mxCreateDoubleMatrix(2, 6, mxREAL);
		jac_hess = mxGetPr(mx);
		jac_hess[0] = 0.000000;
		jac_hess[1] = 0.000000;
		jac_hess[2] = 0.000000;
		jac_hess[3] = 0.000000;
		jac_hess[4] = 1.000000;
		jac_hess[5] = 1.000000;
		jac_hess[6] = 1.000000;
		jac_hess[7] = 0.000000;
		jac_hess[8] = 0.000000;
		jac_hess[9] = 0.000000;
		jac_hess[10] = 0.000000;
		jac_hess[11] = 0.000000;
		mxSetField(struct_outputs, 1, o_names[5], mx);
		mx = mxCreateDoubleMatrix(0, 0, mxREAL);
		jac_hess = mxGetPr(mx);
		mxSetField(struct_outputs, 1, o_names[6], mx);
		mx = mxCreateCellMatrix(2, 1);
		mxSetCell(mx, 0,  mxCreateString("dummyout"));
		mxSetCell(mx, 1,  mxCreateString("dummy1"));
		mxSetField(struct_outputs, 1, o_names[3], mx);
		mxSetField(plhs[0], 0, names[1], struct_outputs);
		struct_info = mxCreateStructMatrix(1,1,4,info_names);
		mxSetField(struct_info, 0, info_names[0], mxCreateString("25-Mar-2022 18:01:58"));
		mxSetField(struct_info, 0, info_names[1], mxCreateString("LAPTOP-P2LD3FGQ"));
		mxSetField(struct_info, 0, info_names[2], mxCreateString("9.10.0.1602886 (R2021a)"));
		mxSetField(struct_info, 0, info_names[3], mxCreateLogicalScalar(false));
		mxSetField(plhs[0], 0, names[2], struct_info);
		return;
	}
	
	// Check Number of Input Arguments
	if (nrhs < 2 || nrhs > 2) {
		mexErrMsgIdAndTxt("MATLAB:callModel:Error","Wrong number of input arguments for fm_mex_source_car. The required number of input arguments is 2. Call the mex file with no input arguments to get exact input & output type information.");
	}
	
	// Extract Inputs
	states = mxGetPr(prhs[0]);
	controls = mxGetPr(prhs[1]);
	nEval = mxGetN(prhs[0]);
	
	// Check Input Dimensions
	// Input_1: states
	if (mxGetM(prhs[0]) != DIM_M_STATES) {
		mexErrMsgIdAndTxt("MATLAB:callModel:Error","Number of rows for input 1 with name \"states\" should be 4 but is %i.", mxGetM(prhs[0]));
	}
	if (mxGetN(prhs[0]) != nEval) {
		mexErrMsgIdAndTxt("MATLAB:callModel:Error","Number of columns for input 1 with name \"states\" should be equal to the number of time steps (%i) but is %i.", nEval, mxGetN(prhs[0]));
	}
	// Input_2: controls
	if (mxGetM(prhs[1]) != DIM_M_CONTROLS) {
		mexErrMsgIdAndTxt("MATLAB:callModel:Error","Number of rows for input 2 with name \"controls\" should be 2 but is %i.", mxGetM(prhs[1]));
	}
	if (mxGetN(prhs[1]) != nEval) {
		mexErrMsgIdAndTxt("MATLAB:callModel:Error","Number of columns for input 2 with name \"controls\" should be equal to the number of time steps (%i) but is %i.", nEval, mxGetN(prhs[1]));
	}
	
	// Prepare jacobian and hessian dimensions
	// Output_1: statesdot
	plhs[0] = mxCreateDoubleMatrix(4, 1*nEval, mxREAL);
	statesdot = mxGetPr(plhs[0]);
	// Output_jacobian_1: statesdot
	j_dim_statesdot[0] = NUM_OUT_STATESDOT;
	j_dim_statesdot[1] = N_IDP;
	j_dim_statesdot[2] = nEval;
	plhs[2] = mxCreateNumericArray(3,j_dim_statesdot,mxDOUBLE_CLASS,mxREAL);
	j_statesdot = mxGetPr(plhs[2]);
	
	// Output_2: outputs
	plhs[1] = mxCreateDoubleMatrix(2, 1*nEval, mxREAL);
	outputs = mxGetPr(plhs[1]);
	// Output_jacobian_2: outputs
	j_dim_outputs[0] = NUM_OUT_OUTPUTS;
	j_dim_outputs[1] = N_IDP;
	j_dim_outputs[2] = nEval;
	plhs[3] = mxCreateNumericArray(3,j_dim_outputs,mxDOUBLE_CLASS,mxREAL);
	j_outputs = mxGetPr(plhs[3]);
	
	// Call Model in for-loop
	for (int iEval = 0; iEval < nEval; iEval++) {
		mb_fm_mex_source_car(
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
// End of File