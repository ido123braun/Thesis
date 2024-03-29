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

r0_E=[0; 0; -30000*0.3048]; % Initial Airplane Radius in Earth Coordinates [m]
v0=300; % Initial Airplane TAS Velocity [m/sec]
phi0=0*pi/180; % Initial Airplane Roll Angle [rad]
gamma0=0*pi/180; % Initial Airplane Course Angle [rad]
psi0=0*pi/180; % Initial Airplane Azimuth Angle [rad]
W0=p.m0.*p.g; % Initial Airplane Weight [N]
P0=0; % Initial Airplane Roll Rate [rad/sec]
Js0=0.76; % Initial Airplane Throttle
n0=1; % Initial Airplane Load Factor

e0=cos(psi0/2)*cos(gamma0/2)*cos(phi0/2)+sin(psi0/2)*sin(gamma0/2)*sin(phi0/2); % Initial Quaternion Parameter 0
e1=cos(psi0/2)*cos(gamma0/2)*sin(phi0/2)-sin(psi0/2)*sin(gamma0/2)*cos(phi0/2); % Initial Quaternion Parameter 1
e2=cos(psi0/2)*sin(gamma0/2)*cos(phi0/2)+sin(psi0/2)*cos(gamma0/2)*sin(phi0/2); % Initial Quaternion Parameter 2
e3=sin(psi0/2)*cos(gamma0/2)*cos(phi0/2)-cos(psi0/2)*sin(gamma0/2)*sin(phi0/2); % Initial Quaternion Parameter 3
e0_P=[e0; e1; e2; e3]; % Initial Quaternion Vector

t0 = 0 ; % Initial Time [sec]
tf = p.tCom(end) ; % Final Time [sec]
tstep=0.1; % Time Step [sec]
RelTol = 1e-7 ; % Relative Tolerance
AbsTol = 1e-7 ; % Absolute Tolerance
x_0 = [r0_E ; v0; e0_P; W0; P0; Js0; n0;] ; % Initial Conditions

opts = odeset('RelTol',RelTol,'AbsTol',AbsTol);
[t,x] = ode45(@(t,x) AirplaneODE(t,x,p), t0:tstep:tf, x_0, opts);

%% Results

r_E=x(:,1:3); % Airplane Radius in Earth Coordinates [m]
v=x(:,4); % Airplane TAS Velocity [m/sec]
e_P=x(:,5:8); % Airplane Quaternion Vector
W=x(:,9); % Arplane Weight [N]
P=x(:,10); % Airplane Roll Rate [rad/sec]
Js=x(:,11); % Airplane Throttle
n=x(:,12); % Airplane Load Factor

e=sqrt(e_P(:,1).^2+e_P(:,2).^2+e_P(:,3).^2+e_P(:,4).^2);

Temp=p.Temp0+p.beta0.*r_E(:,3);
rho0=p.P0_STD/(p.R*p.Temp0);
rho=rho0.*(1+p.beta0.*r_E(:,3)./p.Temp0).^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
M=v./sqrt(p.gammaR*p.R*Temp);

CL=2.*W.*n./(rho.*(v.^2).*p.S);
alpha=interp1(p.CL,p.alpha,CL);
CD=interp1(p.CL,p.CD,CL);

T=Js.*p.Tmax.*((rho./p.rho0_STD).^p.Ta).*(1+p.Tm*M); %[N]

for i=1:length(t)
    E2P=[e_P(i,1)^2+e_P(i,2)^2-e_P(i,3)^2-e_P(i,4)^2, 2*(e_P(i,2)*e_P(i,3)+e_P(i,1)*e_P(i,4)), 2*(e_P(i,2)*e_P(i,4)-e_P(i,1)*e_P(i,3));...
    2*(e_P(i,2)*e_P(i,3)-e_P(i,1)*e_P(i,4)), e_P(i,1)^2-e_P(i,2)^2+e_P(i,3)^2-e_P(i,4)^2, 2*(e_P(i,3)*e_P(i,4)+e_P(i,1)*e_P(i,2));...
    2*(e_P(i,2)*e_P(i,4)+e_P(i,1)*e_P(i,3)), 2*(e_P(i,3)*e_P(i,4)-e_P(i,1)*e_P(i,2)), e_P(i,1)^2-e_P(i,2)^2-e_P(i,3)^2+e_P(i,4)^2]; % Earth to Airplane Velocity Coordinates Rotation Matrix

    phi(i)=atan2(E2P(2,3),E2P(3,3)); % Airplane Roll Angle [rad]
    gamma(i)=-asin(E2P(1,3));
    psi(i)=atan2(E2P(1,2),E2P(1,1));
    
    v_P=[v(i); 0; 0];

    W_PE=[0; 0; W(i)]; % Airplane Weight Vector in Earth Coordiantes [N]
    W_P=E2P*W_PE; % Airplane Weight Vector in Velocity Coordiantes [N]
    
    T_P=[T(i)*cos(alpha(i)); 0; -T(i)*sin(alpha(i))]; % Thrust Vector in Velocity Coordiantes [N]
    L=0.5*rho(i)*(v(i)^2)*p.S*CL(i); % Lift Force [N]
    L_P=[0; 0; -L]; % Lift Vector in Velocity Coordiantes [N]
    D=0.5*rho(i)*(v(i)^2)*p.S*CD(i); % Drag Force [N]
    D_P=[-D; 0; 0]; % Drag Vector in Velocity Coordiantes [N]
    
    F_P=W_P+L_P+D_P+T_P; % Equivalent Force Vector in Velocity Coordiantes [N]

    a_P=F_P./(W(i)./p.g); % Airplane Acceleration Vector in Velocity Coordiantes [m/sec^2]
    a_PE=transpose(E2P)*a_P; % Airplane Acceleration Vector in Earth Coordiantes [m/sec^2]
    
    Omega_P(i,1:3)=(cross(v_P,a_P)/(v(i)^2))+[P(i); 0; 0]; % Airplane Rotation Rate in Velocity Coordinates [rad/sec]
end

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

figure

subplot(3,1,1);
hold on
plot(t,phi.*180/pi)
xlabel('t [sec]')
ylabel('\phi [deg]')
grid
xlim([0 t(end)])

subplot(3,1,2);
hold on
plot(t,gamma.*180/pi)
xlabel('t [sec]')
ylabel('\gamma [deg]')
grid
xlim([0 t(end)])

subplot(3,1,3);
hold on
plot(t,psi.*180/pi)
xlabel('t [sec]')
ylabel('\psi [deg]')
grid
xlim([0 t(end)])

figure

subplot(3,1,1);
hold on
plot(t,P.*180/pi)
xlabel('t [sec]')
ylabel('P [deg/sec]')
grid
xlim([0 t(end)])

subplot(3,1,2);
hold on
plot(t,Js.*100)
xlabel('t [sec]')
ylabel('J_s [%]')
grid
xlim([0 t(end)])

subplot(3,1,3);
hold on
plot(t,n)
xlabel('t [sec]')
ylabel('n')
grid
xlim([0 t(end)])




