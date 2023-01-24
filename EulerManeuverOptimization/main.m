% Optimal Aircraft Maneuver Problem

clc
clear
close all

%% Define States Controls and Parameter

p=ConstantProperties();

x_vec = [...
    falcon.State('x_E',       -inf,    inf, 1e-3);...
    falcon.State('y_E',       -inf,    inf, 1e-3);...
    falcon.State('z_E',       -60000*0.3048,      0,    1e-3);...
    falcon.State('vx_E',       -700,      700,    1e-2);...
    falcon.State('vy_E',       -700,      700,    1e-2);...
    falcon.State('vz_E',       -700,      700,    1e-2);...
    falcon.State('phi_P', -360*pi/180, 360*pi/180, 1);...
    falcon.State('W_P',       20300*0.4536*p.g,      50000*0.4536*p.g,    1e-5);...
    falcon.State('phidot_P',       -300*pi/180,      300*pi/180,    1);...
    falcon.State('Js_P',       0,      1,    1);...
    falcon.State('n_P',       -3,      9.5,    1)];

u_vec = [...
    falcon.Control('phidotcom_P'  ,   -300*pi/180,    300*pi/180, 1);...
    falcon.Control('Jscom_P'  ,   0,    1, 1);...
    falcon.Control('ncom_P'  ,   -3,    9, 1)];

y_vec = [...
    falcon.Output('gamma_P', -90*pi/180, 90*pi/180, 1);...
    falcon.Output('psi_P', -360*pi/180, 360*pi/180, 1);
    falcon.Output('alpha', -40*pi/180, 40*pi/180, 1);
    falcon.Output('CL', -2, 2, 1);
    falcon.Output('CD', 0, 2, 1);
    falcon.Output('T', 0, p.Tmax_P, 1);
    falcon.Output('TSFC', 0, 0.01, 1);
    falcon.Output('rho_P', 0, 1.5, 1)];

tf = falcon.Parameter('FinalTime', 10, 0, 200, 1e-2);

%% Create Model

mdl = falcon.SimulationModelBuilder('OptimalManeuver', x_vec, u_vec);

% Calculate the position derivatives
mdl.addSubsystem(@sysPositionPropagation,...
    {'vx_E','vy_E','vz_E'},...       % Inputs
    {'rdot_PE'});   % Outputs

% Calculate Aerodynamic Coefficients
mdl.addSubsystem(@sysAeroCalc,...
    {'z_E', 'vx_E', 'vy_E', 'vz_E', 'n_P', 'T', 'W_P'},...  % Inputs
    {'alpha','CL','CD','rho_P'});%,...                     % Outputs

% Calculate Thrust and TSFC
mdl.addSubsystem(@sysThrustCalc,...
    {'z_E', 'vx_E', 'vy_E', 'vz_E', 'Js_P'},...  % Inputs
    {'T','TSFC'});%,...                         % Outputs

% Calculate the Speed, Orientation and Weight derivatives
mdl.addSubsystem(@sysTranslationPropagation,...
    {'z_E','vx_E','vy_E','vz_E','phi_P','phidot_P','T','CD','CL','W_P','alpha','TSFC'},... % Inputs
    {'vdot_PE', 'Wdot_P','gamma_P','psi_P'}); % Outputs

% Calculate Control Command Delays
mdl.addSubsystem(@sysCommandsDelay,...
    {'phidot_P','Js_P','n_P','phidotcom_P','Jscom_P','ncom_P'},...       % Inputs
    {'phidot2_P', 'Jsdot_P', 'ndot_P'});   % Outputs

% Split the vector variables into their elements
mdl.SplitVariable('rdot_PE', {'xdot_E', 'ydot_E', 'zdot_E'}.');
mdl.SplitVariable('vdot_PE', {'vxdot_E', 'vydot_E', 'vzdot_E'}.');

% Set the variable names of the derivatives to tell FALCON the correct
% outputs
mdl.setStateDerivativeNames('xdot_E', 'ydot_E', 'zdot_E', 'vxdot_E', 'vydot_E', 'vzdot_E', 'phidot_P', 'Wdot_P', 'phidot2_P', 'Jsdot_P', 'ndot_P');

% set the outputs
mdl.setOutputs( y_vec );

% Build the Model evaluates the subsystem chain
mdl.Build();

%% Define Optimal Control Problem

problem = falcon.Problem('AC_Maneuver');

% Specify Discretization
tau = linspace(0,1,101);

% Add a new Phase
phase = problem.addNewPhase(@OptimalManeuver, x_vec, tau, 0, tf);
phase.addNewControlGrid(u_vec, tau);
phase.Model.setModelOutputs(y_vec);...; falcon.Output('alpha'); falcon.Output('CL'); falcon.Output('CD'); falcon.Output('T'); falcon.Output('TSFC')]);

% Set Initial Conditions

