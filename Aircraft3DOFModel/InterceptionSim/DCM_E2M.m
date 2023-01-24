function [D] = DCM_E2M(lambda_M,psi_M)
%Rotation matrix from Earth to Missile frame

Dy=[cos(lambda_M) 0 -sin(lambda_M);
    0 1 0;
    sin(lambda_M) 0 cos(lambda_M)];

Dz=[cos(psi_M) sin(psi_M) 0;
    -sin(psi_M) cos(psi_M) 0;
    0 0 1];
    
D=Dy*Dz;

end