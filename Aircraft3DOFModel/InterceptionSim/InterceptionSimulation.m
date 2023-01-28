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

p.m_M=600; %[kg]
p.D_M=0.34; %[m]
p.S_M=pi*(p.D_M/2)^2; %[m^2]
p.CD_M=0.5;
p.N_M=3;
p.tau_M=0.1; %[sec]
p.td=75; % Launch Delay Time [sec]

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

r0_ME=[100; 100; -100]; % initial missile radius in earth coordinates [m]
v0_ME=[-700; 0; -700]; % initial missile velocity in earth coordinates [m/sec]
r0_TE=[-45000; 0; -300*0.3048]; % initial target radius in earth coordinates [m]
u0_M=[0; 0; 0]; % initial missile control acceleration in missile coordinates [m/sec^2]

t0 = 0 ; % Initial time [sec]
tf = 200 ; % Final time [sec]
RelTol = 1e-7 ; % Relative Tolerance
AbsTol = 1e-7 ; % Absolute Tolerance
x_0 = [r0_ME; v0_ME; r0_TE; u0_M] ; % Initial conditions

opts = odeset('Events',@InterceptionEvent,'RelTol',RelTol,'AbsTol',AbsTol);
[t,x] = ode45(@(t,x) InterceptionODE(t,x,p), t0:0.05:tf, x_0, opts);

%% Results

r_ME=x(:,1:3)./1000; %[km]
v_ME=x(:,4:6); %[m/sec]
r_TE=x(:,7:9)./1000; %[km]
u_M=x(:,10:12); %[m/sec^2]

% v_TE=p.v_TE; % [m/sec]

for i=1:length(x)
    r_rel(i)=norm(r_TE(i,:)-r_ME(i,:));
    v_M(i)=norm(v_ME(i,:));
    
    if r_rel(i)<=0.01
        x=x(1:i,:);
        r_ME=x(:,1:3)./1000; %[m]
        v_ME=x(:,4:6); %[m/sec]
        r_TE=x(:,7:9)./1000; %[m]
        u_M=x(:,10:12); %[m/sec^2]
        t=t(1:i);
        
        i=length(x);
        break
    end
end

%% Plots

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




