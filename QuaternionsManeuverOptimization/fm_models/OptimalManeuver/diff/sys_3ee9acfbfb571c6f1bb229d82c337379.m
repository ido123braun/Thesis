function [out1,out2,out3,j_out1,j_out2,j_out3,h_out1,h_out2,h_out3] = sys_3ee9acfbfb571c6f1bb229d82c337379(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1)
%SYS_3EE9ACFBFB571C6F1BB229D82C337379
%    [OUT1,OUT2,OUT3,J_OUT1,J_OUT2,J_OUT3,H_OUT1,H_OUT2,H_OUT3] = SYS_3EE9ACFBFB571C6F1BB229D82C337379(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    30-Mar-2022 20:14:23

out1 = in1val1.*-1.0e+1+in4val1.*1.0e+1;
if nargout > 1
    out2 = in2val1.*-1.0e+1+in5val1.*1.0e+1;
end
if nargout > 2
    out3 = in3val1.*-1.0e+1+in6val1.*1.0e+1;
end
if nargout > 3
    j_out1 = [-1.0e+1,0.0,0.0,1.0e+1,0.0,0.0];
end
if nargout > 4
    j_out2 = [0.0,-1.0e+1,0.0,0.0,1.0e+1,0.0];
end
if nargout > 5
    j_out3 = [0.0,0.0,-1.0e+1,0.0,0.0,1.0e+1];
end
if nargout > 6
    h_out1 = zeros(0,0);
end
if nargout > 7
    h_out2 = zeros(0,0);
end
if nargout > 8
    h_out3 = zeros(0,0);
end

end
