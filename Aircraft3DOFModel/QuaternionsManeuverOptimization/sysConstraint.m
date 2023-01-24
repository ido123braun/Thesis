function [constraints] = sysConstraint(outputs, states, controls)
% constraint interface created by falcon.m

% Extract states
vx_PE=states(4);
vy_PE=states(5);
vz_PE=states(6);
e0      = states(7);
e1      = states(8);
e2      = states(9);
e3      = states(10);

% Extract controls

% ----------------------------- %
% implement the constraint here %
% ----------------------------- %

% implement constraint values here

eConstraint=e0^2+e1^2+e2^2+e3^2;
vConstraint=sqrt(vx_PE^2+vy_PE^2+vz_PE^2);

constraints = [eConstraint; vConstraint];

end
