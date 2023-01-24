clc
clear
close all

%% General properties

p.g=9.81; % Gravitational Acceleration [m/sec^2]
p.rho0_STD=1.225; % Standard Air Density [kg/m^3]
p.Temp0_STD=288.15; % Standard Air Temperature [K]
p.P0_STD=101325; % Standard Air Pressure [Pa]
p.Temp0=288.15; % Air Temperature [K]
p.beta0=6.5e-3; % Temperature Gradient [K/m]
p.R=287; % Air Gas Constant [J/kg*K]
p.gammaR=1.4; % Air Heat Capacity Ratio
p.vW=0; % Wind Velocity [m/sec]
p.psiW=0*pi/180; % Wind Azimuth Angle [rad]

%% Inertial properties

p.m0=30500*0.4536; % Aircraft Initial Mass [kg]
p.S=300*(0.3048^2); % Aircraft Wing Surface Area [m^2]
p.c=11.32*0.3048; % Aircraft Wing Chord [m]
p.dx=0.1.*p.c; % Aircraft Center of Gravity [m]

%% Engine Properties

p.Tmax=20000*4.4482; % Maximum Engine Thrust [N]
p.Ta=1; % Thrust altitude drop factor
p.Tm=0.35; % Thrust mach factor
p.TSFC=2.138e-4; % Thrust Specific Fuel Consumption [N/N*sec]

%% Aerodynamic Properties

load AeroMat

p.alpha=AeroMat(:,1); % Angle of Attack [rad]
p.CL=AeroMat(:,2); % Lift Coefficient
p.CD=AeroMat(:,3); % Drag Coefficient

%% Control Properties

p.tau_P=0.1; % Roll Rate Servo Delay Coefficient [sec]
p.tau_Js=0.1; % Throttle Servo Delay Coefficient [sec]
p.tau_n=0.1; % Load Factor Servo Delay Coefficient [sec]

load ComData

p.tCom=ComDataMat(:,1); % Command Time [sec]
p.PCom=ComDataMat(:,2); % Roll Rate Command [rad/sec]
p.JsCom=ComDataMat(:,3); % Throttle Command
p.nCom=ComDataMat(:,4); % Load Factor Command

%% Simulation

r0_E=[0; 0; -10000*0.3048]; % Initial Airplane Radius in Earth Coordinates [m]
v0=300; % Initial Airplane TAS Velocity [m/sec]
phi0=0*pi/180; % Initial Airplane Roll Angle [rad]
gamma0=0*pi/180; % Initial Airplane Course Angle [rad]
psi0=0*pi/180; % Initial Airplane Azimuth Angle [rad]
W0=p.m0.*p.g; % Initial Airplane Weight [N]
P0=0; % Initial Airplane Roll Rate [rad/sec]
Js0=0.76; % Initial Airplane Throttle
n0=1; % Initial Airplane Load Factor

t0 = 0 ; % Initial Time [sec]
tf = p.tCom(end) ; % Final Time [sec]
tstep=0.1; % Time Step [sec]
RelTol = 1e-7 ; % Relative Tolerance
AbsTol = 1e-7 ; % Absolute Tolerance
x_0 = [r0_E ; v0; phi0; gamma0; psi0; W0; P0; Js0; n0;] ; % Initial Conditions

opts = odeset('Events',@GammaSingularityEvent,'RelTol',RelTol,'AbsTol',AbsTol);
[t,x] = ode45(@(t,x) AirplaneODE(t,x,p), t0:tstep:tf, x_0, opts);

%% Results

r_E=x(:,1:3); % Airplane Radius in Earth Coordinates [m]
v=x(:,4); % Airplane TAS Velocity [m/sec]
phi=x(:,5); % Airplane Roll Angle [rad]
gamma=x(:,6); % Airplane Course Angle [rad]
psi=x(:,7); % Airplane Aximuth Angle [rad]
W=x(:,8); % Airplane Weight [N]
P=x(:,9); % Airplane Roll Angle [rad/sec]
Js=x(:,10); % Airplane Throttle
n=x(:,11); % Airplane Load Factor

Temp=p.Temp0+p.beta0.*r_E(:,3);
rho0=p.P0_STD/(p.R*p.Temp0);
rho=rho0.*(1+p.beta0.*r_E(:,3)./p.Temp0).^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
M=v./sqrt(p.gammaR*p.R*Temp);

CL=2.*W.*n./(rho.*(v.^2).*p.S);
alpha=interp1(p.CL,p.alpha,CL);
CD=interp1(p.CL,p.CD,CL);

T=Js.*p.Tmax.*((rho./p.rho0_STD).^p.Ta).*(1+p.Tm*M); %[N]

%% Plots

figure
hold on
grid
xlabel('x [m]')
ylabel('y [m]')
zlabel('h [m]')
plot3(r_E(:,1),r_E(:,2),-r_E(:,3))
scatter3(r_E(1,1),r_E(1,2),-r_E(1,3),'fill','b');
legend('Airplane Course','Airplane initial')
axis equal

figure

subplot(2,1,1);
hold on
plot(r_E(:,1),-r_E(:,3))
scatter(r_E(1,1),-r_E(1,3),'fill','b');
xlabel('x [m]')
ylabel('h [m]')
axis equal
grid
legend('Airplane Course','Airplane initial')

subplot(2,1,2);
hold on
plot(r_E(:,2),r_E(:,1))
scatter(r_E(1,2),r_E(1,1),'fill','b');
axis equal
xlabel('y [m]')
ylabel('x [m]')
grid

