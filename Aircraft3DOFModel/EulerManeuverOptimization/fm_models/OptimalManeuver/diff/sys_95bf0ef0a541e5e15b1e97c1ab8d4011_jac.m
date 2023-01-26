function [out1,out2,out3,out4,out5,out6,out7,j_out1,j_out2,j_out3,j_out4,j_out5,j_out6,j_out7,h_out1,h_out2,h_out3,h_out4,h_out5,h_out6,h_out7] = sys_95bf0ef0a541e5e15b1e97c1ab8d4011_jac(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1,in7val1,in8val1,in9val1,in10val1,in11val1)
%SYS_95BF0EF0A541E5E15B1E97C1AB8D4011_JAC
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,J_OUT1,J_OUT2,J_OUT3,J_OUT4,J_OUT5,J_OUT6,J_OUT7,H_OUT1,H_OUT2,H_OUT3,H_OUT4,H_OUT5,H_OUT6,H_OUT7] = SYS_95BF0EF0A541E5E15B1E97C1AB8D4011_JAC(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1,IN7VAL1,IN8VAL1,IN9VAL1,IN10VAL1,IN11VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    25-Jan-2023 22:41:49

%Generated using CreateGradient
%Input dimensions : {[1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1]}
%Derivative inputs: [true true true true true true true true true true true]
%DerivativeOrder  : 1
%Output dimensions: {[1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1]}
%Constant outputs : [false false false false false false false]
t2 = cos(in3val1);
t3 = cos(in4val1);
t4 = cos(in10val1);
t5 = sin(in3val1);
t6 = sin(in4val1);
t7 = sin(in10val1);
t8 = in2val1.^2;
t11 = 1.0./in2val1;
t13 = 1.0./in5val1;
t17 = in1val1.*2.255769564462953e-5;
t9 = in7val1.*t4;
t10 = in7val1.*t7;
t12 = 1.0./t8;
t14 = t13.^2;
t15 = 1.0./t3;
t18 = t17+1.0;
t16 = t15.^2;
t19 = t18.^3.258643795229161;
t20 = t18.^4.258643795229161;
t21 = in8val1.*t8.*t20.*1.707407859219665e+1;
t22 = in9val1.*t8.*t20.*1.707407859219665e+1;
t23 = -t21;
t24 = t10+t22;
t25 = t9+t23;
out1 = t6.*(-9.81e+2./1.0e+2)+t13.*t25.*(9.81e+2./1.0e+2);
if nargout > 1
    t26 = t2.*t13.*t24;
    t29 = t5.*t11.*t13.*t24.*(9.81e+2./1.0e+2);
    out2 = in6val1+t6.*t15.*t29;
end
if nargout > 2
    t27 = -t26;
    t28 = t3+t27;
    out3 = t11.*t28.*(-9.81e+2./1.0e+2);
end
if nargout > 3
    out4 = t15.*t29;
end
if nargout > 4
    out5 = -in7val1.*in11val1;
end
if nargout > 5
    out6 = t13.*t24;
end
if nargout > 6
    out7 = -in5val1;
end
if nargout > 7
    j_out1 = [in8val1.*t8.*t13.*t19.*(-1.60906034646792e-2),in2val1.*in8val1.*t13.*t20.*(-3.349934219788982e+2),0.0,t3.*(-9.81e+2./1.0e+2),t14.*t25.*(-9.81e+2./1.0e+2),0.0,t4.*t13.*(9.81e+2./1.0e+2),t8.*t13.*t20.*(-1.674967109894491e+2),0.0,t10.*t13.*(-9.81e+2./1.0e+2),0.0];
end
if nargout > 8
    mt1 = [in2val1.*in9val1.*t5.*t6.*t13.*t15.*t19.*1.60906034646792e-2,in9val1.*t5.*t6.*t13.*t15.*t20.*3.349934219788982e+2-t5.*t6.*t12.*t13.*t15.*t24.*(9.81e+2./1.0e+2),t6.*t11.*t15.*t26.*(9.81e+2./1.0e+2),t29+t6.^2.*t16.*t29,t5.*t6.*t11.*t14.*t15.*t24.*(-9.81e+2./1.0e+2),1.0,t5.*t6.*t7.*t11.*t13.*t15.*(9.81e+2./1.0e+2),0.0];
    mt2 = [in2val1.*t5.*t6.*t13.*t15.*t20.*1.674967109894491e+2,t5.*t6.*t9.*t11.*t13.*t15.*(9.81e+2./1.0e+2),0.0];
    j_out2 = reshape([mt1,mt2],1,11);
end
if nargout > 9
    mt3 = [in2val1.*in9val1.*t2.*t13.*t19.*1.60906034646792e-2,t12.*t28.*(9.81e+2./1.0e+2)+in9val1.*t2.*t13.*t20.*3.349934219788982e+2,-t29,t6.*t11.*(9.81e+2./1.0e+2),t2.*t11.*t14.*t24.*(-9.81e+2./1.0e+2),0.0,t2.*t7.*t11.*t13.*(9.81e+2./1.0e+2),0.0];
    mt4 = [in2val1.*t2.*t13.*t20.*1.674967109894491e+2,t2.*t9.*t11.*t13.*(9.81e+2./1.0e+2),0.0];
    j_out3 = reshape([mt3,mt4],1,11);
end
if nargout > 10
    mt5 = [in2val1.*in9val1.*t5.*t13.*t15.*t19.*1.60906034646792e-2,in9val1.*t5.*t13.*t15.*t20.*3.349934219788982e+2-t5.*t12.*t13.*t15.*t24.*(9.81e+2./1.0e+2),t11.*t15.*t26.*(9.81e+2./1.0e+2),t6.*t16.*t29,t5.*t11.*t14.*t15.*t24.*(-9.81e+2./1.0e+2),0.0,t5.*t7.*t11.*t13.*t15.*(9.81e+2./1.0e+2),0.0];
    mt6 = [in2val1.*t5.*t13.*t15.*t20.*1.674967109894491e+2,t5.*t9.*t11.*t13.*t15.*(9.81e+2./1.0e+2),0.0];
    j_out4 = reshape([mt5,mt6],1,11);
end
if nargout > 11
    j_out5 = [0.0,0.0,0.0,0.0,0.0,0.0,-in11val1,0.0,0.0,0.0,-in7val1];
end
if nargout > 12
    j_out6 = [in9val1.*t8.*t13.*t19.*1.640224614136514e-3,in2val1.*in9val1.*t13.*t20.*3.414815718439329e+1,0.0,0.0,-t14.*t24,0.0,t7.*t13,0.0,t8.*t13.*t20.*1.707407859219665e+1,t9.*t13,0.0];
end
if nargout > 13
    j_out7 = [0.0,0.0,0.0,0.0,-1.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 14
    h_out1 = zeros(0,0);
end
if nargout > 15
    h_out2 = zeros(0,0);
end
if nargout > 16
    h_out3 = zeros(0,0);
end
if nargout > 17
    h_out4 = zeros(0,0);
end
if nargout > 18
    h_out5 = zeros(0,0);
end
if nargout > 19
    h_out6 = zeros(0,0);
end
if nargout > 20
    h_out7 = zeros(0,0);
end

end  % sys_95bf0ef0a541e5e15b1e97c1ab8d4011_jac