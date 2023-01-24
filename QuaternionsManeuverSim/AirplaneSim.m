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
p.gamma_R=1.4; % Air Heat Capacity Ratio
p.v_W=0; % Wind Velocity [m/sec]
p.psi_W=0*pi/180; % Wind Azimuth Angle [rad]

%% Inertial properties

p.m0_P=30500*0.4536; % Aircraft Initial Mass [kg]
p.S_P=300*(0.3048^2); % Aircraft Wing Surface Area [m^2]
p.c_P=11.32*0.3048; % Aircraft Wing Chord [m]
p.dx_P=0.1.*p.c_P; % Aircraft Center of Gravity [m]

%% Engine Properties

p.Tmax_P=20000*4.4482; % Maximum Engine Thrust [N]
p.Ta_P=1; % Thrust altitude drop factor
p.Tm_P=0.35; % Thrust mach factor
p.TSFC_P=2.138e-4; % Thrust Specific Fuel Consumption [N/N*sec]

%% Aerodynamic Properties

load AeroMat

p.alpha=AeroMat(:,1); % Angle of Attack [rad]
p.CL=AeroMat(:,2); % Lift Coefficient
p.CD=AeroMat(:,3); % Drag Coefficient

%% Control Properties

p.tau_phi=0.1; % Roll Rate Servo Delay Coefficient [sec]
p.tau_Js=0.1; % Throttle Servo Delay Coefficient [sec]
p.tau_n=0.1; % Load Factor Servo Delay Coefficient [sec]

load ComData

p.tCom=ComDataMat(:,1); % Command Time [sec]
p.phidotCom=ComDataMat(:,2); % Roll Rate Command [rad/sec]
p.JsCom=ComDataMat(:,3); % Throttle Command
p.nCom=ComDataMat(:,4); % Load Factor Command

%% Simulation

r0_PE=[0; 0; -0*0.3048]; % Initial Airplane Radius in Earth Coordinates [m]
v0_PE=[300; 0; 0]; % Initial Airplane TAS Velocity in Earth Coordinates [m/sec]
W0_P=p.m0_P.*p.g; % Initial Airplane Weight [N]
phi0_P=0*pi/180; % Initial Airplane Roll Angle [rad]
gamma0_P=-asin(v0_PE(3)/norm(v0_PE)); % Initial Airplane Course Angle [rad]
psi0_P=atan2(v0_PE(2),v0_PE(1)); % Initial Airplane Azimuth Angle [rad]
phidot0_P=0; % Initial Airplane Roll Rate [rad/sec]
Js0_P=0.76; % Initial Airplane Throttle
n0_P=1; % Initial Airplane Load Factor

e0=cos(psi0_P/2)*cos(gamma0_P/2)*cos(phi0_P/2)+sin(psi0_P/2)*sin(gamma0_P/2)*sin(phi0_P/2); % Initial Quaternion Parameter 0
e1=cos(psi0_P/2)*cos(gamma0_P/2)*sin(phi0_P/2)-sin(psi0_P/2)*sin(gamma0_P/2)*cos(phi0_P/2); % Initial Quaternion Parameter 1
e2=cos(psi0_P/2)*sin(gamma0_P/2)*cos(phi0_P/2)+sin(psi0_P/2)*cos(gamma0_P/2)*sin(phi0_P/2); % Initial Quaternion Parameter 2
e3=sin(psi0_P/2)*cos(gamma0_P/2)*cos(phi0_P/2)-cos(psi0_P/2)*sin(gamma0_P/2)*sin(phi0_P/2); % Initial Quaternion Parameter 3
e0_P=[e0; e1; e2; e3]; % Initial Quaternion Vector

t0 = 0 ; % Initial Time [sec]
tf = p.tCom(end) ; % Final Time [sec]
tstep=0.1; % Time Step [sec]
RelTol = 1e-7 ; % Relative Tolerance
AbsTol = 1e-7 ; % Absolute Tolerance
x_0 = [r0_PE ; v0_PE; e0_P; W0_P; phidot0_P; Js0_P; n0_P;] ; % Initial Conditions

