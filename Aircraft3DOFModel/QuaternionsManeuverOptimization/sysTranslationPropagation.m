function [vdot_PE, phi_P,edot_P, Wdot_P, gamma_P, psi_P, Omega_P] = sysTranslationPropagation(z_PE,vx_PE,vy_PE,vz_PE,e0,e1,e2,e3,phidot_P,T,CD,CL,W,alpha,TSFC)
%SYSTRANSLATIONPROPAGATION Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

v_PE=[vx_PE; vy_PE; vz_PE]; % E frame velocity vector

e_P=[e0; e1; e2; e3]; % Quaternion Vector

E2P=[e_P(1)^2+e_P(2)^2-e_P(3)^2-e_P(4)^2, 2*(e_P(2)*e_P(3)+e_P(1)*e_P(4)), 2*(e_P(2)*e_P(4)-e_P(1)*e_P(3));...
    2*(e_P(2)*e_P(3)-e_P(1)*e_P(4)), e_P(1)^2-e_P(2)^2+e_P(3)^2-e_P(4)^2, 2*(e_P(3)*e_P(4)+e_P(1)*e_P(2));...
    2*(e_P(2)*e_P(4)+e_P(1)*e_P(3)), 2*(e_P(3)*e_P(4)-e_P(1)*e_P(2)), e_P(1)^2-e_P(2)^2-e_P(3)^2+e_P(4)^2];

phi_P=atan2(E2P(2,3),E2P(3,3)); %[rad]
gamma_P=-asin(v_PE(3)/norm(v_PE)); %[rad]
psi_P=atan2(v_PE(2),v_PE(1)); %[rad]

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

ng_P=(L+T*sin(alpha))/W;

gammadot_P=(p.g/v)*(ng_P*cos(phi_P)-cos(gamma_P));
psidot_P=(ng_P*p.g/(v*cos(gamma_P)))*sin(phi_P);
% 
% 
% if abs(gamma_P)<pi/2
%     psidot_P=(ng_P*p.g/(v*cos(gamma_P)))*sin(phi_P);
% else
%     psidot_P=0;
% end

Omega_P=cross(a_P,v_P)/(v^2)+[phidot_P; 0; 0]; %[rad/sec]

% Omega_P(1,1)=phidot_P-psidot_P*sin(gamma_P);
% Omega_P(2,1)=gammadot_P*cos(phi_P)+psidot_P*cos(gamma_P)*sin(phi_P);
% Omega_P(3,1)=psidot_P*cos(gamma_P)*cos(phi_P)-gammadot_P*sin(phi_P);


edot_P=0.5*[0, -Omega_P(1), -Omega_P(2), -Omega_P(3);...
    Omega_P(1), 0, Omega_P(3), -Omega_P(2);...
    Omega_P(2), -Omega_P(3), 0, Omega_P(1);...
    Omega_P(3), Omega_P(2), -Omega_P(1), 0]*e_P;

FC=TSFC*T;
Wdot_P=-FC;

end

