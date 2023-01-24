% This Program generates trim matrix AeroMat=[alpha, CL, CD]

clc
clear
close all

c=11.32*0.3048; %[m]
dx=0.1*c; %[m]
dxc=dx/c;

a=[-1.943367e-2; 2.136104e-1; -2.903457e-1; -3.348641e-3; -2.060504e-1; 6.988016e-1; -9.035381e-1]; % CX Parameters
f=[-1.378278e-1; -4.211369e0; 4.775187e0; -1.026225e1; 8.399763e0; -4.354e-1]; % CZ Parameters
m=[-2.02937e-2; 4.660702e-2; -6.012308e-1; -8.062977e-2; 8.320429e-2; 5.018538e-1; 6.378864e-1; 4.226356e-1]; % CM Parameters

alpha=(-10:45)*pi/180;
deltae=(-25:25)*pi/180;

[deltaeGrid,alphaGrid]=meshgrid(deltae,alpha);

CX=a(1)+a(2).*alphaGrid+a(3).*(deltaeGrid.^2)+a(4).*deltaeGrid+a(5).*alphaGrid.*deltaeGrid+a(6).*(alphaGrid.^2)+a(7).*(alphaGrid.^3);
CZ=f(1)+f(2).*alphaGrid+f(3).*(alphaGrid.^2)+f(4).*(alphaGrid.^3)+f(5).*(alphaGrid.^4)+f(6).*deltaeGrid;
CMref=m(1)+m(2).*alphaGrid+m(3).*deltaeGrid+m(4).*alphaGrid.*deltaeGrid+m(5).*(deltaeGrid.^2)+m(6).*(alphaGrid.^2).*deltaeGrid+m(7).*(deltaeGrid.^3)+m(8).*alphaGrid.*(deltaeGrid.^2);

CD=-(cos(alphaGrid).*CX+sin(alphaGrid).*CZ);
CL=-(-sin(alphaGrid).*CX+cos(alphaGrid).*CZ);
CM=CMref-dxc.*CL;

for i=1:length(alpha)
    alphaTrim(i,1)=alpha(i);
    deltaeTrim(i,1)=interp1(CM(i,:),deltaeGrid(i,:),0);
    CLTrim(i,1)=interp1(deltaeGrid(i,:),CL(i,:),deltaeTrim(i));
    CDTrim(i,1)=interp1(deltaeGrid(i,:),CD(i,:),deltaeTrim(i));
    CMTrim(i,1)=interp1(deltaeGrid(i,:),CM(i,:),deltaeTrim(i));
    
    if i>1&&CLTrim(i,1)<CLTrim(i-1,1)
        alphaTrim(i)=[];
        deltaeTrim(i)=[];
        CLTrim(i)=[];
        CDTrim(i)=[];
        CMTrim(i)=[];
        i=length(alpha);
        break;
    end
end

AeroMat=[alphaTrim, CLTrim, CDTrim];
save AeroMat AeroMat




