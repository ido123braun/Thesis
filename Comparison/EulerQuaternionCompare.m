clc
clear
close all

load ComData
load QuaternionsControlData
load EulerControlData

figure
hold on
plot(ComDataMat(:,1),ComDataMat(:,2))
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,2))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,2),'--')
grid
legend('Command Data','Euler','Quaternions')
title('\phi dot')

figure
hold on
plot(ComDataMat(:,1),ComDataMat(:,3))
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,3))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,3),'--')
grid
legend('Command Data','Euler','Quaternions')
title('J_s')

figure
hold on
plot(ComDataMat(:,1),ComDataMat(:,4))
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,4))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,4),'--')
grid
legend('Command Data','Euler','Quaternions')
title('n')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,5))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,5),'--')
grid
legend('Euler','Quaternions')
title('\phi')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,6))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,6),'--')
grid
legend('Euler','Quaternions')
title('\gamma')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,7))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,7),'--')
grid
legend('Euler','Quaternions')
title('\psi')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,8))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,8),'--')
grid
legend('Euler','Quaternions')
title('x')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,9))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,9),'--')
grid
legend('Euler','Quaternions')
title('y')

figure
hold on
plot(EulerControlDataMat(:,1),-EulerControlDataMat(:,10))
plot(QuaternionsControlDataMat(:,1),-QuaternionsControlDataMat(:,10),'--')
grid
legend('Euler','Quaternions')
title('h')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,11))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,11),'--')
grid
legend('Euler','Quaternions')
title('v')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,12))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,12),'--')
grid
legend('Euler','Quaternions')
title('v_x')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,13))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,13),'--')
grid
legend('Euler','Quaternions')
title('v_y')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,14))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,14),'--')
grid
legend('Euler','Quaternions')
title('v_z')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,15))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,15),'--')
grid
legend('Euler','Quaternions')
title('W')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,16))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,16),'--')
grid
legend('Euler','Quaternions')
title('\rho')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,17))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,17),'--')
grid
legend('Euler','Quaternions')
title('M')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,18))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,18),'--')
grid
legend('Euler','Quaternions')
title('\alpha')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,19))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,19),'--')
grid
legend('Euler','Quaternions')
title('C_L')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,20))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,20),'--')
grid
legend('Euler','Quaternions')
title('C_D')

figure
hold on
plot(EulerControlDataMat(:,1),EulerControlDataMat(:,21))
plot(QuaternionsControlDataMat(:,1),QuaternionsControlDataMat(:,21),'--')
grid
legend('Euler','Quaternions')
title('T')





