function [vdot, phidot, gammadot, psidot, Wdot, ng, Wneg] = sysTranslationPropagation(z_E, v, phi, gamma, W, P, T, CD, CL, alpha, TSFC)
%SYSTRANSLATIONPROPAGATION Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

rho0=p.P0_STD/(p.R*p.Temp0); % Ground Air Density [kg/m^3]
rho=rho0*(1+p.beta0*z_E/p.Temp0)^(p.g/(p.R*p.beta0)-1); % Air Density [kg/m^3]

L=0.5*rho*(v^2)*p.S*CL; % Lift Force [N]
D=0.5*rho*(v^2)*p.S*CD; % Drag Force [N]

ng=(L+T*sin(alpha))/W; % g-force Load Factor
Wneg=-W; % Negative Weight

vdot=(p.g/W)*(T*cos(alpha)-D)-p.g*sin(gamma); % Airplane Velocity Derivative [m/sec^2]
gammadot=(p.g/v)*(ng*cos(phi)-cos(gamma)); % Airplane Course Angle Derivative [rad/sec]
psidot=ng*p.g*sin(phi)/(v*cos(gamma)); % Airplane Azimuth Angle Derivative [rad/sec]
phidot=P+psidot*sin(gamma); % Airplane Roll Angle Derivative [rad/sec]
Wdot=-TSFC*T; % Airplane Weight Derivative [kg/sec]

end

