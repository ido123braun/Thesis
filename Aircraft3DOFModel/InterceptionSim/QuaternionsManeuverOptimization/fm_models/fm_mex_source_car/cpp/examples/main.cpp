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
#include "mb_fm_mex_source_car.h"

// Function Declarations
static void argInit_2x1_real_T(double result[2]);

static void argInit_4x1_real_T(double result[4]);

static double argInit_real_T();

static void main_mb_fm_mex_source_car();

// Function Definitions
static void argInit_2x1_real_T(double result[2])
{
  // Loop over the array to initialize each element.
  for (int idx0{0}; idx0 < 2; idx0++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx0] = argInit_real_T();
  }
}

static void argInit_4x1_real_T(double result[4])
{
  // Loop over the array to initialize each element.
  for (int idx0{0}; idx0 < 4; idx0++) {
    // Set the value of the array element.
    // Change this value to the value that the application requires.
    result[idx0] = argInit_real_T();
  }
}

static double argInit_real_T()
{
  return 0.0;
}

static void main_mb_fm_mex_source_car()
{
  double j_statesdot[24];
  double j_outputs[12];
  double dv[4];
  double statesdot[4];
  double dv1[2];
  double outputs[2];
  // Initialize function 'mb_fm_mex_source_car' input arguments.
  // Initialize function input argument 'states'.
  // Initialize function input argument 'controls'.
  // Call the entry-point 'mb_fm_mex_source_car'.
  argInit_4x1_real_T(dv);
  argInit_2x1_real_T(dv1);
  mb_fm_mex_source_car(dv, dv1, statesdot, outputs, j_statesdot, j_outputs);
}

int main(int, char **)
{
  // The initialize function is being called automatically from your entry-point
  // function. So, a call to initialize is not included here. Invoke the
  // entry-point functions.
  // You can call entry-point functions multiple times.
  main_mb_fm_mex_source_car();
  // Terminate the application.
  // You do not need to do this more than one time.
  mb_fm_mex_source_car_terminate();
  return 0;
}

// End of code generation (main.cpp)
