function [out1,out2,j_out1,j_out2,h_out1,h_out2] = sys_06c89649989e5a55829dc51889c0d5ea(in1val1,in2val1,in3val1,in4val1,in5val1)
%SYS_06C89649989E5A55829DC51889C0D5EA
%    [OUT1,OUT2,J_OUT1,J_OUT2,H_OUT1,H_OUT2] = SYS_06C89649989E5A55829DC51889C0D5EA(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    30-Mar-2022 23:22:58

t2 = in2val1.^2;
t3 = in3val1.^2;
t4 = in4val1.^2;
t6 = in1val1.*2.255769564462953e-5;
t7 = in1val1.*2.6117;
t5 = t2+t3+t4;
t9 = t6+1.0;
t12 = t7+1.1577867e+5;
t8 = sqrt(t5);
t11 = t9.^4.258643795229161;
t13 = 1.0./sqrt(t12);
t10 = 1.0./t8;
t14 = t8.*t13.*(7.0./2.0e+1);
t15 = t14+1.0;
out1 = in5val1.*t11.*t15.*8.898038991119867e+4;
if nargout > 1
    out2 = 2.138e-4;
end
if nargout > 2
    j_out1 = [in5val1.*t9.^3.258643795229161.*t15.*8.54791811574036-in5val1.*t8.*t11.*t13.^3.*4.066826475793857e+4,in2val1.*in5val1.*t10.*t11.*t13.*3.114313646891953e+4,in3val1.*in5val1.*t10.*t11.*t13.*3.114313646891953e+4,in4val1.*in5val1.*t10.*t11.*t13.*3.114313646891953e+4,t11.*t15.*8.898038991119867e+4];
end
if nargout > 3
    j_out2 = [0.0,0.0,0.0,0.0,0.0];
end
if nargout > 4
    h_out1 = zeros(0,0);
end
if nargout > 5
    h_out2 = zeros(0,0);
end

end
