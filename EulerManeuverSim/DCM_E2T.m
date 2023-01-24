function [D] = DCM_E2T(lambda_T,psi_T)
%Rotation matrix from Earth to Target frame

Dy=[cos(lambda_T) 0 -sin(lambda_T);
    0 1 0;
    sin(lambda_T) 0 cos(lambda_T)];

Dz=[cos(psi_T) sin(psi_T) 0;
    -sin(psi_T) cos(psi_T) 0;
    0 0 1];
    
D=Dy*Dz;

end