opts = odeset('RelTol',RelTol,'AbsTol',AbsTol);
[t,x] = ode45(@(t,x) AirplaneODE(t,x,p), t0:tstep:tf, x_0, opts);

%% Results

r_PE=x(:,1:3); % Airplane Radius in Earth Coordinates [m]
v_PE=x(:,4:6); % Airplane TAS Velocity in Earth Coordinates [m/sec]
e_P=x(:,7:10); % Airplane Quaternion Vector
W=x(:,11); % Arplane Weight [N]
phidot_P=x(:,12); % Airplane Roll Rate Angle [rad/sec]
Js_P=x(:,13); % Airplane Throttle
n_P=x(:,14); % Airplane Load Factor

v(:,1)=sqrt(v_PE(:,1).^2+v_PE(:,2).^2+v_PE(:,3).^2); % Airplane TAS Velocity [m/sec]

phi_P=atan2(2.*(e_P(:,1).*e_P(:,2)+e_P(:,3).*e_P(:,4)),1-2.*(e_P(:,2).^2+(e_P(:,3).^2))); % Airplane Roll Angle [rad]
gamma_P(:,1)=-asin(v_PE(:,3)./v(:)); % Airplane Course Angle [rad]
psi_P(:,1)=atan2(v_PE(:,2),v_PE(:,1)); % Airplane Azimuth Angle [rad]
e=sqrt(e_P(:,1).^2+e_P(:,2).^2+e_P(:,3).^2+e_P(:,4).^2);

Temp_P=p.Temp0+p.beta0.*r_PE(:,3);
rho0_P=p.P0_STD/(p.R*p.Temp0);
rho_P=rho0_P.*(1+p.beta0.*r_PE(:,3)./p.Temp0).^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
M=v./sqrt(p.gamma_R*p.R*Temp_P);

CL=2.*W.*n_P./(rho_P.*(v.^2).*p.S_P);
alpha=interp1(p.CL,p.alpha,CL);
CD=interp1(p.CL,p.CD,CL);

T=Js_P.*p.Tmax_P.*((rho_P./p.rho0_STD).^p.Ta_P).*(1+p.Tm_P*M); %[N]

