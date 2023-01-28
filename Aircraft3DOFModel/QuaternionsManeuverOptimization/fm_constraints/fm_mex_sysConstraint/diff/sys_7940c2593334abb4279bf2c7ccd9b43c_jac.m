function [out1,j_out1,h_out1] = sys_7940c2593334abb4279bf2c7ccd9b43c_jac(in1,in2,in3)
%SYS_7940C2593334ABB4279BF2C7CCD9B43C_JAC
%    [OUT1,J_OUT1,H_OUT1] = SYS_7940C2593334ABB4279BF2C7CCD9B43C_JAC(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    26-Jan-2023 17:22:08

%Generated using CreateGradient
%Input dimensions : {[10 1], [12 1], [3 1]}
%Derivative inputs: [true true true]
%DerivativeOrder  : 1
%Output dimensions: {[1 1]}
%Constant outputs : false
in2val5 = in2(5,:);
in2val6 = in2(6,:);
in2val7 = in2(7,:);
in2val8 = in2(8,:);
out1 = in2val5.^2+in2val6.^2+in2val7.^2+in2val8.^2;
if nargout > 1
    j_out1 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,in2val5.*2.0,in2val6.*2.0,in2val7.*2.0,in2val8.*2.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 2
    h_out1 = zeros(0,0);
end

end  % sys_7940c2593334abb4279bf2c7ccd9b43c_jac