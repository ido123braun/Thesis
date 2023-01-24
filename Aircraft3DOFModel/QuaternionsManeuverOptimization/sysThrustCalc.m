function [ T, TSFC] = sysThrustCalc(z_PE, vx_PE, vy_PE, vz_PE, Js_P)
%SYSDRAGCOEFFICIENT Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

v=sqrt(vx_PE^2+vy_PE^2+vz_PE^2); %[m/sec]

Temp_P=p.Temp0+p.beta0*z_PE;
rho0_P=p.P0_STD/(p.R*p.Temp0);
rho_P=rho0_P*(1+p.beta0*z_PE/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
M=v/sqrt(p.gamma_R*p.R*Temp_P);

T=Js_P*p.Tmax_P*((rho_P/p.rho0_STD)^p.Ta_P)*(1+p.Tm_P*M); %[N]
TSFC=p.TSFC_P;

jT=1;
jTSFC=1;

end

