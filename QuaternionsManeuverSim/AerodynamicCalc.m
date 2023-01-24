function [alphaTrim,CLTrim,CDTrim] = AerodynamicCalc(p,x,T)
r_PE=x(1:3); %[m]
v_PE=x(4:6); %[m/sec]
W=x(11); %[N]
n_P=x(14);

v=norm(v_PE);

rho0_P=p.P0_STD/(p.R*p.Temp0);
rho_P=rho0_P*(1+p.beta0*r_PE(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]

CLTrim=2*W*n_P/(rho_P*(v^2)*p.S_P);
alphaTrim=interp1(p.CL,p.alpha,CLTrim);
CDTrim=interp1(p.CL,p.CD,CLTrim);






