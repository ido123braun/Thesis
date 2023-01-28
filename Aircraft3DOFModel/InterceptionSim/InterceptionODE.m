function [x_dot] = InterceptionODE(t,x,p)
x_dot = zeros (12,1) ;

r_ME=x(1:3); %[m]
v_ME=x(4:6); %[m/sec]
r_TE=x(7:9); %[m]
u_M=x(10:12); %[m/sec^2]

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

psi_M=atan(r_ME(2)/r_ME(1)); %[rad]
lambda_M=-asin(r_ME(3)/norm(r_ME)); %[rad]

E2M=DCM_E2M(lambda_M,psi_M);

r_M=E2M*r_ME; %[m]
r_TM=E2M*r_TE; %[m]
v_M=E2M*v_ME; %[m/sec]
v_TM=E2M*v_TE; %[m/sec]

r_rel=r_TM-r_M; %[m]
v_rel=v_TM-v_M; %[m]
Omega_LOS=cross(r_rel,v_rel)./dot(r_rel,r_rel); %[rad/sec]

rho_M=p.rho0*(1+p.beta0*r_ME(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); %[kg/m^3]
k_M=rho_M*p.S_M*p.CD_M/(2*p.m_M); %[1/m]

W_ME=[0; 0; p.m_M*p.g]; %[N]
W_M=E2M*W_ME; %[N]
D_M=-p.m_M*k_M*norm(v_M).*v_M; %[N]
U_M_c=-(p.N_M*p.m_M*norm(v_rel)/norm(r_rel))*cross(r_rel,Omega_LOS); %[N]
u_M_c=U_M_c/p.m_M; %[m/sec^2]
F_M=W_M+D_M+p.m_M.*u_M; %[N]

a_M=F_M/p.m_M; %[m/sec^2]
a_ME=transpose(E2M)*a_M; %[m/sec^2]

if t<p.td
    x_dot(1:3)=[0; 0; 0]; %[m/sec]
     x_dot(4:6)=[0; 0; 0]; %[m/sec^2]
     x_dot(10:12)=[0; 0; 0]; %[m/sec^3]
else
    x_dot(1:3)=v_ME; %[m/sec]
    x_dot(4:6)=a_ME; %[m/sec^2]
    x_dot(10:12)=-(u_M-u_M_c)/p.tau_M; %[m/sec^3]
end

x_dot(7:9)=v_TE; %[m/sec]


