function [phidot2_P, Jsdot_P, ndot_P] = sysCommandsDelay(phidot_P,Js_P,n_P,phidotcom_P,Jscom_P,ncom_P)
%SYSTRANSLATIONPROPAGATION Summary of this function goes here
%   Detailed explanation goes here

p=ConstantProperties();

phidot2_P=-(phidot_P-phidotcom_P)./p.tau_phi;
Jsdot_P=-(Js_P-Jscom_P)./p.tau_J;
ndot_P=-(n_P-ncom_P)./p.tau_n;