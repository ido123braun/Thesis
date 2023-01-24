function [vdot_PE, Wdot_P, gamma_P, psi_P] = sysTranslationPropagation(z_PE,vx_PE,vy_PE,vz_PE,phi_P,phidot_P,T,CD,CL,W,alpha,TSFC)
%SYSTRANSLATIONPROPAGATION Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

v_PE=[vx_PE; vy_PE; vz_PE]; % E frame velocity vector

gamma_P=-asin(v_PE(3)/norm(v_PE)); %[rad]
psi_P=atan2(v_PE(2),v_PE(1)); %[rad]

E2P=DCM_E2P(phi_P,gamma_P,psi_P);

v_P=E2P*v_PE; %[m/sec]
v=norm(v_P); %[m/sec]

rho0_P=p.P0_STD/(p.R*p.Temp0);
rho_P=rho0_P*(1+p.beta0*z_PE/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]

W_PE=[0; 0; W]; %[N]
W_P=E2P*W_PE; %[N]

T_P=[T*cos(alpha); 0; -T*sin(alpha)];
L=0.5*rho_P*(v^2)*p.S_P*CL;
L_P=[0; 0; -L];
D=0.5*rho_P*(v^2)*p.S_P*CD;
D_P=[-D; 0; 0];

F_P=W_P+L_P+D_P+T_P; %[N]

a_P=F_P./(W./p.g); %[m/sec^2]
a_PE=transpose(E2P)*a_P; %[m/sec^2]
vdot_PE=a_PE;

FC=TSFC*T;
Wdot_P=-FC;

end

