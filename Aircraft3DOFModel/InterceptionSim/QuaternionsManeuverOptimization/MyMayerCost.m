function [constraints] = MyMayerCost(outputs_g1, states_g1, controls_g1) %#codegen
% constraint interface created by falcon.m

% Extract Outputs of Phase Group 1
phi_g1    = outputs_g1(1,:); % contains 1 value(s)
gamma_g1  = outputs_g1(2,:); % contains 1 value(s)
psi_g1    = outputs_g1(3,:); % contains 1 value(s)
alpha_g1  = outputs_g1(4,:); % contains 1 value(s)
CL_g1     = outputs_g1(5,:); % contains 1 value(s)
CD_g1     = outputs_g1(6,:); % contains 1 value(s)
T_g1      = outputs_g1(7,:); % contains 1 value(s)
TSFC_g1   = outputs_g1(8,:); % contains 1 value(s)
ng_g1     = outputs_g1(9,:); % contains 1 value(s)
Wneg_g1   = outputs_g1(10,:); % contains 1 value(s)

% Extract States of Phase Group 1
x_E_g1    = states_g1(1,:); % contains 1 value(s)
y_E_g1    = states_g1(2,:); % contains 1 value(s)
z_E_g1    = states_g1(3,:); % contains 1 value(s)
v_g1      = states_g1(4,:); % contains 1 value(s)
e0_g1     = states_g1(5,:); % contains 1 value(s)
e1_g1     = states_g1(6,:); % contains 1 value(s)
e2_g1     = states_g1(7,:); % contains 1 value(s)
e3_g1     = states_g1(8,:); % contains 1 value(s)
W_g1      = states_g1(9,:); % contains 1 value(s)
P_g1      = states_g1(10,:); % contains 1 value(s)
Js_g1     = states_g1(11,:); % contains 1 value(s)
n_g1      = states_g1(12,:); % contains 1 value(s)

% Extract Controls of Phase Group 1
Pcom_g1   = controls_g1(1,:); % contains 1 value(s)
Jscom_g1  = controls_g1(2,:); % contains 1 value(s)
ncom_g1   = controls_g1(3,:); % contains 1 value(s)

% ----------------------------- %
% implement the constraint here %
% ----------------------------- %

% implement constraint values here
MyCost = -W_g1;
constraints = [MyCost];
% EoF
end