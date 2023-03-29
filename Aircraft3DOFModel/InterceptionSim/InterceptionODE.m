function [x_dot] = InterceptionODE(t,x,p)
x_dot = zeros (12,1) ;

r=x(1); % [m]
rdot=x(2); % [m/sec]
lambda=x(3); % [rad]
lambdadot=x(4); % [rad/sec]
psi=x(5); % [rad]
psidot=x(6); % [rad/sec]
u_M=x(7:9); %[m/sec^2]
r_TE=x(10:12); %[m]

if t<=p.t_T(end)
    v_T=interp1(p.t_T(:),p.v_T(:),t);
    phi_T=interp1(p.t_T(:),p.phi_T(:),t);
    gamma_T=interp1(p.t_T(:),p.gamma_T(:),t);
    psi_T=interp1(p.t_T(:),p.psi_T(:),t);
else
    v_T=p.v_T(end,1);
    phi_T=p.phi_T(end,1);
    gamma_T=p.gamma_T(end,1);
    psi_T=p.psi_T(end,1);
end

E2P=DCM_E2P(phi_T,gamma_T,psi_T); % Earth to Airplane Velocity Coordinates Rotation Matrix

v_P=[v_T; 0; 0];
v_TE=transpose(E2P)*v_P;

E2M=DCM_E2M(lambda,psi);

r_M=[r; 0; 0]; % [m]
r_ME=transpose(E2M)*r_M; % [m]
v_M=[rdot; psidot*r*cos(lambda); -lambdadot*r]; % [m/sec]
v_ME=transpose(E2M)*v_M; % [m/sec]

r_TM=E2M*r_TE; % [m]
v_TM=E2M*v_TE; % [m/sec]

r_rel=r_TM-r_M; %[m]
v_rel=v_TM-v_M; %[m]
Omega_LOS=cross(r_rel,v_rel)./dot(r_rel,r_rel); %[rad/sec]

rho=p.rho0*(1+p.beta0*r_ME(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
k=rho*p.S*p.CD/(2*p.m); %[1/m]

U_M_c=-(p.N*p.m*norm(v_rel)/norm(r_rel))*cross(r_rel,Omega_LOS); %[N]
u_M_c=U_M_c/p.m; %[m/sec^2]

if t<p.td
    x_dot(1)=0;
    x_dot(2)=0;
    x_dot(3)=0;
    x_dot(4)=0;
    x_dot(5)=0;
    x_dot(6)=0;
    x_dot(7:9)=[0; 0; 0]; %[m/sec^3]
else
    x_dot(1)=rdot;
    x_dot(2)=(lambdadot^2)*r+(psidot^2)*r*(cos(lambda)^2)-p.g*sin(lambda)-k*norm(v_M)*rdot+u_M(1);
    x_dot(3)=lambdadot;
    x_dot(4)=-2*lambdadot*rdot/r-0.5*(psidot^2)*sin(2*lambda)-p.g*cos(lambda)/r-k*norm(v_M)*lambdadot-u_M(3)/r;
    x_dot(5)=psidot;
    x_dot(6)=2*psidot*lambdadot*tan(lambda)-2*psidot*rdot/r-k*norm(v_M)*psidot+u_M(2)/(r*cos(lambda));
    x_dot(7:9)=-(u_M-u_M_c)/p.tau; %[m/sec^3]
end

x_dot(10:12)=v_TE; %[m/sec]


