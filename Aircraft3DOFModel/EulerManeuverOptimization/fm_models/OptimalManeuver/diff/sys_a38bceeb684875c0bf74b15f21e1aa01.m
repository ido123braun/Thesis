function [out1,out2,out3,out4,j_out1,j_out2,j_out3,j_out4,h_out1,h_out2,h_out3,h_out4] = sys_a38bceeb684875c0bf74b15f21e1aa01(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1,in7val1)
%SYS_A38BCEEB684875C0BF74B15F21E1AA01
%    [OUT1,OUT2,OUT3,OUT4,J_OUT1,J_OUT2,J_OUT3,J_OUT4,H_OUT1,H_OUT2,H_OUT3,H_OUT4] = SYS_A38BCEEB684875C0BF74B15F21E1AA01(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1,IN7VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    29-Mar-2022 00:01:26

out1 = 0.0;
if nargout > 1
    t2 = in2val1.^2;
    t3 = in3val1.^2;
    t4 = in4val1.^2;
    t5 = in5val1.^2;
    t6 = in7val1.^2;
    t8 = in1val1.*2.255769564462953e-5;
    t7 = t2+t3+t4;
    t12 = t8+1.0;
    t9 = 1.0./t7;
    t13 = 1.0./t12.^4.258643795229161;
    out2 = in5val1.*in7val1.*t9.*t13.*5.856831421972189e-2;
end
if nargout > 2
    t10 = t9.^2;
    t11 = t9.^3;
    t14 = t13.^2;
    out3 = t5.*t6.*t10.*t14.*5.145371145810117e-4+1.0./5.0e+1;
end
if nargout > 3
    out4 = 1.225225682761773./t13;
end
if nargout > 4
    j_out1 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 5
    mt1 = [in5val1.*in7val1.*t9.*1.0./t12.^5.258643795229161.*(-5.626376268150367e-6),in2val1.*in5val1.*in7val1.*t10.*t13.*(-1.171366284394438e-1),in3val1.*in5val1.*in7val1.*t10.*t13.*(-1.171366284394438e-1),in4val1.*in5val1.*in7val1.*t10.*t13.*(-1.171366284394438e-1)];
    mt2 = [in7val1.*t9.*t13.*5.856831421972189e-2,0.0,in5val1.*t9.*t13.*5.856831421972189e-2];
    j_out2 = reshape([mt1,mt2],1,7);
end
if nargout > 6
    mt3 = [t5.*t6.*t10.*1.0./t12.^9.517287590458322.*(-9.885821195742508e-8),in2val1.*t5.*t6.*t11.*t14.*(-2.058148458324047e-3)];
    mt4 = [in3val1.*t5.*t6.*t11.*t14.*(-2.058148458324047e-3),in4val1.*t5.*t6.*t11.*t14.*(-2.058148458324047e-3)];
    mt5 = [in5val1.*t6.*t10.*t14.*1.029074229162023e-3,0.0,in7val1.*t5.*t10.*t14.*1.029074229162023e-3];
    j_out3 = reshape([mt3,mt4,mt5],1,7);
end
if nargout > 7
    j_out4 = [t12.^3.258643795229161.*1.17701538732318e-4,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 8
    h_out1 = zeros(0,0);
end
if nargout > 9
    h_out2 = zeros(0,0);
end
if nargout > 10
    h_out3 = zeros(0,0);
end
if nargout > 11
    h_out4 = zeros(0,0);
end

end