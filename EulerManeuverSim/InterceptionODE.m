function [x_dot] = InterceptionODE(t,x,p)
x_dot = zeros (15,1) ;

r_ME=x(1:3); %[m]
v_ME=x(4:6); %[m/sec]
r_TE=x(7:9); %[m]
v_TE=x(10:12); %[m/sec]
u_M=x(13:15); %[m/sec^2]

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

if t<=5
    a_TE=[-50; -30; 0];
end
if t>5&&t<=10
    a_TE=[50; 30; 0];
else
    a_TE=[0; -30; -50];
end

x_dot(1:3)=v_ME; %[m/sec]
x_dot(4:6)=a_ME; %[m/sec^2]
x_dot(7:9)=v_TE; %[m/sec]
x_dot(10:12)=a_TE; %[m/sec^2]
x_dot(13:15)=-(u_M-u_M_c)/p.tau_M; %[m/sec^3]


