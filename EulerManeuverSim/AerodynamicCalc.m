function [alphaTrim,CLTrim,CDTrim] = AerodynamicCalc(p,x,T)
r_PE=x(1:3); %[m]
v_PE=x(4:6); %[m/sec]
W=x(7); %[N]
n_P=x(11);

v=norm(v_PE);

rho0_P=p.P0_STD/(p.R*p.Temp0);
rho_P=rho0_P*(1+p.beta0*r_PE(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]

CLTrim=2*W*n_P/(rho_P*(v^2)*p.S_P);
alphaTrim=interp1(p.CL,p.alpha,CLTrim);
CDTrim=interp1(p.CL,p.CD,CLTrim);










% alphaTrim=AeroMat(:,1); %[rad]
% CLTrim=AeroMat(:,2);
% CDTrim=AeroMat(:,3);
% 
% f=CLTrim-2*W*n_P/(rho_P*(v^2)*p.S_P)+2*T.*sin(alphaTrim)./(rho_P*(v^2)*p.S_P);
% 
% CL=interp1(f,CLTrim,0);
% alpha=interp1(f,alphaTrim,0);
% CD=interp1(f,CDTrim,0);






