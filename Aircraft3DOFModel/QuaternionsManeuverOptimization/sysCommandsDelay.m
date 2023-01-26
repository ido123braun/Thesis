function [Pdot, Jsdot, ndot] = sysCommandsDelay(P,Js,n,Pcom,Jscom,ncom)
%SYSTRANSLATIONPROPAGATION Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

Pdot=-(P-Pcom)./p.tau_P; % Airplane Roll Rate Derivative [rad/sec^2]
Jsdot=-(Js-Jscom)./p.tau_Js; % Airplane Throttle Derivative [1/sec]
ndot=-(n-ncom)./p.tau_n; % Airplane Load Factor Derivative [1/sec]