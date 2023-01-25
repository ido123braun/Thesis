function [rdot_E] = sysPositionPropagation(v, phi, gamma, psi)
%SYSKINEMATICS Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

vW_E=[p.vW*cos(p.psiW+pi); p.vW*sin(p.psiW+pi); 0]; % Wind Velocity Vector in Earth Coordiantes [m/sec]

E2P=DCM_E2P(phi,gamma,psi); % Earth to Airplane Velocity Coordinates Rotation Matrix

v_P=[v; 0; 0]; % Airplane TAS Velocity Vector in Velocity Coordiantes [m/sec]
v_E=transpose(E2P)*v_P; % Airplane Airspeed Velocity Vector in Earth Coordiantes [m/sec]
vg_E=v_E+vW_E; % Airplane Ground Velocity Vector in Earth Coordiantes [m/sec]

rdot_E=vg_E; % Airplane Radius Derivative [m/sec]

end

