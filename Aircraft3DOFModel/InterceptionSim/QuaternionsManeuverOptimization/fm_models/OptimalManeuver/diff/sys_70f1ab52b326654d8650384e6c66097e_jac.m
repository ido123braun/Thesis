function [out1,j_out1,h_out1] = sys_70f1ab52b326654d8650384e6c66097e_jac(in1val1,in2val1,in3val1)
%SYS_70F1AB52B326654D8650384E6C66097E_JAC
%    [OUT1,J_OUT1,H_OUT1] = SYS_70F1AB52B326654D8650384E6C66097E_JAC(IN1VAL1,IN2VAL1,IN3VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    30-Dec-2022 22:24:45

%Generated using CreateGradient
%Input dimensions : {[1 1], [1 1], [1 1]}
%Derivative inputs: [true true true]
%DerivativeOrder  : 1
%Output dimensions: {[3 1]}
%Constant outputs : false
out1 = [in1val1;in2val1;in3val1];
if nargout > 1
    j_out1 = reshape([1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0],[3,3]);
end
if nargout > 2
    h_out1 = zeros(0,0);
end

end  % sys_70f1ab52b326654d8650384e6c66097e_jac
