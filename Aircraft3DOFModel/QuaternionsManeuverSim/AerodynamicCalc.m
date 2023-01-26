function [alpha,CL,CD] = AerodynamicCalc(p,r_E,v,W,n)

rho0=p.P0_STD/(p.R*p.Temp0); % Ground Air Density [kg/m^3]
rho=rho0*(1+p.beta0*r_E(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); % Air Density [kg/m^3]

CL=2*W*n/(rho*(v^2)*p.S); % Trimmed Lift Coefficient
alpha=interp1(p.CL,p.alpha,CL); % Trimmed Angle of Attack
CD=interp1(p.CL,p.CD,CL); % Trimmed Drag Coefficient






