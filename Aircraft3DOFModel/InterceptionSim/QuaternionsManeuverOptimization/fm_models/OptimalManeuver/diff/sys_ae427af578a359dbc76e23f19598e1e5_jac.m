function [out1,out2,out3,out4,j_out1,j_out2,j_out3,j_out4,h_out1,h_out2,h_out3,h_out4] = sys_ae427af578a359dbc76e23f19598e1e5_jac(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1,in7val1)
%SYS_AE427AF578A359DBC76E23F19598E1E5_JAC
%    [OUT1,OUT2,OUT3,OUT4,J_OUT1,J_OUT2,J_OUT3,J_OUT4,H_OUT1,H_OUT2,H_OUT3,H_OUT4] = SYS_AE427AF578A359DBC76E23F19598E1E5_JAC(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1,IN7VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    21-Jan-2023 15:02:43

%Generated using CreateGradient
%Input dimensions : {[1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1]}
%Derivative inputs: [true true true true true true true]
%DerivativeOrder  : 1
%Output dimensions: {[1 1], [1 1], [1 1], [1 1]}
%Constant outputs : [false false false false]
t2 = in2val1.^2;
t3 = in3val1.^2;
t4 = in4val1.^2;
t5 = in5val1.^2;
t6 = in5val1.^3;
t8 = in5val1.^5;
t10 = in5val1.^7;
t11 = in7val1.^2;
t12 = in7val1.^3;
t14 = in7val1.^5;
t16 = in7val1.^7;
t24 = in1val1.*2.255769564462953e-5;
t7 = t5.^2;
t9 = t5.^3;
t13 = t11.^2;
t15 = t11.^3;
t18 = t6.^3;
t19 = t5.^5;
t21 = t12.^3;
t22 = t11.^5;
t23 = t2+t3+t4;
t36 = t24+1.0;
t17 = t7.^2;
t20 = t13.^2;
t25 = 1.0./t23;
t37 = 1.0./t36.^2.981050656660413e+1;
t38 = 1.0./t36.^3.081050656660413e+1;
t39 = 1.0./t36.^4.258643795229161;
t40 = 1.0./t36.^5.258643795229161;
t42 = 1.0./t36.^9.517287590458322;
t44 = 1.0./t36.^1.377593138568748e+1;
t46 = 1.0./t36.^1.803457518091664e+1;
t48 = 1.0./t36.^2.229321897614581e+1;
t50 = 1.0./t36.^2.655186277137497e+1;
t52 = 1.0./t36.^3.506915036183329e+1;
t54 = 1.0./t36.^3.932779415706245e+1;
t56 = 1.0./t36.^4.358643795229161e+1;
t26 = t25.^2;
t27 = t25.^3;
t29 = t25.^5;
t31 = t25.^7;
t35 = t25.^11;
t41 = t39.^2;
t43 = t39.^3;
t47 = t39.^5;
t28 = t26.^2;
t30 = t26.^3;
t33 = t27.^3;
t34 = t26.^5;
t45 = t41.^2;
t49 = t41.^3;
t53 = t43.^3;
t55 = t41.^5;
t32 = t28.^2;
t51 = t45.^2;
et1 = t10.*t16.*t31.*t37;
et2 = 6.856930686197357e-10;
et3 = t9.*t15.*t30.*t49;
et4 = -3.546223667298941e-8;
et5 = t17.*t20.*t32.*t51;
et6 = 9.338846619406777e-11;
et7 = t18.*t21.*t33.*t53;
et8 = -4.71752534419257e-12;
et9 = t19.*t22.*t34.*t55;
et10 = 6.360794113337825e-14;
et11 = in5val1.*in7val1.*t25.*t39.*1.434561957295188e-2+t5.*t11.*t26.*t41.*9.260716983790664e-5;
et12 = t6.*t12.*t27.*t43.*(-1.534714079294931e-5);
et13 = t7.*t13.*t28.*t45.*3.753739359321281e-6+et1.*et2;
et14 = t8.*t14.*t29.*t47.*1.017052644935768e-7+et3.*et4+et5.*et6+et7.*et8+et9.*et10;
et15 = -2.738545696120779e-2;
out1 = et11+et12+et13+et14+et15;
if nargout > 1
    out2 = in5val1.*in7val1.*t25.*t39.*5.856831421972189e-2;
end
if nargout > 2
    et16 = t10.*t16.*t31.*t37;
    et17 = 1.804578230725291e-9;
    et18 = t9.*t15.*t30.*t49;
    et19 = -9.541429868352356e-8;
    et20 = t17.*t20.*t32.*t51;
    et21 = 2.507306436753565e-10;
    et22 = t18.*t21.*t33.*t53;
    et23 = -1.26219015064533e-11;
    et24 = t19.*t22.*t34.*t55;
    et25 = 1.701473945851493e-13;
    et26 = in5val1.*in7val1.*t25.*t39.*(-2.826314666789709e-3)+t5.*t11.*t26.*t41.*2.513871499866634e-4;
    et27 = t6.*t12.*t27.*t43.*(-3.678341011013416e-5);
    et28 = t7.*t13.*t28.*t45.*1.05807779465885e-5+et16.*et17;
    et29 = t8.*t14.*t29.*t47.*2.899970642246236e-7+et18.*et19+et20.*et21+et22.*et23+et24.*et25;
    et30 = 2.761247652255861e-2;
    out3 = et26+et27+et28+et29+et30;
end
if nargout > 3
    out4 = 1.225225682761773./t39;
end
if nargout > 4
    et31 = t10.*t16.*t31.*t38;
    et32 = -4.61098647270391e-13;
    et33 = t9.*t15.*t30.*t50;
    et34 = 2.04401191487857e-11;
    et35 = t17.*t20.*t32.*t52;
    et36 = -7.177104643197439e-14;
    et37 = t18.*t21.*t33.*t54;
    et38 = 4.078709741798012e-15;
    et39 = t19.*t22.*t34.*t56;
    et40 = -6.110508988121671e-17;
    et41 = in5val1.*in7val1.*t25.*t40.*(-1.378114678431206e-6)-t5.*t11.*t26.*t42.*1.77926508412672e-8;
    et42 = t6.*t12.*t27.*t44.*4.422978015935582e-9;
    et43 = t7.*t13.*t28.*t46.*(-1.4424147479386e-9)+et31.*et32;
    et44 = t8.*t14.*t29.*t48.*(-4.885167808875804e-11)+et33.*et34+et35.*et36;
    et45 = et37.*et38+et39.*et40;
    et46 = in2val1.*t10.*t16.*t32.*t37;
    et47 = -9.599702960676299e-9;
    et48 = in2val1.*t9.*t15.*t31.*t49;
    et49 = 4.255468400758729e-7;
    et50 = in2val1.*t17.*t20.*t33.*t51;
    et51 = -1.494215459105084e-9;
    et52 = in2val1.*t18.*t21.*t34.*t53;
    et53 = 8.491545619546626e-11;
    et54 = in2val1.*t19.*t22.*t35.*t55;
    et55 = -1.272158822667565e-12;
    et56 = in2val1.*in5val1.*in7val1.*t26.*t39.*(-2.869123914590376e-2)-in2val1.*t5.*t11.*t27.*t41.*3.704286793516265e-4;
    et57 = in2val1.*t6.*t12.*t28.*t43.*9.208284475769588e-5;
    et58 = in2val1.*t7.*t13.*t29.*t45.*(-3.002991487457025e-5)+et46.*et47;
    et59 = in2val1.*t8.*t14.*t30.*t47.*(-1.017052644935768e-6)+et48.*et49+et50.*et51+et52.*et53+et54.*et55;
    et60 = in3val1.*t10.*t16.*t32.*t37;
    et61 = -9.599702960676299e-9;
    et62 = in3val1.*t9.*t15.*t31.*t49;
    et63 = 4.255468400758729e-7;
    et64 = in3val1.*t17.*t20.*t33.*t51;
    et65 = -1.494215459105084e-9;
    et66 = in3val1.*t18.*t21.*t34.*t53;
    et67 = 8.491545619546626e-11;
    et68 = in3val1.*t19.*t22.*t35.*t55;
    et69 = -1.272158822667565e-12;
    et70 = in3val1.*in5val1.*in7val1.*t26.*t39.*(-2.869123914590376e-2)-in3val1.*t5.*t11.*t27.*t41.*3.704286793516265e-4;
    et71 = in3val1.*t6.*t12.*t28.*t43.*9.208284475769588e-5;
    et72 = in3val1.*t7.*t13.*t29.*t45.*(-3.002991487457025e-5)+et60.*et61;
    et73 = in3val1.*t8.*t14.*t30.*t47.*(-1.017052644935768e-6)+et62.*et63+et64.*et65+et66.*et67+et68.*et69;
    et74 = in4val1.*t10.*t16.*t32.*t37;
    et75 = -9.599702960676299e-9;
    et76 = in4val1.*t9.*t15.*t31.*t49;
    et77 = 4.255468400758729e-7;
    et78 = in4val1.*t17.*t20.*t33.*t51;
    et79 = -1.494215459105084e-9;
    et80 = in4val1.*t18.*t21.*t34.*t53;
    et81 = 8.491545619546626e-11;
    et82 = in4val1.*t19.*t22.*t35.*t55;
    et83 = -1.272158822667565e-12;
    et84 = in4val1.*in5val1.*in7val1.*t26.*t39.*(-2.869123914590376e-2)-in4val1.*t5.*t11.*t27.*t41.*3.704286793516265e-4;
    et85 = in4val1.*t6.*t12.*t28.*t43.*9.208284475769588e-5;
    et86 = in4val1.*t7.*t13.*t29.*t45.*(-3.002991487457025e-5)+et74.*et75;
    et87 = in4val1.*t8.*t14.*t30.*t47.*(-1.017052644935768e-6)+et76.*et77+et78.*et79+et80.*et81+et82.*et83;
    et88 = t9.*t16.*t31.*t37;
    et89 = 4.79985148033815e-9;
    et90 = t8.*t15.*t30.*t49;
    et91 = -2.127734200379365e-7;
    et92 = t10.*t20.*t32.*t51;
    et93 = 7.471077295525422e-10;
    et94 = t17.*t21.*t33.*t53;
    et95 = -4.245772809773313e-11;
    et96 = t18.*t22.*t34.*t55;
    et97 = 6.360794113337825e-13;
    et98 = in7val1.*t25.*t39.*1.434561957295188e-2+in5val1.*t11.*t26.*t41.*1.852143396758133e-4;
    et99 = t5.*t12.*t27.*t43.*(-4.604142237884794e-5);
    et100 = t6.*t13.*t28.*t45.*1.501495743728512e-5+et88.*et89;
    et101 = t7.*t14.*t29.*t47.*5.085263224678842e-7+et90.*et91+et92.*et93+et94.*et95+et96.*et97;
    et102 = t10.*t15.*t31.*t37;
    et103 = 4.79985148033815e-9;
    et104 = t9.*t14.*t30.*t49;
    et105 = -2.127734200379365e-7;
    et106 = t16.*t17.*t32.*t51;
    et107 = 7.471077295525422e-10;
    et108 = t18.*t20.*t33.*t53;
    et109 = -4.245772809773313e-11;
    et110 = t19.*t21.*t34.*t55;
    et111 = 6.360794113337825e-13;
    et112 = in5val1.*t25.*t39.*1.434561957295188e-2+in7val1.*t5.*t26.*t41.*1.852143396758133e-4;
    et113 = t6.*t11.*t27.*t43.*(-4.604142237884794e-5);
    et114 = t7.*t12.*t28.*t45.*1.501495743728512e-5+et102.*et103;
    et115 = t8.*t13.*t29.*t47.*5.085263224678842e-7+et104.*et105+et106.*et107+et108.*et109+et110.*et111;
    j_out1 = [et41+et42+et43+et44+et45,et56+et57+et58+et59,et70+et71+et72+et73,et84+et85+et86+et87,et98+et99+et100+et101,0.0,et112+et113+et114+et115];
end
if nargout > 5
    mt1 = [in5val1.*in7val1.*t25.*t40.*(-5.626376268150367e-6),in2val1.*in5val1.*in7val1.*t26.*t39.*(-1.171366284394438e-1),in3val1.*in5val1.*in7val1.*t26.*t39.*(-1.171366284394438e-1),in4val1.*in5val1.*in7val1.*t26.*t39.*(-1.171366284394438e-1)];
    mt2 = [in7val1.*t25.*t39.*5.856831421972189e-2,0.0,in5val1.*t25.*t39.*5.856831421972189e-2];
    j_out2 = reshape([mt1,mt2],1,7);
end
if nargout > 6
    et116 = t10.*t16.*t31.*t38;
    et117 = -1.213500061705419e-12;
    et118 = t9.*t15.*t30.*t50;
    et119 = 5.499595672921899e-11;
    et120 = t17.*t20.*t32.*t52;
    et121 = -1.926918965747606e-13;
    et122 = t18.*t21.*t33.*t54;
    et123 = 1.091272836462044e-14;
    et124 = t19.*t22.*t34.*t56;
    et125 = -1.634524188949835e-16;
    et126 = in5val1.*in7val1.*t25.*t40.*2.715104571371841e-7-t5.*t11.*t26.*t42.*4.829910895153081e-8;
    et127 = t6.*t12.*t27.*t44.*1.060081590852474e-8;
    et128 = t7.*t13.*t28.*t46.*(-4.065777800188629e-9)+et116.*et117;
    et129 = t8.*t14.*t29.*t48.*(-1.392931162288153e-10)+et118.*et119+et120.*et121;
    et130 = et122.*et123+et124.*et125;
    et131 = in2val1.*t10.*t16.*t32.*t37;
    et132 = -2.526409523015408e-8;
    et133 = in2val1.*t9.*t15.*t31.*t49;
    et134 = 1.144971584202283e-6;
    et135 = in2val1.*t17.*t20.*t33.*t51;
    et136 = -4.011690298805703e-9;
    et137 = in2val1.*t18.*t21.*t34.*t53;
    et138 = 2.271942271161594e-10;
    et139 = in2val1.*t19.*t22.*t35.*t55;
    et140 = -3.402947891702986e-12;
    et141 = in2val1.*in5val1.*in7val1.*t26.*t39.*5.652629333579419e-3-in2val1.*t5.*t11.*t27.*t41.*1.005548599946653e-3;
    et142 = in2val1.*t6.*t12.*t28.*t43.*2.20700460660805e-4;
    et143 = in2val1.*t7.*t13.*t29.*t45.*(-8.464622357270802e-5)+et131.*et132;
    et144 = in2val1.*t8.*t14.*t30.*t47.*(-2.899970642246236e-6)+et133.*et134+et135.*et136+et137.*et138;
    et145 = et139.*et140;
    et146 = in3val1.*t10.*t16.*t32.*t37;
    et147 = -2.526409523015408e-8;
    et148 = in3val1.*t9.*t15.*t31.*t49;
    et149 = 1.144971584202283e-6;
    et150 = in3val1.*t17.*t20.*t33.*t51;
    et151 = -4.011690298805703e-9;
    et152 = in3val1.*t18.*t21.*t34.*t53;
    et153 = 2.271942271161594e-10;
    et154 = in3val1.*t19.*t22.*t35.*t55;
    et155 = -3.402947891702986e-12;
    et156 = in3val1.*in5val1.*in7val1.*t26.*t39.*5.652629333579419e-3-in3val1.*t5.*t11.*t27.*t41.*1.005548599946653e-3;
    et157 = in3val1.*t6.*t12.*t28.*t43.*2.20700460660805e-4;
    et158 = in3val1.*t7.*t13.*t29.*t45.*(-8.464622357270802e-5)+et146.*et147;
    et159 = in3val1.*t8.*t14.*t30.*t47.*(-2.899970642246236e-6)+et148.*et149+et150.*et151+et152.*et153;
    et160 = et154.*et155;
    et161 = in4val1.*t10.*t16.*t32.*t37;
    et162 = -2.526409523015408e-8;
    et163 = in4val1.*t9.*t15.*t31.*t49;
    et164 = 1.144971584202283e-6;
    et165 = in4val1.*t17.*t20.*t33.*t51;
    et166 = -4.011690298805703e-9;
    et167 = in4val1.*t18.*t21.*t34.*t53;
    et168 = 2.271942271161594e-10;
    et169 = in4val1.*t19.*t22.*t35.*t55;
    et170 = -3.402947891702986e-12;
    et171 = in4val1.*in5val1.*in7val1.*t26.*t39.*5.652629333579419e-3-in4val1.*t5.*t11.*t27.*t41.*1.005548599946653e-3;
    et172 = in4val1.*t6.*t12.*t28.*t43.*2.20700460660805e-4;
    et173 = in4val1.*t7.*t13.*t29.*t45.*(-8.464622357270802e-5)+et161.*et162;
    et174 = in4val1.*t8.*t14.*t30.*t47.*(-2.899970642246236e-6)+et163.*et164+et165.*et166+et167.*et168;
    et175 = et169.*et170;
    et176 = t9.*t16.*t31.*t37;
    et177 = 1.263204761507704e-8;
    et178 = t8.*t15.*t30.*t49;
    et179 = -5.724857921011414e-7;
    et180 = t10.*t20.*t32.*t51;
    et181 = 2.005845149402852e-9;
    et182 = t17.*t21.*t33.*t53;
    et183 = -1.135971135580797e-10;
    et184 = t18.*t22.*t34.*t55;
    et185 = 1.701473945851493e-12;
    et186 = in7val1.*t25.*t39.*(-2.826314666789709e-3)+in5val1.*t11.*t26.*t41.*5.027742999733267e-4;
    et187 = t5.*t12.*t27.*t43.*(-1.103502303304025e-4);
    et188 = t6.*t13.*t28.*t45.*4.232311178635401e-5+et176.*et177;
    et189 = t7.*t14.*t29.*t47.*1.449985321123118e-6+et178.*et179+et180.*et181+et182.*et183+et184.*et185;
    et190 = t10.*t15.*t31.*t37;
    et191 = 1.263204761507704e-8;
    et192 = t9.*t14.*t30.*t49;
    et193 = -5.724857921011414e-7;
    et194 = t16.*t17.*t32.*t51;
    et195 = 2.005845149402852e-9;
    et196 = t18.*t20.*t33.*t53;
    et197 = -1.135971135580797e-10;
    et198 = t19.*t21.*t34.*t55;
    et199 = 1.701473945851493e-12;
    et200 = in5val1.*t25.*t39.*(-2.826314666789709e-3)+in7val1.*t5.*t26.*t41.*5.027742999733267e-4;
    et201 = t6.*t11.*t27.*t43.*(-1.103502303304025e-4);
    et202 = t7.*t12.*t28.*t45.*4.232311178635401e-5+et190.*et191;
    et203 = t8.*t13.*t29.*t47.*1.449985321123118e-6+et192.*et193+et194.*et195+et196.*et197+et198.*et199;
    j_out3 = [et126+et127+et128+et129+et130,et141+et142+et143+et144+et145,et156+et157+et158+et159+et160,et171+et172+et173+et174+et175,et186+et187+et188+et189,0.0,et200+et201+et202+et203];
end
if nargout > 7
    j_out4 = [t36.^3.258643795229161.*1.17701538732318e-4,0.0,0.0,0.0,0.0,0.0,0.0];
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

end  % sys_ae427af578a359dbc76e23f19598e1e5_jac
