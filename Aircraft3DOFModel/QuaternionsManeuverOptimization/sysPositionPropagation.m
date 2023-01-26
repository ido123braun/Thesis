function [rdot_E, phi, gamma, psi] = sysPositionPropagation(v, e0, e1, e2, e3)
%SYSKINEMATICS Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

vW_E=[p.vW*cos(p.psiW+pi); p.vW*sin(p.psiW+pi); 0]; % Wind Velocity Vector in Earth Coordiantes [m/sec]

e_P=[e0; e1; e2; e3]; % Quaternion Vector
E2P=[e_P(1)^2+e_P(2)^2-e_P(3)^2-e_P(4)^2, 2*(e_P(2)*e_P(3)+e_P(1)*e_P(4)), 2*(e_P(2)*e_P(4)-e_P(1)*e_P(3));...
    2*(e_P(2)*e_P(3)-e_P(1)*e_P(4)), e_P(1)^2-e_P(2)^2+e_P(3)^2-e_P(4)^2, 2*(e_P(3)*e_P(4)+e_P(1)*e_P(2));...
    2*(e_P(2)*e_P(4)+e_P(1)*e_P(3)), 2*(e_P(3)*e_P(4)-e_P(1)*e_P(2)), e_P(1)^2-e_P(2)^2-e_P(3)^2+e_P(4)^2]; % Earth to Airplane Velocity Coordinates Rotation Matrix

v_P=[v; 0; 0]; % Airplane TAS Velocity Vector in Velocity Coordiantes [m/sec]
v_E=transpose(E2P)*v_P; % Airplane Airspeed Velocity Vector in Earth Coordiantes [m/sec]
vg_E=v_E+vW_E; % Airplane Ground Velocity Vector in Earth Coordiantes [m/sec]

rdot_E=vg_E; % Airplane Radius Derivative [m/sec]

phi=atan2(E2P(2,3),E2P(3,3)); % Airplane Roll Angle [rad]
gamma=-asin(E2P(1,3)); % Airplane Course Angle [rad]
psi=atan2(E2P(1,2),E2P(1,1)); % Airplane Azimuth Angle [rad]

end

