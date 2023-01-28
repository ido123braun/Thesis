function [vdot, edot_P, Wdot, ng, Wneg] = sysTranslationPropagation(z_E, v, e0, e1, e2, e3, W, P, T, CD, CL, alpha, TSFC)
%SYSTRANSLATIONPROPAGATION Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

e_P=[e0; e1; e2; e3]; % Quaternion Vector

E2P=[e_P(1)^2+e_P(2)^2-e_P(3)^2-e_P(4)^2, 2*(e_P(2)*e_P(3)+e_P(1)*e_P(4)), 2*(e_P(2)*e_P(4)-e_P(1)*e_P(3));...
    2*(e_P(2)*e_P(3)-e_P(1)*e_P(4)), e_P(1)^2-e_P(2)^2+e_P(3)^2-e_P(4)^2, 2*(e_P(3)*e_P(4)+e_P(1)*e_P(2));...
    2*(e_P(2)*e_P(4)+e_P(1)*e_P(3)), 2*(e_P(3)*e_P(4)-e_P(1)*e_P(2)), e_P(1)^2-e_P(2)^2-e_P(3)^2+e_P(4)^2]; % Earth to Airplane Velocity Coordinates Rotation Matrix

v_P=[v; 0; 0]; % Airplane TAS Velocity Vector in Velocity Coordiantes [m/sec]

rho0=p.P0_STD/(p.R*p.Temp0); % Ground Air Density [kg/m^3]
rho=rho0*(1+p.beta0*z_E/p.Temp0)^(p.g/(p.R*p.beta0)-1); % Air Density [kg/m^3]

L=0.5*rho*(v^2)*p.S*CL; % Lift Force [N]
D=0.5*rho*(v^2)*p.S*CD; % Drag Force [N]

W_E=[0; 0; W]; % Airplane Weight Vector in Earth Coordiantes [N]

W_P=E2P*W_E; % Airplane Weight Vector in Velocity Coordiantes [N]
T_P=[T*cos(alpha); 0; -T*sin(alpha)]; % Thrust Vector in Velocity Coordiantes [N]
L_P=[0; 0; -L]; % Lift Vector in Velocity Coordiantes [N]
D_P=[-D; 0; 0]; % Drag Vector in Velocity Coordiantes [N]

F_P=W_P+L_P+D_P+T_P; % Equivalent Force Vector in Velocity Coordiantes [N]
a_P=F_P./(W./p.g); % Airplane Acceleration Vector in Velocity Coordiantes [m/sec^2]
Omega_P=(cross(v_P,a_P)/(v^2))+[P; 0; 0]; % Airplane Rotation Rate in Velocity Coordinates [rad/sec]

ng=(L+T*sin(alpha))/W; % g-force Load Factor
Wneg=-W; % Negative Weight

vdot=a_P(1); % Airplane Velocity Derivative [m/sec^2]
edot_P=0.5*[0, -Omega_P(1), -Omega_P(2), -Omega_P(3);...
    Omega_P(1), 0, Omega_P(3), -Omega_P(2);...
    Omega_P(2), -Omega_P(3), 0, Omega_P(1);...
    Omega_P(3), Omega_P(2), -Omega_P(1), 0]*e_P; % Quaternion Vector Derivative [1/sec]
Wdot=-TSFC*T; % Airplane Weight Derivative [kg/sec]

end

