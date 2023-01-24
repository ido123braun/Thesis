function [T,TSFC] = ThrustCalc(p,r_E,v,Js)

Temp=p.Temp0+p.beta0*r_E(3);
rho0=p.P0_STD/(p.R*p.Temp0);
rho=rho0*(1+p.beta0*r_E(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
M=v/sqrt(p.gammaR*p.R*Temp);

T=Js*p.Tmax*((rho/p.rho0_STD)^p.Ta)*(1+p.Tm*M); %[N]
TSFC=p.TSFC;
