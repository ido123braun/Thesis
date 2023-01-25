function [x_dot] = AirplaneODE(t,x,p)
x_dot = zeros (11,1);

r_E=x(1:3); % Airplane Radius in Earth Coordinates [m]
v=x(4); % Airplane TAS Velocity [m/sec]
phi=x(5); % Airplane Roll Angle [rad]
gamma=x(6); % Airplane Course Angle [rad]
psi=x(7); % Airplane Azimuth Angle [rad]
W=x(8); % Airplane Weight [N]
P=x(9); % Airplane Roll Rate [rad/sec]
Js=x(10); % Airplane Throttle
n=x(11); % Airplane Load Factor

vW_E=[p.vW*cos(p.psiW+pi); p.vW*sin(p.psiW+pi); 0]; % Wind Velocity Vector in Earth Coordiantes [m/sec]

E2P=DCM_E2P(phi,gamma,psi); % Earth to Airplane Velocity Coordinates Rotation Matrix

v_P=[v; 0; 0]; % Airplane TAS Velocity Vector in Velocity Coordiantes [m/sec]
v_E=transpose(E2P)*v_P; % Airplane Airspeed Velocity Vector in Earth Coordiantes [m/sec]
vg_E=v_E+vW_E; % Airplane Ground Velocity Vector in Earth Coordiantes [m/sec]

rho0=p.P0_STD/(p.R*p.Temp0); % Ground Air Density [kg/m^3]
rho=rho0*(1+p.beta0*r_E(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); % Air Density [kg/m^3]

[T,TSFC]=ThrustCalc(p,r_E,v,Js); % Thrust Force[N], Thrust Specific Fuel Consumption [N/N*sec]
[alpha,CL,CD]=AerodynamicCalc(p,r_E,v,W,n); % Angle of Attack [rad], Lift Coefficient, Drag Coefficient

L=0.5*rho*(v^2)*p.S*CL; % Lift Force [N]
D=0.5*rho*(v^2)*p.S*CD; % Drag Force [N]

if t<=p.tCom(end)
    Pcom=interp1(p.tCom(:),p.PCom(:),t);
    Jscom=interp1(p.tCom(:),p.JsCom(:),t);
    ncom=interp1(p.tCom(:),p.nCom(:),t);
else
    Pcom=P;
    Jscom=Js;
    ncom=n;
end

ng=(L+T*sin(alpha))/W; % g-force Load Factor

rdot_E=vg_E; % Airplane Radius Derivative [m/sec]
vdot=(p.g/W)*(T*cos(alpha)-D)-p.g*sin(gamma); % Airplane Velocity Derivative [m/sec^2]
gammadot=(p.g/v)*(ng*cos(phi)-cos(gamma)); % Airplane Course Angle Derivative [rad/sec]
psidot=ng*p.g*sin(phi)/(v*cos(gamma)); % Airplane Azimuth Angle Derivative [rad/sec]
phidot=P+psidot*sin(gamma); % Airplane Roll Angle Derivative [rad/sec]
Wdot=-TSFC*T; % Airplane Weight Derivative [kg/sec]
Pdot=-(P-Pcom)./p.tau_P; % Airplane Roll Rate Derivative [rad/sec^2]
Jsdot=-(Js-Jscom)./p.tau_Js; % Airplane Throttle Derivative [1/sec]
ndot=-(n-ncom)./p.tau_n; % Airplane Load Factor Derivative [1/sec]

x_dot(1:3)=rdot_E;
x_dot(4)=vdot;
x_dot(5)=phidot;
x_dot(6)=gammadot;
x_dot(7)=psidot;
x_dot(8)=Wdot;
x_dot(9)=Pdot;
x_dot(10)=Jsdot;
x_dot(11)=ndot;


