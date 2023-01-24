function [x_dot] = AirplaneODE(t,x,p)
x_dot = zeros (11,1) ;

r_PE=x(1:3); % Airplane Radius in Earth Coordinates [m]
v_PE=x(4:6); % Airplane TAS Velocity in Earth Coordinates [m/sec]
e_P=x(7:10); % Quaternion Vector
W=x(11); % Airplane Weight [N]
phidot_P=x(12); % Airplane Roll Rate [rad/sec]
Js_P=x(13); % Airplane Throttle
n_P=x(14); % Airplane Load Factor

v_WE=[p.v_W*cos(p.psi_W+pi); p.v_W*sin(p.psi_W+pi); 0]; % Wind Velocity Vector in Earth Coordiantes [m/sec]

E2P=[e_P(1)^2+e_P(2)^2-e_P(3)^2-e_P(4)^2, 2*(e_P(2)*e_P(3)+e_P(1)*e_P(4)), 2*(e_P(2)*e_P(4)-e_P(1)*e_P(3));...
    2*(e_P(2)*e_P(3)-e_P(1)*e_P(4)), e_P(1)^2-e_P(2)^2+e_P(3)^2-e_P(4)^2, 2*(e_P(3)*e_P(4)+e_P(1)*e_P(2));...
    2*(e_P(2)*e_P(4)+e_P(1)*e_P(3)), 2*(e_P(3)*e_P(4)-e_P(1)*e_P(2)), e_P(1)^2-e_P(2)^2-e_P(3)^2+e_P(4)^2]; % Earth to Airplane Velocity Coordinates Rotation Matrix

phi_P=atan2(E2P(2,3),E2P(3,3)); % Airplane Roll Angle [rad]
% gamma_P=-asin(v_PE(3)/norm(v_PE)); % Airplane Course Angle [rad]
% psi_P=atan2(v_PE(2),v_PE(1)); % Airplane Azimuth Angle [rad]

gamma_P=-asin(E2P(1,3));
psi_P=atan2(E2P(1,2),E2P(1,1));

v_P=E2P*v_PE; % Airplane Airspeed Velocity Vector in Velocity Coordiantes [m/sec]
v=norm(v_P); % Airplane Airspeed Velocity [m/sec]
vg_PE=v_PE+v_WE; % Airplane Ground Velocity Vector in Earth Coordiantes [m/sec]

rho0_P=p.P0_STD/(p.R*p.Temp0); % Ground Air Density [kg/m^3]
rho_P=rho0_P*(1+p.beta0*r_PE(3)/p.Temp0)^(p.g/(p.R*p.beta0)-1); % Air Density [kg/m^3]

W_PE=[0; 0; W]; % Airplane Weight Vector in Earth Coordiantes [N]
W_P=E2P*W_PE; % Airplane Weight Vector in Velocity Coordiantes [N]

[T,TSFC]=ThrustCalc(p,x); % Thrust Force[N], Thrust Specific Fuel Consumption [N/N*sec]
[alpha,CL,CD]=AerodynamicCalc(p,x,T); % Angle of Attack [rad], Lift Coefficient, Drag Coefficient

T_P=[T*cos(alpha); 0; -T*sin(alpha)]; % Thrust Vector in Velocity Coordiantes [N]
L=0.5*rho_P*(v^2)*p.S_P*CL; % Lift Force [N]
L_P=[0; 0; -L]; % Lift Vector in Velocity Coordiantes [N]
D=0.5*rho_P*(v^2)*p.S_P*CD; % Drag Force [N]
D_P=[-D; 0; 0]; % Drag Vector in Velocity Coordiantes [N]

F_P=W_P+L_P+D_P+T_P; % Equivalent Force Vector in Velocity Coordiantes [N]

a_P=F_P./(W./p.g); % Airplane Acceleration Vector in Velocity Coordiantes [m/sec^2]
a_PE=transpose(E2P)*a_P; % Airplane Acceleration Vector in Earth Coordiantes [m/sec^2]

ng_P=n_P+(T/W)*sin(alpha);

gammadot_P=(p.g/v)*(ng_P*cos(phi_P)-cos(gamma_P));

if abs(gamma_P)<pi/2
    psidot_P=(ng_P*p.g/(v*cos(gamma_P)))*sin(phi_P);
else
    psidot_P=0;
end

% Omega_P(1,1)=phidot_P-psidot_P*sin(gamma_P);
% Omega_P(2,1)=gammadot_P*cos(phi_P)+psidot_P*cos(gamma_P)*sin(phi_P);
% Omega_P(3,1)=psidot_P*cos(gamma_P)*cos(phi_P)-gammadot_P*sin(phi_P);

Omega_P=(cross(v_P,a_P)/(v^2))+[phidot_P-psidot_P*sin(gamma_P); 0; 0]; % Airplane Rotation Rate in Velocity Coordinates [rad/sec]

edot_P=0.5*[0, -Omega_P(1), -Omega_P(2), -Omega_P(3);...
    Omega_P(1), 0, Omega_P(3), -Omega_P(2);...
    Omega_P(2), -Omega_P(3), 0, Omega_P(1);...
    Omega_P(3), Omega_P(2), -Omega_P(1), 0]*e_P; % Quaternion Vector Derivative [1/sec]

if t<=p.tCom(end)
    phidotcom_P=interp1(p.tCom(:),p.phidotCom(:),t);
    Jscom_P=interp1(p.tCom(:),p.JsCom(:),t);
    ncom_P=interp1(p.tCom(:),p.nCom(:),t);
else
    phidotcom_P=phidot_P;
    Jscom_P=Js_P;
    ncom_P=n_P;
end

x_dot(1:3)=vg_PE; %[m/sec]
x_dot(4:6)=a_PE; %[m/sec^2]
x_dot(7:10)=edot_P;
x_dot(11)=-TSFC*T; %[kg/sec]
x_dot(12)=-(phidot_P-phidotcom_P)./p.tau_phi; %[rad/sec^2]
x_dot(13)=-(Js_P-Jscom_P)./p.tau_Js; %[1/sec]
x_dot(14)=-(n_P-ncom_P)./p.tau_n; %[1/sec]


