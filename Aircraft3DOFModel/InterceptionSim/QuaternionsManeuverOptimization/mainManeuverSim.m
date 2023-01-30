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
    falcon.State('e0',       -1,      1,    1);...
    falcon.State('e1',       -1,      1,    1);...
    falcon.State('e2',       -1,      1,    1);...
    falcon.State('e3',       -1,      1,    1);...
    falcon.State('W',       20300*0.4536*p.g,      50000*0.4536*p.g,    1e-5);...
    falcon.State('P',       -300*pi/180,      300*pi/180,    1);...
    falcon.State('Js',       0,      1,    1);...
    falcon.State('n',       -3,      9.5,    1)];

u_vec = [...
    falcon.Control('Pcom'  ,   -300*pi/180,    300*pi/180, 1);...
    falcon.Control('Jscom'  ,   0,    1, 1);...
    falcon.Control('ncom'  ,   -3,    9.5, 1)];

y_vec = [...
    falcon.Output('phi', -360*pi/180, 360*pi/180, 1);...
    falcon.Output('gamma', -90*pi/180, 90*pi/180, 1);...
    falcon.Output('psi', -360*pi/180, 360*pi/180, 1);
    falcon.Output('alpha', -40*pi/180, 40*pi/180, 1);
    falcon.Output('CL', -2, 2, 1);
    falcon.Output('CD', 0, 2, 1);
    falcon.Output('T', 0, p.Tmax, 1);
    falcon.Output('TSFC', 0, 0.01, 1);
    falcon.Output('ng', -3, 9.5, 1);
    falcon.Output('Wneg', -50000*0.4536*p.g, -20300*0.4536*p.g, 1e-5)];

tf = falcon.Parameter('FinalTime', 10, 0, 90, 1e-1);

%% Create Model

mdl = falcon.SimulationModelBuilder('OptimalManeuver', x_vec, u_vec);

% Calculate the position derivatives
mdl.addSubsystem(@sysPositionPropagation,...
    {'v', 'e0', 'e1', 'e2', 'e3'},...       % Inputs
    {'rdot_E', 'phi', 'gamma', 'psi'});   % Outputs

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
    {'z_E', 'v', 'e0', 'e1', 'e2', 'e3', 'W', 'P', 'T', 'CD', 'CL','alpha','TSFC'},... % Inputs
    {'vdot', 'edot_P', 'Wdot', 'ng', 'Wneg'}); % Outputs

% Calculate Control Command Delays
mdl.addSubsystem(@sysCommandsDelay,...
    {'P','Js','n','Pcom','Jscom','ncom'},...       % Inputs
    {'Pdot', 'Jsdot', 'ndot'});   % Outputs

