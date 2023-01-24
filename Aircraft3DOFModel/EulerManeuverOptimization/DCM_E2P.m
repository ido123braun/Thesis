function [D] = DCM_E2P(phi_P,gamma_P,psi_P)
%Rotation matrix from Earth to Missile frame

Dx=[1 0 0;
    0 cos(phi_P) sin(phi_P);
    0 -sin(phi_P) cos(phi_P)];

Dy=[cos(gamma_P) 0 -sin(gamma_P);
    0 1 0;
    sin(gamma_P) 0 cos(gamma_P)];

Dz=[cos(psi_P) sin(psi_P) 0;
    -sin(psi_P) cos(psi_P) 0;
    0 0 1];
    
D=Dx*Dy*Dz;

end