function [x_dot] = AirplaneODE(t,x,p)
x_dot = zeros (12,1) ;

r_E=x(1:3); % Airplane Radius in Earth Coordinates [m]
v=x(4); % Airplane TAS Velocity [m/sec]
e_P=x(5:8); % Quaternion Vector
W=x(9); % Airplane Weight [N]
P=x(10); % Airplane Roll Rate [rad/sec]
Js=x(11); % Airplane Throttle
n=x(12); % Airplane Load Factor

vW_E=[p.vW*cos(p.psiW+pi); p.vW*sin(p.psiW+pi); 0]; % Wind Velocity Vector in Earth Coordiantes [m/sec]

E2P=[e_P(1)^2+e_P(2)^2-e_P(3)^2-e_P(4)^2, 2*(e_P(2)*e_P(3)+e_P(1)*e_P(4)), 2*(e_P(2)*e_P(4)-e_P(1)*e_P(3));...
    2*(e_P(2)*e_P(3)-e_P(1)*e_P(4)), e_P(1)^2-e_P(2)^2+e_P(3)^2-e_P(4)^2, 2*(e_P(3)*e_P(4)+e_P(1)*e_P(2));...
    2*(e_P(2)*e_P(4)+e_P(1)*e_P(3)), 2*(e_P(3)*e_P(4)-e_P(1)*e_P(2)), e_P(1)^2-e_P(2)^2-e_P(3)^2+e_P(4)^2]; % Earth to Airplane Velocity Coordinates Rotation Matrix

v_P=[v; 0; 0]; % Airplane TAS Velocity Vector in Velocity Coordiantes [m/sec]
v_E=transpose(E2P)*v_P; % Airplane Airspeed Velocity Vector in Earth Coordiantes [m/sec]
vg_E=v_E+vW_E; % Airplane Ground Velocity Vector in Earth Coordiantes [m/sec]

rho0=p.P0_STD/(p.R*p.Temp0); % Ground Air Density [kg/m^3]
rho=rho0*(1+p.beta0*r_E(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); % Air Density [kg/m^3]

[T,TSFC]=ThrustCalc(p,r_E,v,Js); % Thrust Force[N], Thrust Specific Fuel Consumption [N/N*sec]
[alpha,CL,CD]=AerodynamicCalc(p,r_E,v,W,n); % Angle of Attack [rad], Lift Coefficient, Drag Coefficient

L=0.5*rho*(v^2)*p.S*CL; % Lift Force [N]
D=0.5*rho*(v^2)*p.S*CD; % Drag Force [N]

W_E=[0; 0; W]; % Airplane Weight Vector in Earth Coordiantes [N]

W_P=E2P*W_E; % Airplane Weight Vector in Velocity Coordiantes [N]
T_P=[T*cos(alpha); 0; -T*sin(alpha)]; % Thrust Vector in Velocity Coordiantes [N]
L_P=[0; 0; -L]; % Lift Vector in Velocity Coordiantes [N]
D_P=[-D; 0; 0]; % Drag Vector in Velocity Coordiantes [N]

F_P=W_P+L_P+D_P+T_P; % Equivalent Force Vector in Velocity Coordiantes [N]
a_P=F_P./(W./p.g); % Airplane Acceleration Vector in Velocity Coordiantes [m/sec^2]
Omega_P=(cross(v_P,a_P)/(v^2))+[P; 0; 0]; % Airplane Rotation Rate in Velocity Coordinates [rad/sec]

if t<=p.tCom(end)
    Pcom=interp1(p.tCom(:),p.PCom(:),t);
    Jscom=interp1(p.tCom(:),p.JsCom(:),t);
    ncom=interp1(p.tCom(:),p.nCom(:),t);
else
    Pcom=P;
    Jscom=Js;
    ncom=n;
end

rdot_E=vg_E; % Airplane Radius Derivative [m/sec]
vdot=a_P(1); % Airplane Velocity Derivative [m/sec^2]
edot_P=0.5*[0, -Omega_P(1), -Omega_P(2), -Omega_P(3);...
    Omega_P(1), 0, Omega_P(3), -Omega_P(2);...
    Omega_P(2), -Omega_P(3), 0, Omega_P(1);...
    Omega_P(3), Omega_P(2), -Omega_P(1), 0]*e_P; % Quaternion Vector Derivative [1/sec]
Wdot=-TSFC*T; % Airplane Weight Derivative [kg/sec]
Pdot=-(P-Pcom)./p.tau_P; % Airplane Roll Rate Derivative [rad/sec^2]
Jsdot=-(Js-Jscom)./p.tau_Js; % Airplane Throttle Derivative [1/sec]
ndot=-(n-ncom)./p.tau_n; % Airplane Load Factor Derivative [1/sec]

x_dot(1:3)=rdot_E;
x_dot(4)=vdot;
x_dot(5:8)=edot_P;
x_dot(9)=Wdot;
x_dot(10)=Pdot;
x_dot(11)=Jsdot;
x_dot(12)=ndot;