for i=1:length(t)
    E2P=[e_P(i,1)^2+e_P(i,2)^2-e_P(i,3)^2-e_P(i,4)^2, 2*(e_P(i,2)*e_P(i,3)+e_P(i,1)*e_P(i,4)), 2*(e_P(i,2)*e_P(i,4)-e_P(i,1)*e_P(i,3));...
    2*(e_P(i,2)*e_P(i,3)-e_P(i,1)*e_P(i,4)), e_P(i,1)^2-e_P(i,2)^2+e_P(i,3)^2-e_P(i,4)^2, 2*(e_P(i,3)*e_P(i,4)+e_P(i,1)*e_P(i,2));...
    2*(e_P(i,2)*e_P(i,4)+e_P(i,1)*e_P(i,3)), 2*(e_P(i,3)*e_P(i,4)-e_P(i,1)*e_P(i,2)), e_P(i,1)^2-e_P(i,2)^2-e_P(i,3)^2+e_P(i,4)^2]; % Earth to Airplane Velocity Coordinates Rotation Matrix
    
    v_P=E2P*transpose(v_PE(i,1:3));

    W_PE=[0; 0; W(i)]; % Airplane Weight Vector in Earth Coordiantes [N]
    W_P=E2P*W_PE; % Airplane Weight Vector in Velocity Coordiantes [N]
    
    T_P=[T(i)*cos(alpha(i)); 0; -T(i)*sin(alpha(i))]; % Thrust Vector in Velocity Coordiantes [N]
    L=0.5*rho_P(i)*(v(i)^2)*p.S_P*CL(i); % Lift Force [N]
    L_P=[0; 0; -L]; % Lift Vector in Velocity Coordiantes [N]
    D=0.5*rho_P(i)*(v(i)^2)*p.S_P*CD(i); % Drag Force [N]
    D_P=[-D; 0; 0]; % Drag Vector in Velocity Coordiantes [N]
    
    F_P=W_P+L_P+D_P+T_P; % Equivalent Force Vector in Velocity Coordiantes [N]

    a_P=F_P./(W(i)./p.g); % Airplane Acceleration Vector in Velocity Coordiantes [m/sec^2]
    a_PE=transpose(E2P)*a_P; % Airplane Acceleration Vector in Earth Coordiantes [m/sec^2]
    
    ng_P(i)=n_P(i)+(T(i)/W(i))*sin(alpha(i));
    
    gammadot_P=(p.g/v(i))*(ng_P(i)*cos(phi_P(i))-cos(gamma_P(i)));
    
    if abs(gamma_P(i))<pi/2
        psidot_P=(ng_P(i)*p.g/(v(i)*cos(gamma_P(i))))*sin(phi_P(i));
    else
        psidot_P=0;
    end
    
    Omega_P(1,i)=phidot_P(i)-psidot_P*sin(gamma_P(i));
    Omega_P(2,i)=gammadot_P*cos(phi_P(i))+psidot_P*cos(gamma_P(i))*sin(phi_P(i));
    Omega_P(3,i)=psidot_P*cos(gamma_P(i))*cos(phi_P(i))-gammadot_P*sin(phi_P(i));
    
%     a2_P=a_P+v(i)*phidot_P(i);
    
    Omega2_P(i,1:3)=(cross(v_P,a_P)/(v(i)^2))+[Omega_P(1,i); 0; 0]; % Airplane Rotation Rate in Velocity Coordinates [rad/sec]
end

%% Plots

figure
hold on
grid
xlabel('x [m]')
ylabel('y [m]')
zlabel('h [m]')
plot3(r_PE(:,1),r_PE(:,2),-r_PE(:,3))
scatter3(r_PE(1,1),r_PE(1,2),-r_PE(1,3),'fill','b');
legend('Airplane Course','Airplane initial')
axis equal

figure

subplot(2,1,1);
hold on
plot(r_PE(:,1),-r_PE(:,3))
scatter(r_PE(1,1),-r_PE(1,3),'fill','b');
xlabel('x [m]')
ylabel('h [m]')
axis equal
grid
legend('Airplane Course','Airplane initial')

subplot(2,1,2);
hold on
plot(r_PE(:,2),r_PE(:,1))
scatter(r_PE(1,2),r_PE(1,1),'fill','b');
axis equal
xlabel('y [m]')
ylabel('x [m]')
grid

figure
plot(t,Omega_P(1,:))
hold on
plot(t,Omega2_P(:,1),'--')
legend('Euler','Quaternions')
grid
title('P [rad/sec]')

figure
plot(t,Omega_P(2,:))
hold on
plot(t,Omega2_P(:,2),'--')
legend('Euler','Quaternions')
grid
title('Q [rad/sec]')

figure
plot(t,Omega_P(3,:))
hold on
plot(t,Omega2_P(:,3),'--')
legend('Euler','Quaternions')
grid
title('R [rad/sec]')

figure
plot(t,100.*((Omega_P(1,:)'-Omega2_P(:,1)))/Omega_P(1,:)')
hold on
grid
title('P Error [%]')

figure
plot(t,100.*((Omega_P(2,:)'-Omega2_P(:,2)))/Omega_P(2,:)')
hold on
grid
title('Q Error [%]')

figure
plot(t,100.*((Omega_P(3,:)'-Omega2_P(:,3)))/Omega_P(3,:)')
hold on
grid
title('R Error [%]')




