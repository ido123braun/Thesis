function [alpha, CL, CD, rho_P] = sysAeroCalc(z_PE, vx_PE, vy_PE, vz_PE, n_P, T, W)
%SYSDRAGCOEFFICIENT Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

v=sqrt(vx_PE^2+vy_PE^2+vz_PE^2); %[m/sec]

Temp_P=p.Temp0+p.beta0*z_PE;
rho0_P=p.P0_STD/(p.R*p.Temp0);
rho_P=rho0_P*(1+p.beta0*z_PE/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]

CL=2*W*n_P/(rho_P*(v^2)*p.S_P);

alphacoeffs=sym(polyfit(p.CL,p.alpha,10));
CDcoeffs=sym(polyfit(p.CL,p.CD,10));

syms CLfun

alphafun=poly2sym(alphacoeffs,CLfun);
CDfun=poly2sym(CDcoeffs,CLfun);

alpha=subs(alphafun,CLfun,CL);
CD=subs(CDfun,CLfun,CL);