r0_PE=[0; 0; -30000*0.3048]; % initial airplane radius in earth coordinates [m]
v0_PE=[300; 0; 0]; % initial airplane TAS velocity in earth coordinates [m/sec]
W0_P=p.m0_P.*p.g; % initial airplane weight [N]
phi0_P=0*pi/180; % initial airplane roll angle [rad]
gamma0_P=-asin(v0_PE(3)/norm(v0_PE)); % initial airplane course angle[rad]
psi0_P=atan2(v0_PE(2),v0_PE(1)); %[rad]
phidot0_P=0; % initial airplane roll rate angle [rad/sec]
Js0_P=0.76; % initial airplane throttle
n0_P=1; % initial airplane load factor

% Set Terminal Conditions

rfmin_PE=[-inf; -inf; -30000*0.3048]; % initial airplane radius in earth coordinates [m]
rfmax_PE=[inf; inf; 0*0.3048]; % initial airplane radius in earth coordinates [m]
vfmin_PE=[-220; 300; 0]; % initial airplane TAS velocity in earth coordinates [m/sec]
vfmax_PE=[-220; 300; 0]; % initial airplane TAS velocity in earth coordinates [m/sec]
Wfmax_P=W0_P; % initial airplane weight [N]
Wfmin_P=20300*0.4536*p.g; % initial airplane weight [N]
phifmin_P=-360*pi/180; % initial airplane roll angle [rad]
phifmax_P=360*pi/180; % initial airplane roll angle [rad]
phidotf_P=0; % initial airplane roll rate angle [rad/sec]
Jsfmin_P=0; % initial airplane throttle
Jsfmax_P=1; % initial airplane throttle
nfmin_P=-3; % initial airplane load factor
nfmax_P=9.5; % initial airplane load factor

% Set Boundary Conditions

phase.setInitialBoundaries([r0_PE ; v0_PE; phi0_P; W0_P; phidot0_P; Js0_P; n0_P]);
phase.setFinalBoundaries([rfmin_PE ; vfmin_PE; phifmin_P; Wfmin_P; phidotf_P; Jsfmin_P; nfmin_P],[rfmax_PE ; vfmax_PE; phifmax_P; Wfmax_P; phidotf_P; Jsfmax_P; nfmax_P]);

% Add Cost Function
problem.addNewParameterCost(tf);

% Solve Problem
problem.Solve();

%% Plot

t=phase.RealTime;

x_E=phase.StateGrid.Values(1,:);
y_E=phase.StateGrid.Values(2,:);
z_E=phase.StateGrid.Values(3,:);
vx_E=phase.StateGrid.Values(4,:);
vy_E=phase.StateGrid.Values(5,:);
vz_E=phase.StateGrid.Values(6,:);
phi_P=phase.StateGrid.Values(7,:);
W_P=phase.StateGrid.Values(8,:);
phidot_P=phase.StateGrid.Values(9,:);
Js_P=phase.StateGrid.Values(10,:);
n_P=phase.StateGrid.Values(11,:);

phidotcom_P=phase.ControlGrids.Values(1,:);
Jscom_P=phase.ControlGrids.Values(2,:);
ncom_P=phase.ControlGrids.Values(3,:);

gamma_P=phase.Model.ModelOutputGrid.Values(1,:);
psi_P=phase.Model.ModelOutputGrid.Values(2,:);
alpha=phase.Model.ModelOutputGrid.Values(3,:);
CL=phase.Model.ModelOutputGrid.Values(4,:);
CD=phase.Model.ModelOutputGrid.Values(5,:);
T=phase.Model.ModelOutputGrid.Values(6,:);
TSFC=phase.Model.ModelOutputGrid.Values(7,:);
rho_P=phase.Model.ModelOutputGrid.Values(8,:);

v=sqrt(vx_E.^2+vy_E.^2+vz_E.^2);

ComDataMat=[t', phidotcom_P', Jscom_P', ncom_P'];
save ComData ComDataMat

figure
hold on
grid
xlabel('x [m]')
ylabel('y [m]')
zlabel('h [m]')
plot3(x_E(:),y_E(:),-z_E(:))
scatter3(x_E(1),y_E(1),-z_E(1),'fill','b');
legend('Airplane Course','Airplane initial')
axis equal

figure

subplot(2,1,1);
hold on
plot(x_E(:),-z_E(:))
scatter(x_E(1),-z_E(1),'fill','b');
xlabel('x [m]')
ylabel('h [m]')
axis equal
grid
legend('Airplane Course','Airplane initial')

subplot(2,1,2);
hold on
plot(y_E(:),x_E(:))
scatter(y_E(1),x_E(1),'fill','b');
axis equal
xlabel('y [m]')
ylabel('x [m]')
grid

figure
hold on
plot(v(:),-z_E(:))
scatter(v(1),-z_E(1),'fill','b');
xlabel('v [m/sec]')
ylabel('h [m]')
% ylim([0 700])
grid
legend('Airplane Course','Airplane initial')

figure
hold on
plot(t(:),-z_E(:))
scatter(t(1),-z_E(1),'fill','b');
xlabel('t [sec]')
ylabel('h [m]')
% ylim([0 700])
grid
legend('Airplane Course','Airplane initial')

