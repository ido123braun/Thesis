function [alpha, CL, CD] = sysAeroCalc(z_E, v, n, W)
%SYSDRAGCOEFFICIENT Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

rho0=p.P0_STD/(p.R*p.Temp0); % Ground Air Density [kg/m^3]
rho=rho0*(1+p.beta0*z_E/p.Temp0)^(p.g/(p.R*p.beta0)-1); % Air Density [kg/m^3]

CL=2*W*n/(rho*(v^2)*p.S); % Trimmed Lift Coefficient

alphacoeffs=sym(polyfit(p.CL,p.alpha,10));
CDcoeffs=sym(polyfit(p.CL,p.CD,10));

syms CLfun

alphafun=poly2sym(alphacoeffs,CLfun);
CDfun=poly2sym(CDcoeffs,CLfun);

alpha=subs(alphafun,CLfun,CL); % Trimmed Angle of Attack
CD=subs(CDfun,CLfun,CL); % Trimmed Drag Coefficient

end