% Split the vector variables into their elements
mdl.SplitVariable('rdot_E', {'xdot_E', 'ydot_E', 'zdot_E'}.');
mdl.SplitVariable('edot_P', {'e0dot', 'e1dot', 'e2dot', 'e3dot'}.');

% Set the variable names of the derivatives to tell FALCON the correct
% outputs
mdl.setStateDerivativeNames('xdot_E', 'ydot_E', 'zdot_E', 'vdot', 'e0dot', 'e1dot', 'e2dot', 'e3dot', 'Wdot', 'Pdot', 'Jsdot', 'ndot');

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

r0_E=[0; 0; -30000*0.3048]; % Initial Airplane Radius in Earth Coordinates [m]
v0=300; % Initial Airplane TAS Velocity [m/sec]
phi0=0*pi/180; % Initial Airplane Roll Angle [rad]
gamma0=0*pi/180; % Initial Airplane Course Angle [rad]
psi0=0*pi/180; % Initial Airplane Azimuth Angle [rad]
W0=134400.630344870; % Initial Airplane Weight [N]
P0=0; % Initial Airplane Roll Rate [rad/sec]
Js0=0.76; % Initial Airplane Throttle
n0=1; % Initial Airplane Load Factor

e0=cos(psi0/2)*cos(gamma0/2)*cos(phi0/2)+sin(psi0/2)*sin(gamma0/2)*sin(phi0/2); % Initial Quaternion Parameter 0
e1=cos(psi0/2)*cos(gamma0/2)*sin(phi0/2)-sin(psi0/2)*sin(gamma0/2)*cos(phi0/2); % Initial Quaternion Parameter 1
e2=cos(psi0/2)*sin(gamma0/2)*cos(phi0/2)+sin(psi0/2)*cos(gamma0/2)*sin(phi0/2); % Initial Quaternion Parameter 2
e3=sin(psi0/2)*cos(gamma0/2)*cos(phi0/2)-cos(psi0/2)*sin(gamma0/2)*sin(phi0/2); % Initial Quaternion Parameter 3
e0_P=[e0; e1; e2; e3]; % Initial Quaternion Vector

% Set Terminal Conditions

rfmin_E=[-inf; -inf; -300*0.3048]; % Minimum Terminal Airplane Radius in Earth Coordinates [m]
rfmax_E=[inf; inf; -300*0.3048]; % Maximum Terminal Airplane Radius in Earth Coordinates [m]
vfmin=50; % Minimum Terminal Airplane TAS Velocity [m/sec]
vfmax=700; % Maximum Terminal Airplane TAS Velocity [m/sec]
phifmin=0*pi/180; % Minimum Terminal Airplane Roll Angle [rad]
phifmax=0*pi/180; % Maximum Terminal Airplane Roll Angle [rad]
gammafmin=0*pi/180; % Minimum Terminal Airplane Course Angle [rad]
gammafmax=0*pi/180; % Maximum Terminal Airplane Course Angle [rad]
psifmin=179.9*pi/180; % Minimum Terminal Airplane Azimuth Angle [rad]
psifmax=179.9*pi/180; % Maximum Terminal Airplane Azimuth Angle [rad]
Wfmin=20300*0.4536*p.g; % Minimum Terminal Airplane Weight [N]
Wfmax=p.m0.*p.g; % Maximum Terminal Airplane Weight [N]
Pfmin=0; % Minimum Terminal Airplane Roll Rate [rad/sec]
Pfmax=0; % Maximum Terminal Airplane Roll Rate [rad/sec]
Jsfmin=0; % Minimum Terminal Airplane Throttle
Jsfmax=1; % Maximum Terminal Airplane Throttle
nfmin=1; % Minimum Terminal Airplane Load Factor
nfmax=1; % Maximum Terminal Airplane Load Factor

e0min=cos(psifmin/2)*cos(gammafmin/2)*cos(phifmin/2)+sin(psifmin/2)*sin(gammafmin/2)*sin(phifmin/2); % Minimum Terminal Quaternion Parameter 0
e1min=cos(psifmin/2)*cos(gammafmin/2)*sin(phifmin/2)-sin(psifmin/2)*sin(gammafmin/2)*cos(phifmin/2); % Minimum Terminal Quaternion Parameter 1
e2min=cos(psifmin/2)*sin(gammafmin/2)*cos(phifmin/2)+sin(psifmin/2)*cos(gammafmin/2)*sin(phifmin/2); % Minimum Terminal Quaternion Parameter 2
e3min=sin(psifmin/2)*cos(gammafmin/2)*cos(phifmin/2)-cos(psifmin/2)*sin(gammafmin/2)*sin(phifmin/2); % Minimum Terminal Quaternion Parameter 3
efmin_P=[e0min; e1min; e2min; e3min]; % Minimum Terminal Quaternion Vector

e0max=cos(psifmax/2)*cos(gammafmax/2)*cos(phifmax/2)+sin(psifmax/2)*sin(gammafmax/2)*sin(phifmax/2); % Maximum Terminal Quaternion Parameter 0
e1max=cos(psifmax/2)*cos(gammafmax/2)*sin(phifmax/2)-sin(psifmax/2)*sin(gammafmax/2)*cos(phifmax/2); % Maximum Terminal Quaternion Parameter 1
e2max=cos(psifmax/2)*sin(gammafmax/2)*cos(phifmax/2)+sin(psifmax/2)*cos(gammafmax/2)*sin(phifmax/2); % Maximum Terminal Quaternion Parameter 2
e3max=sin(psifmax/2)*cos(gammafmax/2)*cos(phifmax/2)-cos(psifmax/2)*sin(gammafmax/2)*sin(phifmax/2); % Maximum Terminal Quaternion Parameter 3
efmax_P=[e0max; e1max; e2max; e3max]; % Maximum Terminal Quaternion Vector

% Set Boundary Conditions

phase.setInitialBoundaries([r0_E ; v0; e0_P; W0; P0; Js0; n0]);
phase.setFinalBoundaries([rfmin_E ; vfmin; efmin_P; Wfmin; Pfmin; Jsfmin; nfmin],[rfmax_E ; vfmax; efmax_P; Wfmax; Pfmax; Jsfmax; nfmax]);

% Path Constraint

% pathconstraints = [...
%     falcon.Constraint('eConstraint', 1, 1)];
% phase.addNewPathConstraint(@sysConstraint, pathconstraints,tau);

% Add Cost Function

Wneg=y_vec(7,1);

problem.addNewParameterCost(tf);

% Solve Problem

problem.setMajorOptTol(1e-3);
problem.setMajorIterLimit(1500);
problem.Solve();

%% Plot

t=phase.RealTime;

r_E=phase.StateGrid.Values(1:3,:);
v=phase.StateGrid.Values(4,:);
e_P=phase.StateGrid.Values(5:8,:)';
W=phase.StateGrid.Values(9,:);
P=phase.StateGrid.Values(10,:);
Js=phase.StateGrid.Values(11,:);
n=phase.StateGrid.Values(12,:);

Pcom=phase.ControlGrids.Values(1,:);
Jscom=phase.ControlGrids.Values(2,:);
ncom=phase.ControlGrids.Values(3,:);

phi=phase.Model.ModelOutputGrid.Values(1,:);
gamma=phase.Model.ModelOutputGrid.Values(2,:);
psi=phase.Model.ModelOutputGrid.Values(3,:);
alpha=phase.Model.ModelOutputGrid.Values(4,:);
CL=phase.Model.ModelOutputGrid.Values(5,:);
CD=phase.Model.ModelOutputGrid.Values(6,:);
T=phase.Model.ModelOutputGrid.Values(7,:);
TSFC=phase.Model.ModelOutputGrid.Values(8,:);
ng=phase.Model.ModelOutputGrid.Values(9,:);
Wneg=phase.Model.ModelOutputGrid.Values(10,:);

e=sqrt(e_P(1,:).^2+e_P(2,:).^2+e_P(3,:).^2+e_P(4,:).^2);

ComDataMat=[t', Pcom', Jscom', ncom'];
save ComData ComDataMat

ManeuverPathDataMat=[t', v', phi', gamma', psi'];
save ManeuverPathData ManeuverPathDataMat

figure
hold on
grid
xlabel('x [m]')
ylabel('y [m]')
zlabel('h [m]')
plot3(r_E(1,:),r_E(2,:),-r_E(3,:))
scatter3(r_E(1,1),r_E(2,1),-r_E(3,1),'fill','b');
legend('Airplane Course','Airplane initial')
axis equal

figure

subplot(2,1,1);
hold on
plot(r_E(1,:),-r_E(3,:))
scatter(r_E(1,1),-r_E(3,1),'fill','b');
xlabel('x [m]')
ylabel('h [m]')
axis equal
grid
legend('Airplane Course','Airplane initial')

subplot(2,1,2);
hold on
plot(r_E(2,:),r_E(1,:))
scatter(r_E(2,1),r_E(1,1),'fill','b');
axis equal
xlabel('y [m]')
ylabel('x [m]')
grid

figure
hold on
plot(v(:),-r_E(3,:))
scatter(v(1),-r_E(3,1),'fill','b');
xlabel('v [m/sec]')
ylabel('h [m]')
% ylim([0 700])
grid
legend('Airplane Course','Airplane initial')

figure
hold on
plot(t(:),-r_E(3,:))
scatter(t(1),-r_E(3,1),'fill','b');
xlabel('t [sec]')
ylabel('h [m]')
% ylim([0 700])
grid
legend('Airplane Course','Airplane initial')

