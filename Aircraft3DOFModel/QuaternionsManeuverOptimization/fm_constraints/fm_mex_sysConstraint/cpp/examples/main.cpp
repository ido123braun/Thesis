//
// Academic License - for use in teaching, academic research, and meeting
// course requirements at degree granting institutions only.  Not for
// government, commercial, or other organizational use.
//
// main.cpp
//
// Code generation for function 'main'
//

/*************************************************************************/
/* This automatically generated example C++ main file shows how to call  */
/* entry-point functions that MATLAB Coder generated. You must customize */
/* this file for your application. Do not modify this file directly.     */
/* Instead, make a copy of this file, modify it, and integrate it into   */
/* your development environment.                                         */
/*                                                                       */
/* This file initializes entry-point function arguments to a default     */
/* size and value before calling the entry-point functions. It does      */
/* not store or use any values returned from the entry-point functions.  */
/* If necessary, it does pre-allocate memory for returned values.        */
/* You can use this file as a starting point for a main function that    */
/* you can deploy in your application.                                   */
/*                                                                       */
/* After you copy the file, and before you deploy it, you must make the  */
/* following changes:                                                    */
/* * For variable-size function arguments, change the example sizes to   */
/* the sizes that your application requires.                             */
/* * Change the example values of function arguments to the values that  */
/* your application requires.                                            */
/* * If the entry-point functions return values, store these values or   */
/* otherwise use them as required by your application.                   */
/*                                                                       */
/*************************************************************************/

// Include files
#include "main.h"
#include "mb_fm_mex_sysConstraint.h"

// Function Declarations
static void argInit_10x1_real_T(double result[10]);

static void argInit_12x1_real_T(double result[12]);

static void argInit_3x1_real_T(double result[3]);

static double argInit_real_T();

static void main_mb_fm_mex_sysConstraint();

// Function Definitions
static void argInit_10x1_real_T(double result[10])
{
  // Loop over the array to initialize each element.
  for (int idx0{0}; idx0 < 10; idx0++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx0] = argInit_real_T();
  }
}

static void argInit_12x1_real_T(double result[12])
{
  // Loop over the array to initialize each element.
  for (int idx0{0}; idx0 < 12; idx0++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx0] = argInit_real_T();
  }
}

static void argInit_3x1_real_T(double result[3])
{
  // Loop over the array to initialize each element.
  for (int idx0{0}; idx0 < 3; idx0++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx0] = argInit_real_T();
  }
}

static double argInit_real_T()
{
  return 0.0;
}

static void main_mb_fm_mex_sysConstraint()
{
  double j_constraintvalue[25];
  double dv1[12];
  double dv[10];
  double dv2[3];
  double constraintvalue;
  // Initialize function 'mb_fm_mex_sysConstraint' input arguments.
  // Initialize function input argument 'outputs'.
  // Initialize function input argument 'states'.
  // Initialize function input argument 'controls'.
  // Call the entry-point 'mb_fm_mex_sysConstraint'.
  argInit_10x1_real_T(dv);
  argInit_12x1_real_T(dv1);
  argInit_3x1_real_T(dv2);
  mb_fm_mex_sysConstraint(dv, dv1, dv2, &constraintvalue, j_constraintvalue);
}

int main(int, char **)
{
  // The initialize function is being called automatically from your entry-point
  // function. So, a call to initialize is not included here. Invoke the
  // entry-point functions.
  // You can call entry-point functions multiple times.
  main_mb_fm_mex_sysConstraint();
  // Terminate the application.
  // You do not need to do this more than one time.
  mb_fm_mex_sysConstraint_terminate();
  return 0;
}

// End of code generation (main.cpp)
