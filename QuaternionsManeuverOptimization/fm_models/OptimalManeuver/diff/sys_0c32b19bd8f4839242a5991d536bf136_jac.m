function [out1,out2,out3,out4,out5,out6,out7,j_out1,j_out2,j_out3,j_out4,j_out5,j_out6,j_out7,h_out1,h_out2,h_out3,h_out4,h_out5,h_out6,h_out7] = sys_0c32b19bd8f4839242a5991d536bf136_jac(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1,in7val1,in8val1,in9val1,in10val1,in11val1,in12val1,in13val1,in14val1,in15val1)
%SYS_0C32B19BD8F4839242A5991D536BF136_JAC
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,J_OUT1,J_OUT2,J_OUT3,J_OUT4,J_OUT5,J_OUT6,J_OUT7,H_OUT1,H_OUT2,H_OUT3,H_OUT4,H_OUT5,H_OUT6,H_OUT7] = SYS_0C32B19BD8F4839242A5991D536BF136_JAC(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1,IN7VAL1,IN8VAL1,IN9VAL1,IN10VAL1,IN11VAL1,IN12VAL1,IN13VAL1,IN14VAL1,IN15VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    21-Jan-2023 15:34:35

%Generated using CreateGradient
%Input dimensions : {[1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1], [1 1]}
%Derivative inputs: [true true true true true true true true true true true true true true true]
%DerivativeOrder  : 1
%Output dimensions: {[3 1], [1 1], [4 1], [1 1], [1 1], [1 1], [3 1]}
%Constant outputs : [false false false false false false false]
t2 = abs(in2val1);
t3 = abs(in3val1);
t4 = abs(in4val1);
t5 = cos(in14val1);
t6 = sign(in2val1);
t7 = sign(in3val1);
t8 = sign(in4val1);
t9 = sin(in14val1);
t10 = in5val1.*2.0;
t11 = in6val1.*2.0;
t12 = in7val1.*2.0;
t13 = in8val1.*2.0;
t14 = in2val1.^2;
t15 = in3val1.^2;
t16 = in4val1.^2;
t17 = in5val1.^2;
t18 = in6val1.^2;
t19 = in7val1.^2;
t20 = in8val1.^2;
t49 = 1.0./in13val1;
t51 = in3val1.*in6val1.*-2.0;
t52 = in2val1.*in8val1.*-2.0;
t53 = in4val1.*in7val1.*-2.0;
t54 = in6val1.*in7val1.*-2.0;
t55 = in6val1.*in8val1.*-2.0;
t56 = in7val1.*in8val1.*-2.0;
t57 = in5val1.*2.0i;
t58 = in6val1.*2.0i;
t59 = in7val1.*2.0i;
t60 = in8val1.*2.0i;
t61 = in9val1./2.0;
t76 = in5val1.*in6val1.*(9.81e+2./5.0e+1);
t77 = in7val1.*in8val1.*(9.81e+2./5.0e+1);
t92 = in1val1.*2.255769564462953e-5;
t21 = t2.^2;
t22 = t3.^2;
t23 = t4.^2;
t24 = in2val1.*t10;
t25 = in2val1.*t11;
t26 = in3val1.*t10;
t27 = in2val1.*t12;
t28 = in3val1.*t11;
t29 = in4val1.*t10;
t30 = in2val1.*t13;
t31 = in3val1.*t12;
t32 = in4val1.*t11;
t33 = in3val1.*t13;
t34 = in4val1.*t12;
t35 = in6val1.*t10;
t36 = in4val1.*t13;
t37 = in7val1.*t10;
t38 = in8val1.*t10;
t39 = in7val1.*t11;
t40 = in8val1.*t11;
t41 = in8val1.*t12;
t42 = in13val1.*t10;
t43 = in13val1.*t11;
t44 = in13val1.*t12;
t45 = in13val1.*t13;
t46 = in10val1.*t5;
t47 = in10val1.*t9;
t48 = -t11;
t50 = t49.^2;
t62 = -t18;
t63 = -t19;
t64 = -t20;
t65 = in6val1.*t57;
t66 = in8val1.*t59;
t68 = -t60;
t69 = -t61;
t70 = t14+t15;
t74 = t10+t58;
t75 = t13+t59;
t95 = t92+1.0;
t116 = t76+t77;
t67 = -t46;
t71 = t35+t41;
t72 = t37+t40;
t73 = t38+t39;
t78 = 1.0./t70;
t79 = t35+t56;
t80 = t37+t55;
t81 = t38+t54;
t82 = t48+t57;
t83 = t12+t68;
t88 = in2val1.*(t38-t39);
t89 = in3val1.*(t35-t41);
t90 = in4val1.*(t37-t40);
t91 = in13val1.*(t37-t40);
t93 = t21+t22+t23;
t94 = t25+t31+t36;
t99 = t27+t29+t51;
t100 = t26+t32+t52;
t101 = t24+t33+t53;
t107 = t17+t20+t62+t63;
t108 = t17+t19+t62+t64;
t109 = t17+t18+t63+t64;
t121 = t10.*t116;
t122 = t11.*t116;
t123 = t12.*t116;
t124 = t13.*t116;
t127 = t95.^3.258643795229161;
t128 = t95.^4.258643795229161;
t129 = in8val1.*t116.*-2.0;
t84 = t71.^2;
t85 = in2val1.*t72;
t86 = in3val1.*t73;
t87 = in4val1.*t71;
t96 = -t88;
t97 = -t89;
t98 = -t90;
t102 = 1.0./t93;
t104 = 1.0./sqrt(t93);
t111 = in2val1.*t109;
t112 = in3val1.*t108;
t113 = in4val1.*t107;
t114 = in13val1.*t107;
t115 = t107.^2;
t118 = 1.0./t107;
t133 = t65+t66+t107;
t103 = t102.^2;
t105 = t104.^3;
t106 = in4val1.*t102.*2.0;
t110 = t16.*t102;
t119 = 1.0./t115;
t120 = -t114;
t134 = abs(t133);
t135 = sign(t133);
t136 = t84+t115;
t141 = t86+t98+t111;
t142 = t87+t96+t112;
t143 = t85+t97+t113;
t117 = -t110;
t126 = t4.*t8.*t16.*t103.*2.0;
t137 = 1.0./t134;
t139 = 1.0./t136;
t144 = abs(t141);
t145 = abs(t142);
t146 = abs(t143);
t147 = sign(t141);
t148 = sign(t142);
t149 = sign(t143);
t125 = t117+1.0;
t130 = -t126;
t138 = t137.^2;
t150 = t144.^2;
t151 = t145.^2;
t152 = t146.^2;
t156 = t73.*t144.*t147.*2.0;
t157 = t71.*t145.*t148.*2.0;
t158 = t72.*t146.*t149.*2.0;
t159 = t144.*t147.*(t37-t40).*2.0;
t160 = t145.*t148.*(t38-t39).*2.0;
t161 = t146.*t149.*(t35-t41).*2.0;
t165 = t94.*t144.*t147.*2.0;
t166 = t94.*t145.*t148.*2.0;
t167 = t94.*t146.*t149.*2.0;
t168 = t99.*t144.*t147.*2.0;
t169 = t99.*t145.*t148.*2.0;
t170 = t99.*t146.*t149.*2.0;
t171 = t100.*t144.*t147.*2.0;
t172 = t100.*t145.*t148.*2.0;
t173 = t100.*t146.*t149.*2.0;
t174 = t101.*t144.*t147.*2.0;
t175 = t101.*t145.*t148.*2.0;
t176 = t101.*t146.*t149.*2.0;
t180 = t109.*t144.*t147.*2.0;
t181 = t108.*t145.*t148.*2.0;
t182 = t107.*t146.*t149.*2.0;
t131 = sqrt(t125);
t140 = t106+t130;
t162 = -t159;
t163 = -t160;
t164 = -t161;
t177 = -t168;
t178 = -t173;
t179 = -t175;
t183 = t150+t151+t152;
t223 = t170+t172+t174;
t132 = 1.0./t131;
t184 = sqrt(t183);
t187 = in11val1.*t128.*t183.*1.707407859219665e+1;
t188 = in12val1.*t128.*t183.*1.707407859219665e+1;
t220 = t158+t163+t180;
t221 = t156+t164+t181;
t222 = t157+t162+t182;
t224 = t165+t169+t178;
t225 = t166+t176+t177;
t226 = t167+t171+t179;
t227 = in11val1.*t128.*t223.*1.707407859219665e+1;
t229 = in12val1.*t128.*t223.*1.707407859219665e+1;
t153 = t2.*t6.*t16.*t103.*t132;
t154 = t3.*t7.*t16.*t103.*t132;
t155 = (t132.*t140)./2.0;
t185 = 1.0./t184;
t189 = t47+t188;
t190 = t67+t91+t187;
t228 = in11val1.*t128.*t224.*1.707407859219665e+1;
t230 = in11val1.*t128.*t225.*1.707407859219665e+1;
t231 = in12val1.*t128.*t224.*1.707407859219665e+1;
t232 = in11val1.*t128.*t226.*1.707407859219665e+1;
t233 = in12val1.*t128.*t225.*1.707407859219665e+1;
t234 = in12val1.*t128.*t226.*1.707407859219665e+1;
t236 = -t229;
t240 = t44+t227;
t247 = in12val1.*t49.*t107.*t128.*t137.*t220.*1.707407859219665e+1;
t248 = in12val1.*t49.*t107.*t128.*t137.*t221.*1.707407859219665e+1;
t249 = in12val1.*t49.*t107.*t128.*t137.*t222.*1.707407859219665e+1;
t252 = t49.*t107.*t137.*t229;
t256 = in12val1.*t49.*t107.*t128.*t137.*t224.*(-1.707407859219665e+1);
t186 = t185.^3;
t191 = t120+t189;
out1 = [-t116.*(t38-t39)-t49.*t72.*t191.*(9.81e+2./1.0e+2)-t49.*t109.*t190.*(9.81e+2./1.0e+2);t108.*t116-t49.*t73.*t190.*(9.81e+2./1.0e+2)+t49.*t191.*(t35-t41).*(9.81e+2./1.0e+2);t71.*t116-t49.*t107.*t191.*(9.81e+2./1.0e+2)+t49.*t190.*(t37-t40).*(9.81e+2./1.0e+2)];
if nargout > 1
    out2 = angle(t133);
end
if nargout > 2
    t192 = in5val1.*t49.*t190.*(9.81e+2./5.0e+1);
    t193 = in6val1.*t49.*t190.*(9.81e+2./5.0e+1);
    t194 = in7val1.*t49.*t190.*(9.81e+2./5.0e+1);
    t195 = in8val1.*t49.*t190.*(9.81e+2./5.0e+1);
    t206 = t10.*t49.*t137.*t189;
    t207 = t11.*t49.*t137.*t189;
    t208 = t12.*t49.*t137.*t189;
    t209 = t13.*t49.*t137.*t189;
    t210 = in7val1.*t49.*t137.*t189.*-2.0;
    t211 = t49.*t107.*t137.*t189;
    t214 = t49.*t74.*t107.*t135.*t138.*t189;
    t215 = t49.*t75.*t107.*t135.*t138.*t189;
    t216 = t49.*t82.*t107.*t135.*t138.*t189;
    t217 = t49.*t83.*t107.*t135.*t138.*t189;
    t235 = -t228;
    t237 = -t232;
    t238 = -t234;
    t239 = t42+t230;
    t241 = t43+t231;
    t242 = t44+t233;
    t243 = t42+t236;
    t250 = -t247;
    t251 = -t248;
    t253 = t49.*t107.*t137.*t231;
    t254 = t49.*t107.*t137.*t233;
    t255 = t49.*t107.*t137.*t234;
    t278 = t155+t249;
    t196 = -t192;
    t197 = -t193;
    t198 = -t195;
    t199 = in5val1.*t49.*t191.*(9.81e+2./5.0e+1);
    t200 = in6val1.*t49.*t191.*(9.81e+2./5.0e+1);
    t201 = in7val1.*t49.*t191.*(9.81e+2./5.0e+1);
    t202 = in8val1.*t49.*t191.*(9.81e+2./5.0e+1);
    t212 = -t211;
    t218 = -t214;
    t219 = -t215;
    t244 = t43+t237;
    t245 = t45+t235;
    t246 = t45+t238;
    t261 = t153+t250;
    t262 = t154+t251;
    t280 = t207+t216+t256;
    t281 = t210+t217+t254;
    t203 = -t199;
    t204 = -t201;
    t205 = -t202;
    t213 = t131+t212;
    t279 = t206+t218+t252;
    t282 = t209+t219+t255;
    t257 = in5val1.*t137.*t185.*t213.*(9.81e+2./5.0e+1);
    t258 = in6val1.*t137.*t185.*t213.*(9.81e+2./5.0e+1);
    t259 = in7val1.*t137.*t185.*t213.*(9.81e+2./5.0e+1);
    t260 = in8val1.*t137.*t185.*t213.*(9.81e+2./5.0e+1);
    t263 = in5val1.*in7val1.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t264 = in5val1.*in8val1.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t265 = in6val1.*in7val1.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t266 = in6val1.*in8val1.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t267 = t17.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t268 = t18.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t269 = t19.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t270 = t20.*t137.*t185.*t213.*(9.81e+2./1.0e+2);
    t274 = t71.*t137.*t185.*t213.*(9.81e+2./2.0e+2);
    t276 = t107.*t137.*t185.*t213.*(9.81e+2./2.0e+2);
    out3 = [in6val1.*in9val1.*(-1.0./2.0)+in7val1.*t276-in8val1.*t71.*t137.*t185.*t213.*(9.81e+2./2.0e+2);in5val1.*t61+in7val1.*t274+in8val1.*t276;in8val1.*t61-in6val1.*t71.*t137.*t185.*t213.*(9.81e+2./2.0e+2)-in5val1.*t107.*t137.*t185.*t213.*(9.81e+2./2.0e+2);in7val1.*in9val1.*(-1.0./2.0)+in5val1.*t274-in6val1.*t107.*t137.*t185.*t213.*(9.81e+2./2.0e+2)];
end
if nargout > 3
    out4 = -in10val1.*in15val1;
end
if nargout > 4
    out5 = -asin(in4val1.*t104);
end
if nargout > 5
    out6 = atan2(in3val1,in2val1);
end
if nargout > 6
    out7 = [in9val1;t107.*t137.*t185.*t213.*(-9.81e+2./1.0e+2);t71.*t137.*t185.*t213.*(9.81e+2./1.0e+2)];
end
if nargout > 7
    mt1 = [in12val1.*t49.*t72.*t127.*t183.*(-1.60906034646792e-2)-in11val1.*t49.*t109.*t127.*t183.*1.60906034646792e-2];
    mt2 = [in11val1.*t49.*t73.*t127.*t183.*(-1.60906034646792e-2)+in12val1.*t49.*t127.*t183.*(t35-t41).*1.60906034646792e-2];
    mt3 = [in12val1.*t49.*t107.*t127.*t183.*(-1.60906034646792e-2)+in11val1.*t49.*t127.*t183.*(t37-t40).*1.60906034646792e-2];
    mt4 = [in12val1.*t49.*t72.*t128.*t220.*(-1.674967109894491e+2)-in11val1.*t49.*t109.*t128.*t220.*1.674967109894491e+2,in11val1.*t49.*t73.*t128.*t220.*(-1.674967109894491e+2)+in12val1.*t49.*t128.*t220.*(t35-t41).*1.674967109894491e+2];
    mt5 = [in12val1.*t49.*t107.*t128.*t220.*(-1.674967109894491e+2)+in11val1.*t49.*t128.*t220.*(t37-t40).*1.674967109894491e+2,in12val1.*t49.*t72.*t128.*t221.*(-1.674967109894491e+2)-in11val1.*t49.*t109.*t128.*t221.*1.674967109894491e+2];
    mt6 = [in11val1.*t49.*t73.*t128.*t221.*(-1.674967109894491e+2)+in12val1.*t49.*t128.*t221.*(t35-t41).*1.674967109894491e+2];
    mt7 = [in12val1.*t49.*t107.*t128.*t221.*(-1.674967109894491e+2)+in11val1.*t49.*t128.*t221.*(t37-t40).*1.674967109894491e+2,in12val1.*t49.*t72.*t128.*t222.*(-1.674967109894491e+2)-in11val1.*t49.*t109.*t128.*t222.*1.674967109894491e+2];
    mt8 = [in11val1.*t49.*t73.*t128.*t222.*(-1.674967109894491e+2)+in12val1.*t49.*t128.*t222.*(t35-t41).*1.674967109894491e+2];
    mt9 = [in12val1.*t49.*t107.*t128.*t222.*(-1.674967109894491e+2)+in11val1.*t49.*t128.*t222.*(t37-t40).*1.674967109894491e+2,t129+t196+t204-in6val1.*(t38-t39).*(9.81e+2./5.0e+1)+t49.*t72.*t243.*(9.81e+2./1.0e+2)-t49.*t109.*t240.*(9.81e+2./1.0e+2),t121+t198+t200+in6val1.*t108.*(9.81e+2./5.0e+1)-t49.*t73.*t240.*(9.81e+2./1.0e+2)-t49.*t243.*(t35-t41).*(9.81e+2./1.0e+2)];
    mt10 = [t122+t194+t203+in6val1.*t71.*(9.81e+2./5.0e+1)+t49.*t107.*t243.*(9.81e+2./1.0e+2)+t49.*t240.*(t37-t40).*(9.81e+2./1.0e+2),t123+t197+t205-in5val1.*(t38-t39).*(9.81e+2./5.0e+1)-t49.*t72.*t241.*(9.81e+2./1.0e+2)+t49.*t109.*t245.*(9.81e+2./1.0e+2),-t194+t199+in5val1.*t108.*(9.81e+2./5.0e+1)-in6val1.*t116.*2.0+t49.*t73.*t245.*(9.81e+2./1.0e+2)+t49.*t241.*(t35-t41).*(9.81e+2./1.0e+2),t121+t198+t200+in5val1.*t71.*(9.81e+2./5.0e+1)-t49.*t107.*t241.*(9.81e+2./1.0e+2)-t49.*t245.*(t37-t40).*(9.81e+2./1.0e+2)];
    mt11 = [t122+t194+t203-in8val1.*(t38-t39).*(9.81e+2./5.0e+1)-t49.*t72.*t242.*(9.81e+2./1.0e+2)-t49.*t109.*t239.*(9.81e+2./1.0e+2),t123+t197+t205+in8val1.*t108.*(9.81e+2./5.0e+1)-t49.*t73.*t239.*(9.81e+2./1.0e+2)+t49.*t242.*(t35-t41).*(9.81e+2./1.0e+2),t124+t192+t201+in8val1.*t71.*(9.81e+2./5.0e+1)-t49.*t107.*t242.*(9.81e+2./1.0e+2)+t49.*t239.*(t37-t40).*(9.81e+2./1.0e+2),t195-t200-in5val1.*t116.*2.0-in7val1.*(t38-t39).*(9.81e+2./5.0e+1)+t49.*t72.*t246.*(9.81e+2./1.0e+2)+t49.*t109.*t244.*(9.81e+2./1.0e+2)];
    mt12 = [t129+t196+t204+in7val1.*t108.*(9.81e+2./5.0e+1)+t49.*t73.*t244.*(9.81e+2./1.0e+2)-t49.*t246.*(t35-t41).*(9.81e+2./1.0e+2),t123+t197+t205+in7val1.*t71.*(9.81e+2./5.0e+1)+t49.*t107.*t246.*(9.81e+2./1.0e+2)-t49.*t244.*(t37-t40).*(9.81e+2./1.0e+2),0.0,0.0,0.0,t9.*t49.*t72.*(-9.81e+2./1.0e+2)+t5.*t49.*t109.*(9.81e+2./1.0e+2),t5.*t49.*t73.*(9.81e+2./1.0e+2)+t9.*t49.*(t35-t41).*(9.81e+2./1.0e+2),t9.*t49.*t107.*(-9.81e+2./1.0e+2)-t5.*t49.*(t37-t40).*(9.81e+2./1.0e+2)];
    mt13 = [t49.*t109.*t128.*t183.*(-1.674967109894491e+2),t49.*t73.*t128.*t183.*(-1.674967109894491e+2),t49.*t128.*t183.*(t37-t40).*1.674967109894491e+2,t49.*t72.*t128.*t183.*(-1.674967109894491e+2)];
    mt14 = [t49.*t128.*t183.*(t35-t41).*1.674967109894491e+2,t49.*t107.*t128.*t183.*(-1.674967109894491e+2),t49.*t72.*t107.*(9.81e+2./1.0e+2)+t50.*t72.*t191.*(9.81e+2./1.0e+2)+t50.*t109.*t190.*(9.81e+2./1.0e+2)-t49.*t109.*(t37-t40).*(9.81e+2./1.0e+2)];
    mt15 = [t50.*t73.*t190.*(9.81e+2./1.0e+2)-t49.*t73.*(t37-t40).*(9.81e+2./1.0e+2)-t49.*t107.*(t35-t41).*(9.81e+2./1.0e+2)-t50.*t191.*(t35-t41).*(9.81e+2./1.0e+2),t49.*t115.*(9.81e+2./1.0e+2)+t49.*(t37-t40).^2.*(9.81e+2./1.0e+2)+t50.*t107.*t191.*(9.81e+2./1.0e+2)-t50.*t190.*(t37-t40).*(9.81e+2./1.0e+2),t46.*t49.*t72.*(-9.81e+2./1.0e+2)-t47.*t49.*t109.*(9.81e+2./1.0e+2),t47.*t49.*t73.*(-9.81e+2./1.0e+2)+t46.*t49.*(t35-t41).*(9.81e+2./1.0e+2)];
    mt16 = [t46.*t49.*t107.*(-9.81e+2./1.0e+2)+t47.*t49.*(t37-t40).*(9.81e+2./1.0e+2),0.0,0.0,0.0];
    j_out1 = reshape([mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9,mt10,mt11,mt12,mt13,mt14,mt15,mt16],3,15);
end
if nargout > 8
    j_out2 = [0.0,0.0,0.0,0.0,t115.*t139.*(t11.*t118-in5val1.*t71.*t119.*2.0),t115.*t139.*(t10.*t118+t11.*t71.*t119),t115.*t139.*(t13.*t118+t12.*t71.*t119),t115.*t139.*(t12.*t118-in8val1.*t71.*t119.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 9
    t271 = -t264;
    t272 = -t265;
    t273 = -t266;
    t275 = -t274;
    t277 = -t276;
    mt17 = [in7val1.*in12val1.*t49.*t115.*t127.*t138.*t184.*(-8.0453017323396e-3)+in8val1.*in12val1.*t49.*t71.*t107.*t127.*t138.*t184.*8.0453017323396e-3];
    mt18 = [in8val1.*in12val1.*t49.*t115.*t127.*t138.*t184.*(-8.0453017323396e-3)-in7val1.*in12val1.*t49.*t71.*t107.*t127.*t138.*t184.*8.0453017323396e-3];
    mt19 = [in5val1.*in12val1.*t49.*t115.*t127.*t138.*t184.*8.0453017323396e-3+in6val1.*in12val1.*t49.*t71.*t107.*t127.*t138.*t184.*8.0453017323396e-3];
    mt20 = [in6val1.*in12val1.*t49.*t115.*t127.*t138.*t184.*8.0453017323396e-3-in5val1.*in12val1.*t49.*t71.*t107.*t127.*t138.*t184.*8.0453017323396e-3,in8val1.*t71.*t137.*t185.*t261.*(-9.81e+2./2.0e+2)+in7val1.*t107.*t137.*t185.*t261.*(9.81e+2./2.0e+2)+in8val1.*t71.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2)-in7val1.*t107.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2)];
    mt21 = [in7val1.*t71.*t137.*t185.*t261.*(9.81e+2./2.0e+2)+in8val1.*t107.*t137.*t185.*t261.*(9.81e+2./2.0e+2)-in7val1.*t71.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2)-in8val1.*t107.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2),in6val1.*t71.*t137.*t185.*t261.*(-9.81e+2./2.0e+2)-in5val1.*t107.*t137.*t185.*t261.*(9.81e+2./2.0e+2)+in6val1.*t71.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2)+in5val1.*t107.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2),in5val1.*t71.*t137.*t185.*t261.*(9.81e+2./2.0e+2)-in6val1.*t107.*t137.*t185.*t261.*(9.81e+2./2.0e+2)-in5val1.*t71.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2)+in6val1.*t107.*t137.*t186.*t213.*t220.*(9.81e+2./4.0e+2)];
    mt22 = [in8val1.*t71.*t137.*t185.*t262.*(-9.81e+2./2.0e+2)+in7val1.*t107.*t137.*t185.*t262.*(9.81e+2./2.0e+2)+in8val1.*t71.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2)-in7val1.*t107.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2),in7val1.*t71.*t137.*t185.*t262.*(9.81e+2./2.0e+2)+in8val1.*t107.*t137.*t185.*t262.*(9.81e+2./2.0e+2)-in7val1.*t71.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2)-in8val1.*t107.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2),in6val1.*t71.*t137.*t185.*t262.*(-9.81e+2./2.0e+2)-in5val1.*t107.*t137.*t185.*t262.*(9.81e+2./2.0e+2)+in6val1.*t71.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2)+in5val1.*t107.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2)];
    mt23 = [in5val1.*t71.*t137.*t185.*t262.*(9.81e+2./2.0e+2)-in6val1.*t107.*t137.*t185.*t262.*(9.81e+2./2.0e+2)-in5val1.*t71.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2)+in6val1.*t107.*t137.*t186.*t213.*t221.*(9.81e+2./4.0e+2),in8val1.*t71.*t137.*t185.*t278.*(9.81e+2./2.0e+2)-in7val1.*t107.*t137.*t185.*t278.*(9.81e+2./2.0e+2)+in8val1.*t71.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2)-in7val1.*t107.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2),in7val1.*t71.*t137.*t185.*t278.*(-9.81e+2./2.0e+2)-in8val1.*t107.*t137.*t185.*t278.*(9.81e+2./2.0e+2)-in7val1.*t71.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2)-in8val1.*t107.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2)];
    mt24 = [in6val1.*t71.*t137.*t185.*t278.*(9.81e+2./2.0e+2)+in5val1.*t107.*t137.*t185.*t278.*(9.81e+2./2.0e+2)+in6val1.*t71.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2)+in5val1.*t107.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2),in5val1.*t71.*t137.*t185.*t278.*(-9.81e+2./2.0e+2)+in6val1.*t107.*t137.*t185.*t278.*(9.81e+2./2.0e+2)-in5val1.*t71.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2)+in6val1.*t107.*t137.*t186.*t213.*t222.*(9.81e+2./4.0e+2)];
    mt25 = [t263+t273+in8val1.*t71.*t137.*t185.*t279.*(9.81e+2./2.0e+2)-in7val1.*t107.*t137.*t185.*t279.*(9.81e+2./2.0e+2)+in8val1.*t71.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)-in7val1.*t107.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)+in8val1.*t71.*t74.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in7val1.*t74.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t61+t264+t265-in7val1.*t71.*t137.*t185.*t279.*(9.81e+2./2.0e+2)-in8val1.*t107.*t137.*t185.*t279.*(9.81e+2./2.0e+2)-in7val1.*t71.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)-in8val1.*t107.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)-in7val1.*t71.*t74.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in8val1.*t74.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)];
    mt26 = [-t267-t268+t277+in6val1.*t71.*t137.*t185.*t279.*(9.81e+2./2.0e+2)+in5val1.*t107.*t137.*t185.*t279.*(9.81e+2./2.0e+2)+in6val1.*t71.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)+in5val1.*t107.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)+in6val1.*t71.*t74.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in5val1.*t74.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t274-in5val1.*t71.*t137.*t185.*t279.*(9.81e+2./2.0e+2)+in6val1.*t107.*t137.*t185.*t279.*(9.81e+2./2.0e+2)-in5val1.*t71.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)+in6val1.*t107.*t137.*t186.*t213.*t223.*(9.81e+2./4.0e+2)-in5val1.*t71.*t74.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in6val1.*t74.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)];
    mt27 = [t69+t271+t272-in8val1.*t71.*t137.*t185.*t280.*(9.81e+2./2.0e+2)+in7val1.*t107.*t137.*t185.*t280.*(9.81e+2./2.0e+2)+in8val1.*t71.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)-in7val1.*t107.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)+in8val1.*t71.*t82.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in7val1.*t82.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t263+t273+in7val1.*t71.*t137.*t185.*t280.*(9.81e+2./2.0e+2)+in8val1.*t107.*t137.*t185.*t280.*(9.81e+2./2.0e+2)-in7val1.*t71.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)-in8val1.*t107.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)-in7val1.*t71.*t82.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in8val1.*t82.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)];
    mt28 = [t275-in6val1.*t71.*t137.*t185.*t280.*(9.81e+2./2.0e+2)-in5val1.*t107.*t137.*t185.*t280.*(9.81e+2./2.0e+2)+in6val1.*t71.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)+in5val1.*t107.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)+in6val1.*t71.*t82.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in5val1.*t82.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t267+t268+t277+in5val1.*t71.*t137.*t185.*t280.*(9.81e+2./2.0e+2)-in6val1.*t107.*t137.*t185.*t280.*(9.81e+2./2.0e+2)-in5val1.*t71.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)+in6val1.*t107.*t137.*t186.*t213.*t224.*(9.81e+2./4.0e+2)-in5val1.*t71.*t82.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in6val1.*t82.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)];
    mt29 = [-t269-t270+t276+in8val1.*t71.*t137.*t185.*t281.*(9.81e+2./2.0e+2)-in7val1.*t107.*t137.*t185.*t281.*(9.81e+2./2.0e+2)+in8val1.*t71.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)-in7val1.*t107.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)-in8val1.*t71.*t83.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in7val1.*t83.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t274-in7val1.*t71.*t137.*t185.*t281.*(9.81e+2./2.0e+2)-in8val1.*t107.*t137.*t185.*t281.*(9.81e+2./2.0e+2)-in7val1.*t71.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)-in8val1.*t107.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)+in7val1.*t71.*t83.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in8val1.*t83.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)];
    mt30 = [t263+t273+in6val1.*t71.*t137.*t185.*t281.*(9.81e+2./2.0e+2)+in5val1.*t107.*t137.*t185.*t281.*(9.81e+2./2.0e+2)+in6val1.*t71.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)+in5val1.*t107.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)-in6val1.*t71.*t83.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in5val1.*t83.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t69+t264+t265-in5val1.*t71.*t137.*t185.*t281.*(9.81e+2./2.0e+2)+in6val1.*t107.*t137.*t185.*t281.*(9.81e+2./2.0e+2)-in5val1.*t71.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)+in6val1.*t107.*t137.*t186.*t213.*t225.*(9.81e+2./4.0e+2)+in5val1.*t71.*t83.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in6val1.*t83.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)];
    mt31 = [t275+in8val1.*t71.*t137.*t185.*t282.*(9.81e+2./2.0e+2)-in7val1.*t107.*t137.*t185.*t282.*(9.81e+2./2.0e+2)+in8val1.*t71.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)-in7val1.*t107.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)+in8val1.*t71.*t75.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in7val1.*t75.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t269+t270+t276-in7val1.*t71.*t137.*t185.*t282.*(9.81e+2./2.0e+2)-in8val1.*t107.*t137.*t185.*t282.*(9.81e+2./2.0e+2)-in7val1.*t71.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)-in8val1.*t107.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)-in7val1.*t71.*t75.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)-in8val1.*t75.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)];
    mt32 = [t61+t271+t272+in6val1.*t71.*t137.*t185.*t282.*(9.81e+2./2.0e+2)+in5val1.*t107.*t137.*t185.*t282.*(9.81e+2./2.0e+2)+in6val1.*t71.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)+in5val1.*t107.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)+in6val1.*t71.*t75.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in5val1.*t75.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),t263+t273-in5val1.*t71.*t137.*t185.*t282.*(9.81e+2./2.0e+2)+in6val1.*t107.*t137.*t185.*t282.*(9.81e+2./2.0e+2)-in5val1.*t71.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)+in6val1.*t107.*t137.*t186.*t213.*t226.*(9.81e+2./4.0e+2)-in5val1.*t71.*t75.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2)+in6val1.*t75.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./2.0e+2),in6val1.*(-1.0./2.0)];
    mt33 = [in5val1./2.0,in8val1./2.0,in7val1.*(-1.0./2.0),in7val1.*t9.*t49.*t115.*t138.*t185.*(-9.81e+2./2.0e+2)+in8val1.*t9.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2),in8val1.*t9.*t49.*t115.*t138.*t185.*(-9.81e+2./2.0e+2)-in7val1.*t9.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2),in5val1.*t9.*t49.*t115.*t138.*t185.*(9.81e+2./2.0e+2)+in6val1.*t9.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2),in6val1.*t9.*t49.*t115.*t138.*t185.*(9.81e+2./2.0e+2)-in5val1.*t9.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2),0.0,0.0,0.0,0.0];
    mt34 = [in7val1.*t49.*t115.*t128.*t138.*t184.*(-8.374835549472455e+1)+in8val1.*t49.*t71.*t107.*t128.*t138.*t184.*8.374835549472455e+1,in8val1.*t49.*t115.*t128.*t138.*t184.*(-8.374835549472455e+1)-in7val1.*t49.*t71.*t107.*t128.*t138.*t184.*8.374835549472455e+1];
    mt35 = [in5val1.*t49.*t115.*t128.*t138.*t184.*8.374835549472455e+1+in6val1.*t49.*t71.*t107.*t128.*t138.*t184.*8.374835549472455e+1,in6val1.*t49.*t115.*t128.*t138.*t184.*8.374835549472455e+1-in5val1.*t49.*t71.*t107.*t128.*t138.*t184.*8.374835549472455e+1];
    mt36 = [in7val1.*t50.*t115.*t138.*t185.*t189.*(9.81e+2./2.0e+2)-in8val1.*t50.*t71.*t107.*t138.*t185.*t189.*(9.81e+2./2.0e+2),in8val1.*t50.*t115.*t138.*t185.*t189.*(9.81e+2./2.0e+2)+in7val1.*t50.*t71.*t107.*t138.*t185.*t189.*(9.81e+2./2.0e+2),in5val1.*t50.*t115.*t138.*t185.*t189.*(-9.81e+2./2.0e+2)-in6val1.*t50.*t71.*t107.*t138.*t185.*t189.*(9.81e+2./2.0e+2),in6val1.*t50.*t115.*t138.*t185.*t189.*(-9.81e+2./2.0e+2)+in5val1.*t50.*t71.*t107.*t138.*t185.*t189.*(9.81e+2./2.0e+2),in7val1.*t46.*t49.*t115.*t138.*t185.*(-9.81e+2./2.0e+2)+in8val1.*t46.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2),in8val1.*t46.*t49.*t115.*t138.*t185.*(-9.81e+2./2.0e+2)-in7val1.*t46.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2)];
    mt37 = [in5val1.*t46.*t49.*t115.*t138.*t185.*(9.81e+2./2.0e+2)+in6val1.*t46.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2),in6val1.*t46.*t49.*t115.*t138.*t185.*(9.81e+2./2.0e+2)-in5val1.*t46.*t49.*t71.*t107.*t138.*t185.*(9.81e+2./2.0e+2),0.0,0.0,0.0,0.0];
    j_out3 = reshape([mt17,mt18,mt19,mt20,mt21,mt22,mt23,mt24,mt25,mt26,mt27,mt28,mt29,mt30,mt31,mt32,mt33,mt34,mt35,mt36,mt37],4,15);
