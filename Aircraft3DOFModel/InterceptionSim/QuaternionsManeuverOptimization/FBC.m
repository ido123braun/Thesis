function [constraints] = FBC(states, controls, constant_1) %#codegen
% constraint interface created by falcon.m

% Extract states
x_E   = states(1);
y_E   = states(2);
z_E   = states(3);
v     = states(4);
e0    = states(5);
e1    = states(6);
e2    = states(7);
e3    = states(8);
W     = states(9);
P     = states(10);
Js    = states(11);
n     = states(12);

% Extract controls
Pcom  = controls(1);
Jscom = controls(2);
ncom  = controls(3);

% ----------------------------- %
% implement the constraint function here %
% ----------------------------- %

% implement constraint values here
constraints = states(3) - constant_1;
% EoF
end