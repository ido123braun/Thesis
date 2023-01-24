function [r_PE_dot] = sysPositionPropagation(vx_PE,vy_PE,vz_PE)
%SYSKINEMATICS Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

% Extract states
v_PE=[vx_PE; vy_PE; vz_PE]; %[m/sec]
v_WE=[p.v_W*cos(p.psi_W +pi); p.v_W*sin(p.psi_W+pi); 0]; %[m/sec]
vg_PE=v_PE+v_WE; %[m/sec]

r_PE_dot = vg_PE; %[m/sec]

end