end
if nargout > 10
    j_out4 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-in15val1,0.0,0.0,0.0,0.0,-in10val1];
end
if nargout > 11
    j_out5 = [0.0,in4val1.*t2.*t6.*t105.*t132,in4val1.*t3.*t7.*t105.*t132,-t132.*(t104-in4val1.*t4.*t8.*t105),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 12
    j_out6 = [0.0,-in3val1.*t78,in2val1.*t78,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 13
    mt38 = [0.0,in12val1.*t49.*t115.*t127.*t138.*t184.*1.60906034646792e-2,in12val1.*t49.*t71.*t107.*t127.*t138.*t184.*(-1.60906034646792e-2),0.0,t107.*t137.*t185.*t261.*(-9.81e+2./1.0e+2)+t107.*t137.*t186.*t213.*t220.*(9.81e+2./2.0e+2),t71.*t137.*t185.*t261.*(9.81e+2./1.0e+2)-t71.*t137.*t186.*t213.*t220.*(9.81e+2./2.0e+2),0.0];
    mt39 = [t107.*t137.*t185.*t262.*(-9.81e+2./1.0e+2)+t107.*t137.*t186.*t213.*t221.*(9.81e+2./2.0e+2),t71.*t137.*t185.*t262.*(9.81e+2./1.0e+2)-t71.*t137.*t186.*t213.*t221.*(9.81e+2./2.0e+2),0.0,t107.*t137.*t185.*t278.*(9.81e+2./1.0e+2)+t107.*t137.*t186.*t213.*t222.*(9.81e+2./2.0e+2),t71.*t137.*t185.*t278.*(-9.81e+2./1.0e+2)-t71.*t137.*t186.*t213.*t222.*(9.81e+2./2.0e+2),0.0,-t257+t107.*t137.*t185.*t279.*(9.81e+2./1.0e+2)+t107.*t137.*t186.*t213.*t223.*(9.81e+2./2.0e+2)+t74.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2)];
    mt40 = [t258-t71.*t137.*t185.*t279.*(9.81e+2./1.0e+2)-t71.*t137.*t186.*t213.*t223.*(9.81e+2./2.0e+2)-t71.*t74.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2),0.0,t258-t107.*t137.*t185.*t280.*(9.81e+2./1.0e+2)+t107.*t137.*t186.*t213.*t224.*(9.81e+2./2.0e+2)+t82.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2),t257+t71.*t137.*t185.*t280.*(9.81e+2./1.0e+2)-t71.*t137.*t186.*t213.*t224.*(9.81e+2./2.0e+2)-t71.*t82.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2),0.0,t259+t107.*t137.*t185.*t281.*(9.81e+2./1.0e+2)+t107.*t137.*t186.*t213.*t225.*(9.81e+2./2.0e+2)-t83.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2)];
    mt41 = [t260-t71.*t137.*t185.*t281.*(9.81e+2./1.0e+2)-t71.*t137.*t186.*t213.*t225.*(9.81e+2./2.0e+2)+t71.*t83.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2),0.0,-t260+t107.*t137.*t185.*t282.*(9.81e+2./1.0e+2)+t107.*t137.*t186.*t213.*t226.*(9.81e+2./2.0e+2)+t75.*t107.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2),t259-t71.*t137.*t185.*t282.*(9.81e+2./1.0e+2)-t71.*t137.*t186.*t213.*t226.*(9.81e+2./2.0e+2)-t71.*t75.*t135.*t138.*t185.*t213.*(9.81e+2./1.0e+2),1.0,0.0,0.0,0.0,t9.*t49.*t115.*t138.*t185.*(9.81e+2./1.0e+2),t9.*t49.*t71.*t107.*t138.*t185.*(-9.81e+2./1.0e+2),0.0,0.0,0.0,0.0];
    mt42 = [t49.*t115.*t128.*t138.*t184.*1.674967109894491e+2,t49.*t71.*t107.*t128.*t138.*t184.*(-1.674967109894491e+2),0.0,t50.*t115.*t138.*t185.*t189.*(-9.81e+2./1.0e+2),t50.*t71.*t107.*t138.*t185.*t189.*(9.81e+2./1.0e+2),0.0,t46.*t49.*t115.*t138.*t185.*(9.81e+2./1.0e+2),t46.*t49.*t71.*t107.*t138.*t185.*(-9.81e+2./1.0e+2),0.0,0.0,0.0];
    j_out7 = reshape([mt38,mt39,mt40,mt41,mt42],3,15);
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

end  % sys_0c32b19bd8f4839242a5991d536bf136_jac
