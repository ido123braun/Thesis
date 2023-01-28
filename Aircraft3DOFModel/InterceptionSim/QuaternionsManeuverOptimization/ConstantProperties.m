function [p] = ConstantProperties()

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
