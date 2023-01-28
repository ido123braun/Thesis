function [constraints] = sysConstraint(outputs, states, controls)
% constraint interface created by falcon.m

% Extract states
e0      = states(5);
e1      = states(6);
e2      = states(7);
e3      = states(8);

% Extract controls

% ----------------------------- %
% implement the constraint here %
% ----------------------------- %

% implement constraint values here

eConstraint=e0^2+e1^2+e2^2+e3^2;

constraints = [eConstraint];

end
