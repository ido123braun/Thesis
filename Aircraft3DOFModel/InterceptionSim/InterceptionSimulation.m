clc
clear
close all

%% General Properties

p.g=9.81; %[m/sec^2]
p.rho0=1.225; %[kg/m^3]
p.Temp0=288.15; %[K]
p.beta0=6.5e-3; %[K/m]
p.R=287; %[J/kg*K]

%% Missile Properties

p.m=600; %[kg]
p.D=0.34; %[m]
p.S=pi*(p.D/2)^2; %[m^2]
p.CD=0.5;
p.N=3;
p.tau=0.1; %[sec]
p.td=120; % Launch Delay Time [sec]

%% Target Properties

load ClimbPathData

dpsi=0*pi/180;

p.t_T=ClimbPathDataMat(:,1);
p.v_T=ClimbPathDataMat(:,2);
p.phi_T=ClimbPathDataMat(:,3);
p.gamma_T=ClimbPathDataMat(:,4);
p.psi_T=ClimbPathDataMat(:,5)+dpsi;

load ManeuverPathData

p.t_T(end:end-1+length(ManeuverPathDataMat(:,1)))=ManeuverPathDataMat(1:end,1)+p.t_T(end);
p.v_T(end:end-1+length(ManeuverPathDataMat(:,2)))=ManeuverPathDataMat(1:end,2);
p.phi_T(end:end-1+length(ManeuverPathDataMat(:,3)))=ManeuverPathDataMat(1:end,3);
p.gamma_T(end:end-1+length(ManeuverPathDataMat(:,4)))=ManeuverPathDataMat(1:end,4);
p.psi_T(end:end-1+length(ManeuverPathDataMat(:,5)))=ManeuverPathDataMat(1:end,5)+dpsi;

%% Simulation

r0=100; % initial missile radius [m]
rdot0=700; % initial missile velocity [m/sec]
lambda0=45*pi/180; % Initial Missile pitch angle [rad]
lambdadot0=0; % Initial Misiile pitch angle rate [rad/sec]
psi0=180*pi/180; % Initial Missile azimuth angle [rad]
psidot0=0; % Initial Missile azimuth angle rate [rad/sec]
u0_M=[0; 0; 0]; % initial missile control acceleration in missile coordinates [m/sec^2]
r0_TE=[-46000; 0; -300*0.3048]; % initial target radius in earth coordinates [m]

t0 = 0 ; % Initial time [sec]
tf = 200 ; % Final time [sec]
RelTol = 1e-7 ; % Relative Tolerance
AbsTol = 1e-7 ; % Absolute Tolerance
x_0 = [r0; rdot0; lambda0; lambdadot0; psi0; psidot0; u0_M; r0_TE] ; % Initial conditions

opts = odeset('Events',@InterceptionEvent,'RelTol',RelTol,'AbsTol',AbsTol);
[t,x] = ode45(@(t,x) InterceptionODE(t,x,p), t0:0.05:tf, x_0, opts);

%% Results

r=x(:,1); % [m]
rdot=x(:,2); % [m/sec]
lambda=x(:,3); % [rad]
lambdadot=x(:,4); % [rad/sec]
psi=x(:,5); % [rad]
psidot=x(:,6); % [rad/sec]
u_M=x(:,7:9); %[m/sec^2]
r_TE=x(:,10:12); %[m]

for i=1:length(x)
    E2M=DCM_E2M(lambda(i),psi(i));
    r_M(i,:)=[r(i); 0; 0]; % [m]
    r_ME(i,:)=transpose(E2M)*transpose(r_M(i,:)); % [m]
    v_M(i,:)=[rdot(i); psidot(i)*r(i)*cos(lambda(i)); -lambdadot(i)*r(i)]; % [m/sec]
    v_ME(i,:)=transpose(E2M)*transpose(v_M(i,:)); % [m/sec]
    
    r_rel(i)=norm(r_TE(i,:)-r_ME(i,:));
    
    if r_rel(i)<=0.01||r_ME(i,3)>=0
        x=x(1:i,:);
        
        r=x(:,1); % [m]
        rdot=x(:,2); % [m/sec]
        lambda=x(:,3); % [rad]
        lambdadot=x(:,4); % [rad/sec]
        psi=x(:,5); % [rad]
        psidot=x(:,6); % [rad/sec]
        u_M=x(:,7:9); %[m/sec^2]
        r_TE=x(:,10:12); %[m]
        t=t(1:i);
        
        i=length(x);
        break
    end
end

%% Plots

r=r./1000; % [km]
lambda=lambda.*180/pi; % [deg]
lambdadot=lambdadot.*180/pi; % [deg/sec]
psi=psi.*180/pi; % [deg]
psidot=psidot.*180/pi; % [deg/sec]
r_ME=r_ME./1000; % [km]
r_TE=r_TE./1000; % [km]
r_rel=r_rel./1000; % [km]

figure
hold on
grid
xlabel('x [km]')
ylabel('y [km]')
zlabel('h [km]')
plot3(r_ME(:,1),r_ME(:,2),-r_ME(:,3))
plot3(r_TE(:,1),r_TE(:,2),-r_TE(:,3))
scatter3(r_ME(1,1),r_ME(1,2),-r_ME(1,3),'fill','b');
scatter3(r_TE(1,1),r_TE(1,2),-r_TE(1,3),'fill','r');
legend('Missile Course','Target Course','Missile initial','Target initial')
axis equal

figure

subplot(2,1,1);
hold on
plot(r_ME(:,1),-r_ME(:,3))
plot(r_TE(:,1),-r_TE(:,3))
scatter(r_ME(1,1),-r_ME(1,3),'fill','b');
scatter(r_TE(1,1),-r_TE(1,3),'fill','r');
xlabel('x [km]')
ylabel('h [km]')
axis equal
grid
legend('Missile Course','Target Course','Missile initial','Target initial')

subplot(2,1,2);
hold on
plot(r_ME(:,2),r_ME(:,1))
plot(r_TE(:,2),r_TE(:,1))
scatter(r_ME(1,2),r_ME(1,1),'fill','b');
scatter(r_TE(1,2),r_TE(1,1),'fill','r');
axis equal
xlabel('y [km]')
ylabel('x [km]')
grid

figure

subplot(3,1,1);
hold on
plot(t,r_ME(:,1))
plot(t,r_TE(:,1))
xlabel('t [sec]')
ylabel('x [km]')
grid
legend('Missile Course','Target Course')

subplot(3,1,2);
hold on
plot(t,r_ME(:,2))
plot(t,r_TE(:,2))
xlabel('t [sec]')
ylabel('y [km]')
grid

subplot(3,1,3);
hold on
plot(t,-r_ME(:,3))
plot(t,-r_TE(:,3))
xlabel('t [sec]')
ylabel('h [km]')
grid

figure
hold on
plot(t,r_rel)
xlabel('t [sec]')
ylabel('r_r_e_l [km]')
grid




