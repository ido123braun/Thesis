function [T,TSFC] = ThrustCalc(p,x)
r_PE=x(1:3); %[m]
v_PE=x(4:6); %[m/sec]
Js_P=x(10);

Temp_P=p.Temp0+p.beta0*r_PE(3);
rho0_P=p.P0_STD/(p.R*p.Temp0);
rho_P=rho0_P*(1+p.beta0*r_PE(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
M=norm(v_PE)/sqrt(p.gamma_R*p.R*Temp_P);

T=Js_P*p.Tmax_P*((rho_P/p.rho0_STD)^p.Ta_P)*(1+p.Tm_P*M); %[N]
TSFC=p.TSFC_P;
