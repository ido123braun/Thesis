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
    falcon.State('v',       50,      700,    1e-2);...
    falcon.State('phi', -360*pi/180, 360*pi/180, 1);...
    falcon.State('gamma', -90*pi/180, 90*pi/180, 1);...
    falcon.State('psi', -360*pi/180, 360*pi/180, 1);...
    falcon.State('W',       20300*0.4536*p.g,      50000*0.4536*p.g,    1e-5);...
    falcon.State('P',       -300*pi/180,      300*pi/180,    1);...
    falcon.State('Js',       0,      1,    1);...
    falcon.State('n',       -3,      9.5,    1)];

u_vec = [...
    falcon.Control('Pcom'  ,   -300*pi/180,    300*pi/180, 1);...
    falcon.Control('Jscom'  ,   0,    1, 1);...
    falcon.Control('ncom'  ,   -3,    9, 1)];

y_vec = [...
    falcon.Output('alpha', -40*pi/180, 40*pi/180, 1);
    falcon.Output('CL', -2, 2, 1);
    falcon.Output('CD', 0, 2, 1);
    falcon.Output('T', 0, p.Tmax, 1);
    falcon.Output('TSFC', 0, 0.01, 1);
     falcon.Output('ng', -3, 9.5, 1);
    falcon.Output('Wneg', -50000*0.4536*p.g, -20300*0.4536*p.g, 1e-5)];

tf = falcon.Parameter('FinalTime', 10, 0, 200, 1e-2);

%% Create Model

mdl = falcon.SimulationModelBuilder('OptimalManeuver', x_vec, u_vec);

% Calculate the position derivatives
mdl.addSubsystem(@sysPositionPropagation,...
    {'v','phi','gamma','psi'},...       % Inputs
    {'rdot_E'});   % Outputs

% Calculate Aerodynamic Coefficients
mdl.addSubsystem(@sysAeroCalc,...
    {'z_E', 'v', 'n', 'W'},...  % Inputs
    {'alpha','CL','CD'});%,...                     % Outputs

% Calculate Thrust and TSFC
mdl.addSubsystem(@sysThrustCalc,...
    {'z_E', 'v', 'Js'},...  % Inputs
    {'T','TSFC'});%,...                         % Outputs

% Calculate the Speed, Orientation and Weight derivatives
mdl.addSubsystem(@sysTranslationPropagation,...
    {'z_E','v','phi','gamma','W','P','T','CD','CL','alpha','TSFC'},... % Inputs
    {'vdot', 'phidot','gammadot','psidot','Wdot','ng','Wneg'}); % Outputs

% Calculate Control Command Delays
mdl.addSubsystem(@sysCommandsDelay,...
    {'P','Js','n','Pcom','Jscom','ncom'},...       % Inputs
    {'Pdot', 'Jsdot', 'ndot'});   % Outputs

% Split the vector variables into their elements
mdl.SplitVariable('rdot_E', {'xdot_E', 'ydot_E', 'zdot_E'}.');

% Set the variable names of the derivatives to tell FALCON the correct
% outputs
mdl.setStateDerivativeNames('xdot_E', 'ydot_E', 'zdot_E', 'vdot', 'phidot', 'gammadot', 'psidot', 'Wdot', 'Pdot', 'Jsdot', 'ndot');

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

r0_E=[0; 0; -10000*0.3048]; % Initial Airplane Radius in Earth Coordinates [m]
v0=300; % Initial Airplane TAS Velocity [m/sec]
phi0=0*pi/180; % Initial Airplane Roll Angle [rad]
gamma0=0*pi/180; % Initial Airplane Course Angle [rad]
psi0=0*pi/180; % Initial Airplane Azimuth Angle [rad]
W0=p.m0.*p.g; % Initial Airplane Weight [N]
P0=0; % Initial Airplane Roll Rate [rad/sec]
Js0=0.76; % Initial Airplane Throttle
n0=1; % Initial Airplane Load Factor

% Set Terminal Conditions

rfmin_E=[-inf; -inf; -20000*0.3048]; % Minimum Terminal Airplane Radius in Earth Coordinates [m]
rfmax_E=[inf; inf; -20000*0.3048]; % Maximum Terminal Airplane Radius in Earth Coordinates [m]
vfmin=300; % Minimum Terminal Airplane TAS Velocity [m/sec]
vfmax=300; % Maximum Terminal Airplane TAS Velocity [m/sec]
phifmin=0*pi/180; % Minimum Terminal Airplane Roll Angle [rad]
phifmax=0*pi/180; % Maximum Terminal Airplane Roll Angle [rad]
gammafmin=0*pi/180; % Minimum Terminal Airplane Course Angle [rad]
gammafmax=0*pi/180; % Maximum Terminal Airplane Course Angle [rad]
psifmin=90*pi/180; % Minimum Terminal Airplane Azimuth Angle [rad]
psifmax=90*pi/180; % Maximum Terminal Airplane Azimuth Angle [rad]
Wfmin=20300*0.4536*p.g; % Minimum Terminal Airplane Weight [N]
Wfmax=p.m0.*p.g; % Maximum Terminal Airplane Weight [N]
Pfmin=0; % Minimum Terminal Airplane Roll Rate [rad/sec]
Pfmax=0; % Maximum Terminal Airplane Roll Rate [rad/sec]
Jsfmin=0; % Minimum Terminal Airplane Throttle
Jsfmax=1; % Maximum Terminal Airplane Throttle
nfmin=-3; % Minimum Terminal Airplane Load Factor
nfmax=9.5; % Maximum Terminal Airplane Load Factor

% Set Boundary Conditions

phase.setInitialBoundaries([r0_E ; v0; phi0; gamma0; psi0; W0; P0; Js0; n0]);
phase.setFinalBoundaries([rfmin_E ; vfmin; phifmin; gammafmin; psifmin; Wfmin; Pfmin; Jsfmin; nfmin],[rfmax_E ; vfmax; phifmax; gammafmax; psifmax; Wfmax; Pfmax; Jsfmax; nfmax]);

% Add Cost Function

Wneg=y_vec(7,1);

problem.addNewParameterCost(tf);

% Solve Problem
problem.Solve();

%% Plot

t=phase.RealTime;

x_E=phase.StateGrid.Values(1,:);
y_E=phase.StateGrid.Values(2,:);
z_E=phase.StateGrid.Values(3,:);
v=phase.StateGrid.Values(4,:);
phi=phase.StateGrid.Values(5,:);
gamma=phase.StateGrid.Values(6,:);
psi=phase.StateGrid.Values(7,:);
W=phase.StateGrid.Values(8,:);
P=phase.StateGrid.Values(9,:);
Js=phase.StateGrid.Values(10,:);
n=phase.StateGrid.Values(11,:);

Pcom=phase.ControlGrids.Values(1,:);
Jscom=phase.ControlGrids.Values(2,:);
ncom=phase.ControlGrids.Values(3,:);

alpha=phase.Model.ModelOutputGrid.Values(1,:);
CL=phase.Model.ModelOutputGrid.Values(2,:);
CD=phase.Model.ModelOutputGrid.Values(3,:);
T=phase.Model.ModelOutputGrid.Values(4,:);
TSFC=phase.Model.ModelOutputGrid.Values(5,:);
ng=phase.Model.ModelOutputGrid.Values(6,:);
Wneg=phase.Model.ModelOutputGrid.Values(7,:);

ComDataMat=[t', Pcom', Jscom', ncom'];
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

