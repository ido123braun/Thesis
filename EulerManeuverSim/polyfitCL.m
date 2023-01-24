clc
clear
close all

load AeroMat

alphaTrim=AeroMat(:,1); %[rad]
CLTrim=AeroMat(:,2);
CDTrim=AeroMat(:,3);

CL0=0.114909;
CLa=3.4088;
CL=CLa.*alphaTrim+CL0;

figure
hold on
plot(alphaTrim,CL)
scatter(alphaTrim,CLTrim)
grid

% syms CL
% 
% CDcoeffs=sym(polyfit(CLTrim,CDTrim,10));
% alphacoeffs=sym(polyfit(CLTrim,alphaTrim,10));
% 
% CD=poly2sym(CDcoeffs,CL);
% alpha=poly2sym(alphacoeffs,CL);
% 
% CDt=0.02+0.15*CL^2;
% 
% figure
% hold on
% fplot(CL,alpha)
% scatter(CLTrim,alphaTrim)
% xlim([CLTrim(1) CLTrim(end)])
% ylim([-1 2])
% grid
% 
% figure
% hold on
% fplot(CL,CDt)
% scatter(CLTrim,CDTrim)
% xlim([CLTrim(1) CLTrim(end)])
% ylim([-1 2])
% grid

