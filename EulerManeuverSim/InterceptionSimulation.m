clc
clear
close all

%% General properties

p.g=9.81; %[m/sec^2]
p.rho0=1.225; %[kg/m^3]
p.Temp0=288.15; %[K]
p.beta0=6.5e-3; %[K/m]
p.R=287; %[J/kg*K]

%% Missile properties

p.m_M=100; %[kg]
p.S_M=0.5; %[m^2]
p.CD_M=1e-3;
p.N_M=3;
p.tau_M=0.1; %[sec]

%% Simulation

r0_ME=[100; 100; -100]; % initial missile radius in earth coordinates [m]
v0_ME=[0; 0; -1000]; % initial missile velocity in earth coordinates [m/sec]
r0_TE=[1000; 3000; -2000]; % initial target radius in earth coordinates [m]
v0_TE=[0; -100; 0]; % initial target velocity in earth coordinates [m/sec]
u0_M=[0; 0; 0]; % initial missile control acceleration in missile coordinates [m/sec^2]

t0 = 0 ; % Initial time [sec]
tf = 20 ; % Final time [sec]
RelTol = 1e-7 ; % Relative Tolerance
AbsTol = 1e-7 ; % Absolute Tolerance
x_0 = [r0_ME ; v0_ME ; r0_TE ; v0_TE; u0_M] ; % Initial conditions

opts = odeset('Events',@InterceptionEvent,'RelTol',RelTol,'AbsTol',AbsTol);
[t,x] = ode45(@(t,x) InterceptionODE(t,x,p), t0:0.05:tf, x_0, opts);

%% Results

r_ME=x(:,1:3); %[m]
v_ME=x(:,4:6); %[m/sec]
r_TE=x(:,7:9); %[m]
v_TE=x(:,10:12); %[m/sec]
u_M=x(:,13:15); %[m/sec^2]

for i=1:length(x)
    r_rel(i)=norm(r_TE(i,:)-r_ME(i,:));
    v_ME_abs(i)=norm(v_ME(i,:));
    
    if r_rel(i)<=10
        x=x(1:i,:);
        r_ME=x(:,1:3); %[m]
        v_ME=x(:,4:6); %[m/sec]
        r_TE=x(:,7:9); %[m]
        v_TE=x(:,10:12); %[m/sec]
        u_M=x(:,13:15); %[m/sec^2]
        t=t(1:i);
        
        i=length(x);
        break
    end
end

%% Plots

figure
hold on
grid
xlabel('x [m]')
ylabel('y [m]')
zlabel('h [m]')
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
xlabel('x [m]')
ylabel('h [m]')
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
xlabel('y [m]')
ylabel('x [m]')
grid

figure

subplot(3,1,1);
hold on
plot(t,r_ME(:,1))
plot(t,r_TE(:,1))
xlabel('t [sec]')
ylabel('x [m]')
grid
legend('Missile Course','Target Course')

subplot(3,1,2);
hold on
plot(t,r_ME(:,2))
plot(t,r_TE(:,2))
xlabel('t [sec]')
ylabel('y [m]')
grid

subplot(3,1,3);
hold on
plot(t,-r_ME(:,3))
plot(t,-r_TE(:,3))
xlabel('t [sec]')
ylabel('h [m]')
grid

figure
hold on
plot(t,r_rel)
xlabel('t [sec]')
ylabel('r_r_e_l [m]')
grid




