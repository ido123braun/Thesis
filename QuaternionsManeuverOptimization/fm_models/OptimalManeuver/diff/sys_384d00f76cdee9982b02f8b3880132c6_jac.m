function [out1,out2,out3,out4,out5,out6,out7,j_out1,j_out2,j_out3,j_out4,j_out5,j_out6,j_out7,h_out1,h_out2,h_out3,h_out4,h_out5,h_out6,h_out7] = sys_384d00f76cdee9982b02f8b3880132c6_jac(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1,in7val1,in8val1,in9val1,in10val1,in11val1,in12val1,in13val1,in14val1,in15val1)
%SYS_384D00F76CDEE9982B02F8B3880132C6_JAC
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,J_OUT1,J_OUT2,J_OUT3,J_OUT4,J_OUT5,J_OUT6,J_OUT7,H_OUT1,H_OUT2,H_OUT3,H_OUT4,H_OUT5,H_OUT6,H_OUT7] = SYS_384D00F76CDEE9982B02F8B3880132C6_JAC(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1,IN7VAL1,IN8VAL1,IN9VAL1,IN10VAL1,IN11VAL1,IN12VAL1,IN13VAL1,IN14VAL1,IN15VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    21-Jan-2023 16:22:09

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
t6 = sin(in14val1);
t7 = in5val1.*2.0;
t8 = in6val1.*2.0;
t9 = in7val1.*2.0;
t10 = in8val1.*2.0;
t11 = in2val1.^2;
t12 = in3val1.^2;
t13 = in4val1.^2;
t14 = in5val1.^2;
t15 = in6val1.^2;
t16 = in7val1.^2;
t17 = in8val1.^2;
t46 = 1.0./in13val1;
t48 = in3val1.*in6val1.*-2.0;
t49 = in2val1.*in8val1.*-2.0;
t50 = in4val1.*in7val1.*-2.0;
t51 = in6val1.*in7val1.*-2.0;
t52 = in6val1.*in8val1.*-2.0;
t53 = in7val1.*in8val1.*-2.0;
t54 = in5val1.*2.0i;
t55 = in6val1.*2.0i;
t56 = in7val1.*2.0i;
t57 = in8val1.*2.0i;
t58 = in9val1./2.0;
t73 = in5val1.*in6val1.*(9.81e+2./5.0e+1);
t74 = in7val1.*in8val1.*(9.81e+2./5.0e+1);
t89 = in1val1.*2.255769564462953e-5;
t18 = t2.^2;
t19 = t3.^2;
t20 = t4.^2;
t21 = in2val1.*t7;
t22 = in2val1.*t8;
t23 = in3val1.*t7;
t24 = in2val1.*t9;
t25 = in3val1.*t8;
t26 = in4val1.*t7;
t27 = in2val1.*t10;
t28 = in3val1.*t9;
t29 = in4val1.*t8;
t30 = in3val1.*t10;
t31 = in4val1.*t9;
t32 = in6val1.*t7;
t33 = in4val1.*t10;
t34 = in7val1.*t7;
t35 = in8val1.*t7;
t36 = in7val1.*t8;
t37 = in8val1.*t8;
t38 = in8val1.*t9;
t39 = in13val1.*t7;
t40 = in13val1.*t8;
t41 = in13val1.*t9;
t42 = in13val1.*t10;
t43 = in10val1.*t5;
t44 = in10val1.*t6;
t45 = -t8;
t47 = t46.^2;
t59 = -t15;
t60 = -t16;
t61 = -t17;
t62 = in6val1.*t54;
t63 = in8val1.*t56;
t65 = -t57;
t66 = -t58;
t67 = t11+t12;
t71 = t7+t55;
t72 = t10+t56;
t92 = t89+1.0;
t111 = t73+t74;
t64 = -t43;
t68 = t32+t38;
t69 = t34+t37;
t70 = t35+t36;
t75 = 1.0./t67;
t76 = t32+t53;
t77 = t34+t52;
t78 = t35+t51;
t79 = t45+t54;
t80 = t9+t65;
t85 = in2val1.*(t35-t36);
t86 = in3val1.*(t32-t38);
t87 = in4val1.*(t34-t37);
t88 = in13val1.*(t34-t37);
t90 = t18+t19+t20;
t91 = t22+t28+t33;
t96 = t24+t26+t48;
t97 = t23+t29+t49;
t98 = t21+t30+t50;
t102 = t14+t17+t59+t60;
t103 = t14+t16+t59+t61;
t104 = t14+t15+t60+t61;
t116 = t7.*t111;
t117 = t8.*t111;
t118 = t9.*t111;
t119 = t10.*t111;
t121 = t92.^3.258643795229161;
t122 = t92.^4.258643795229161;
t123 = in8val1.*t111.*-2.0;
t81 = t68.^2;
t82 = in2val1.*t69;
t83 = in3val1.*t70;
t84 = in4val1.*t68;
t93 = -t85;
t94 = -t86;
t95 = -t87;
t99 = 1.0./t90;
t100 = 1.0./sqrt(t90);
t106 = in2val1.*t104;
t107 = in3val1.*t103;
t108 = in4val1.*t102;
t109 = in13val1.*t102;
t110 = t102.^2;
t113 = 1.0./t102;
t125 = t62+t63+t102;
t101 = t100.^3;
t105 = t13.*t99;
t114 = 1.0./t110;
t115 = -t109;
t126 = abs(t125);
t127 = sign(t125);
t128 = t81+t110;
t132 = t83+t95+t106;
t133 = t84+t93+t107;
t134 = t82+t94+t108;
t112 = -t105;
t129 = 1.0./t126;
t131 = 1.0./t128;
t135 = abs(t132);
t136 = abs(t133);
t137 = abs(t134);
t138 = sign(t132);
t139 = sign(t133);
t140 = sign(t134);
t120 = t112+1.0;
t130 = t129.^2;
t141 = t135.^2;
t142 = t136.^2;
t143 = t137.^2;
t144 = t70.*t135.*t138.*2.0;
t145 = t68.*t136.*t139.*2.0;
t146 = t69.*t137.*t140.*2.0;
t147 = t135.*t138.*(t34-t37).*2.0;
t148 = t136.*t139.*(t35-t36).*2.0;
t149 = t137.*t140.*(t32-t38).*2.0;
t153 = t91.*t135.*t138.*2.0;
t154 = t91.*t136.*t139.*2.0;
t155 = t91.*t137.*t140.*2.0;
t156 = t96.*t135.*t138.*2.0;
t157 = t96.*t136.*t139.*2.0;
t158 = t96.*t137.*t140.*2.0;
t159 = t97.*t135.*t138.*2.0;
t160 = t97.*t136.*t139.*2.0;
t161 = t97.*t137.*t140.*2.0;
t162 = t98.*t135.*t138.*2.0;
t163 = t98.*t136.*t139.*2.0;
t164 = t98.*t137.*t140.*2.0;
t168 = t104.*t135.*t138.*2.0;
t169 = t103.*t136.*t139.*2.0;
t170 = t102.*t137.*t140.*2.0;
t124 = 1.0./sqrt(t120);
t150 = -t147;
t151 = -t148;
t152 = -t149;
t165 = -t156;
t166 = -t161;
t167 = -t163;
t171 = t141+t142+t143;
t216 = t158+t160+t162;
t172 = 1.0./sqrt(t171);
t193 = in11val1.*t122.*t171.*1.707407859219665e+1;
t194 = in12val1.*t122.*t171.*1.707407859219665e+1;
t213 = t146+t151+t168;
t214 = t144+t152+t169;
t215 = t145+t150+t170;
t217 = t153+t157+t166;
t218 = t154+t164+t165;
t219 = t155+t159+t167;
t220 = in11val1.*t122.*t216.*1.707407859219665e+1;
t222 = in12val1.*t122.*t216.*1.707407859219665e+1;
t173 = t172.^3;
t174 = in5val1.*t129.*t172.*(9.81e+2./5.0e+1);
t175 = in6val1.*t129.*t172.*(9.81e+2./5.0e+1);
t176 = in7val1.*t129.*t172.*(9.81e+2./5.0e+1);
t177 = in8val1.*t129.*t172.*(9.81e+2./5.0e+1);
t180 = in5val1.*in7val1.*t129.*t172.*(9.81e+2./1.0e+2);
t181 = in5val1.*in8val1.*t129.*t172.*(9.81e+2./1.0e+2);
t182 = in6val1.*in7val1.*t129.*t172.*(9.81e+2./1.0e+2);
t183 = in6val1.*in8val1.*t129.*t172.*(9.81e+2./1.0e+2);
t184 = t14.*t129.*t172.*(9.81e+2./1.0e+2);
t185 = t15.*t129.*t172.*(9.81e+2./1.0e+2);
t186 = t16.*t129.*t172.*(9.81e+2./1.0e+2);
t187 = t17.*t129.*t172.*(9.81e+2./1.0e+2);
t191 = t68.*t129.*t172.*(9.81e+2./2.0e+2);
t195 = t102.*t129.*t172.*(9.81e+2./2.0e+2);
t197 = t64+t88+t193;
t198 = t44+t115+t194;
out1 = [-t111.*(t35-t36)-t46.*t69.*t198.*(9.81e+2./1.0e+2)-t46.*t104.*t197.*(9.81e+2./1.0e+2);t103.*t111-t46.*t70.*t197.*(9.81e+2./1.0e+2)+t46.*t198.*(t32-t38).*(9.81e+2./1.0e+2);t68.*t111-t46.*t102.*t198.*(9.81e+2./1.0e+2)+t46.*t197.*(t34-t37).*(9.81e+2./1.0e+2)];
if nargout > 1
    out2 = angle(t125);
end
if nargout > 2
    out3 = [in6val1.*in9val1.*(-1.0./2.0)+in8val1.*t191-in7val1.*t102.*t129.*t172.*(9.81e+2./2.0e+2);in5val1.*t58-in7val1.*t68.*t129.*t172.*(9.81e+2./2.0e+2)-in8val1.*t102.*t129.*t172.*(9.81e+2./2.0e+2);in8val1.*t58+in5val1.*t195+in6val1.*t191;in7val1.*in9val1.*(-1.0./2.0)+in6val1.*t195-in5val1.*t68.*t129.*t172.*(9.81e+2./2.0e+2)];
end
if nargout > 3
    out4 = -in10val1.*in15val1;
end
if nargout > 4
    out5 = -asin(in4val1.*t100);
end
if nargout > 5
    out6 = atan2(in3val1,in2val1);
end
if nargout > 6
    out7 = [in9val1;t102.*t129.*t172.*(9.81e+2./1.0e+2);t68.*t129.*t172.*(-9.81e+2./1.0e+2)];
end
if nargout > 7
    t221 = in11val1.*t122.*t217.*1.707407859219665e+1;
    t223 = in11val1.*t122.*t218.*1.707407859219665e+1;
    t224 = in12val1.*t122.*t217.*1.707407859219665e+1;
    t225 = in11val1.*t122.*t219.*1.707407859219665e+1;
    t226 = in12val1.*t122.*t218.*1.707407859219665e+1;
    t227 = in12val1.*t122.*t219.*1.707407859219665e+1;
    t229 = -t222;
    t233 = t41+t220;
    t178 = -t175;
    t179 = -t176;
    t188 = -t180;
    t189 = -t181;
    t190 = -t182;
    t192 = -t191;
    t196 = -t195;
    t199 = in5val1.*t46.*t197.*(9.81e+2./5.0e+1);
    t200 = in6val1.*t46.*t197.*(9.81e+2./5.0e+1);
    t201 = in7val1.*t46.*t197.*(9.81e+2./5.0e+1);
    t202 = in8val1.*t46.*t197.*(9.81e+2./5.0e+1);
    t206 = in5val1.*t46.*t198.*(9.81e+2./5.0e+1);
    t207 = in6val1.*t46.*t198.*(9.81e+2./5.0e+1);
    t208 = in7val1.*t46.*t198.*(9.81e+2./5.0e+1);
    t209 = in8val1.*t46.*t198.*(9.81e+2./5.0e+1);
    t228 = -t221;
    t230 = -t225;
    t231 = -t227;
    t232 = t39+t223;
    t234 = t40+t224;
    t235 = t41+t226;
    t236 = t39+t229;
    t203 = -t199;
    t204 = -t200;
    t205 = -t202;
    t210 = -t206;
    t211 = -t208;
    t212 = -t209;
    t237 = t40+t230;
    t238 = t42+t228;
    t239 = t42+t231;
    mt1 = [in12val1.*t46.*t69.*t121.*t171.*(-1.60906034646792e-2)-in11val1.*t46.*t104.*t121.*t171.*1.60906034646792e-2];
    mt2 = [in11val1.*t46.*t70.*t121.*t171.*(-1.60906034646792e-2)+in12val1.*t46.*t121.*t171.*(t32-t38).*1.60906034646792e-2];
    mt3 = [in12val1.*t46.*t102.*t121.*t171.*(-1.60906034646792e-2)+in11val1.*t46.*t121.*t171.*(t34-t37).*1.60906034646792e-2];
    mt4 = [in12val1.*t46.*t69.*t122.*t213.*(-1.674967109894491e+2)-in11val1.*t46.*t104.*t122.*t213.*1.674967109894491e+2,in11val1.*t46.*t70.*t122.*t213.*(-1.674967109894491e+2)+in12val1.*t46.*t122.*t213.*(t32-t38).*1.674967109894491e+2];
    mt5 = [in12val1.*t46.*t102.*t122.*t213.*(-1.674967109894491e+2)+in11val1.*t46.*t122.*t213.*(t34-t37).*1.674967109894491e+2,in12val1.*t46.*t69.*t122.*t214.*(-1.674967109894491e+2)-in11val1.*t46.*t104.*t122.*t214.*1.674967109894491e+2];
    mt6 = [in11val1.*t46.*t70.*t122.*t214.*(-1.674967109894491e+2)+in12val1.*t46.*t122.*t214.*(t32-t38).*1.674967109894491e+2];
    mt7 = [in12val1.*t46.*t102.*t122.*t214.*(-1.674967109894491e+2)+in11val1.*t46.*t122.*t214.*(t34-t37).*1.674967109894491e+2,in12val1.*t46.*t69.*t122.*t215.*(-1.674967109894491e+2)-in11val1.*t46.*t104.*t122.*t215.*1.674967109894491e+2];
    mt8 = [in11val1.*t46.*t70.*t122.*t215.*(-1.674967109894491e+2)+in12val1.*t46.*t122.*t215.*(t32-t38).*1.674967109894491e+2];
    mt9 = [in12val1.*t46.*t102.*t122.*t215.*(-1.674967109894491e+2)+in11val1.*t46.*t122.*t215.*(t34-t37).*1.674967109894491e+2,t123+t203+t211-in6val1.*(t35-t36).*(9.81e+2./5.0e+1)+t46.*t69.*t236.*(9.81e+2./1.0e+2)-t46.*t104.*t233.*(9.81e+2./1.0e+2),t116+t205+t207+in6val1.*t103.*(9.81e+2./5.0e+1)-t46.*t70.*t233.*(9.81e+2./1.0e+2)-t46.*t236.*(t32-t38).*(9.81e+2./1.0e+2)];
    mt10 = [t117+t201+t210+in6val1.*t68.*(9.81e+2./5.0e+1)+t46.*t102.*t236.*(9.81e+2./1.0e+2)+t46.*t233.*(t34-t37).*(9.81e+2./1.0e+2),t118+t204+t212-in5val1.*(t35-t36).*(9.81e+2./5.0e+1)-t46.*t69.*t234.*(9.81e+2./1.0e+2)+t46.*t104.*t238.*(9.81e+2./1.0e+2),-t201+t206+in5val1.*t103.*(9.81e+2./5.0e+1)-in6val1.*t111.*2.0+t46.*t70.*t238.*(9.81e+2./1.0e+2)+t46.*t234.*(t32-t38).*(9.81e+2./1.0e+2),t116+t205+t207+in5val1.*t68.*(9.81e+2./5.0e+1)-t46.*t102.*t234.*(9.81e+2./1.0e+2)-t46.*t238.*(t34-t37).*(9.81e+2./1.0e+2)];
    mt11 = [t117+t201+t210-in8val1.*(t35-t36).*(9.81e+2./5.0e+1)-t46.*t69.*t235.*(9.81e+2./1.0e+2)-t46.*t104.*t232.*(9.81e+2./1.0e+2),t118+t204+t212+in8val1.*t103.*(9.81e+2./5.0e+1)-t46.*t70.*t232.*(9.81e+2./1.0e+2)+t46.*t235.*(t32-t38).*(9.81e+2./1.0e+2),t119+t199+t208+in8val1.*t68.*(9.81e+2./5.0e+1)-t46.*t102.*t235.*(9.81e+2./1.0e+2)+t46.*t232.*(t34-t37).*(9.81e+2./1.0e+2),t202-t207-in5val1.*t111.*2.0-in7val1.*(t35-t36).*(9.81e+2./5.0e+1)+t46.*t69.*t239.*(9.81e+2./1.0e+2)+t46.*t104.*t237.*(9.81e+2./1.0e+2)];
    mt12 = [t123+t203+t211+in7val1.*t103.*(9.81e+2./5.0e+1)+t46.*t70.*t237.*(9.81e+2./1.0e+2)-t46.*t239.*(t32-t38).*(9.81e+2./1.0e+2),t118+t204+t212+in7val1.*t68.*(9.81e+2./5.0e+1)+t46.*t102.*t239.*(9.81e+2./1.0e+2)-t46.*t237.*(t34-t37).*(9.81e+2./1.0e+2),0.0,0.0,0.0,t6.*t46.*t69.*(-9.81e+2./1.0e+2)+t5.*t46.*t104.*(9.81e+2./1.0e+2),t5.*t46.*t70.*(9.81e+2./1.0e+2)+t6.*t46.*(t32-t38).*(9.81e+2./1.0e+2),t6.*t46.*t102.*(-9.81e+2./1.0e+2)-t5.*t46.*(t34-t37).*(9.81e+2./1.0e+2)];
    mt13 = [t46.*t104.*t122.*t171.*(-1.674967109894491e+2),t46.*t70.*t122.*t171.*(-1.674967109894491e+2),t46.*t122.*t171.*(t34-t37).*1.674967109894491e+2,t46.*t69.*t122.*t171.*(-1.674967109894491e+2)];
    mt14 = [t46.*t122.*t171.*(t32-t38).*1.674967109894491e+2,t46.*t102.*t122.*t171.*(-1.674967109894491e+2),t46.*t69.*t102.*(9.81e+2./1.0e+2)+t47.*t69.*t198.*(9.81e+2./1.0e+2)+t47.*t104.*t197.*(9.81e+2./1.0e+2)-t46.*t104.*(t34-t37).*(9.81e+2./1.0e+2)];
    mt15 = [t47.*t70.*t197.*(9.81e+2./1.0e+2)-t46.*t70.*(t34-t37).*(9.81e+2./1.0e+2)-t46.*t102.*(t32-t38).*(9.81e+2./1.0e+2)-t47.*t198.*(t32-t38).*(9.81e+2./1.0e+2),t46.*t110.*(9.81e+2./1.0e+2)+t46.*(t34-t37).^2.*(9.81e+2./1.0e+2)+t47.*t102.*t198.*(9.81e+2./1.0e+2)-t47.*t197.*(t34-t37).*(9.81e+2./1.0e+2),t43.*t46.*t69.*(-9.81e+2./1.0e+2)-t44.*t46.*t104.*(9.81e+2./1.0e+2),t44.*t46.*t70.*(-9.81e+2./1.0e+2)+t43.*t46.*(t32-t38).*(9.81e+2./1.0e+2)];
    mt16 = [t43.*t46.*t102.*(-9.81e+2./1.0e+2)+t44.*t46.*(t34-t37).*(9.81e+2./1.0e+2),0.0,0.0,0.0];
    j_out1 = reshape([mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9,mt10,mt11,mt12,mt13,mt14,mt15,mt16],3,15);
end
if nargout > 8
    j_out2 = [0.0,0.0,0.0,0.0,t110.*t131.*(t8.*t113-in5val1.*t68.*t114.*2.0),t110.*t131.*(t7.*t113+t8.*t68.*t114),t110.*t131.*(t10.*t113+t9.*t68.*t114),t110.*t131.*(t9.*t113-in8val1.*t68.*t114.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 9
    mt17 = [0.0,0.0,0.0,0.0,in8val1.*t68.*t129.*t173.*t213.*(-9.81e+2./4.0e+2)+in7val1.*t102.*t129.*t173.*t213.*(9.81e+2./4.0e+2),in7val1.*t68.*t129.*t173.*t213.*(9.81e+2./4.0e+2)+in8val1.*t102.*t129.*t173.*t213.*(9.81e+2./4.0e+2),in6val1.*t68.*t129.*t173.*t213.*(-9.81e+2./4.0e+2)-in5val1.*t102.*t129.*t173.*t213.*(9.81e+2./4.0e+2),in5val1.*t68.*t129.*t173.*t213.*(9.81e+2./4.0e+2)-in6val1.*t102.*t129.*t173.*t213.*(9.81e+2./4.0e+2),in8val1.*t68.*t129.*t173.*t214.*(-9.81e+2./4.0e+2)+in7val1.*t102.*t129.*t173.*t214.*(9.81e+2./4.0e+2),in7val1.*t68.*t129.*t173.*t214.*(9.81e+2./4.0e+2)+in8val1.*t102.*t129.*t173.*t214.*(9.81e+2./4.0e+2)];
    mt18 = [in6val1.*t68.*t129.*t173.*t214.*(-9.81e+2./4.0e+2)-in5val1.*t102.*t129.*t173.*t214.*(9.81e+2./4.0e+2),in5val1.*t68.*t129.*t173.*t214.*(9.81e+2./4.0e+2)-in6val1.*t102.*t129.*t173.*t214.*(9.81e+2./4.0e+2),in8val1.*t68.*t129.*t173.*t215.*(-9.81e+2./4.0e+2)+in7val1.*t102.*t129.*t173.*t215.*(9.81e+2./4.0e+2),in7val1.*t68.*t129.*t173.*t215.*(9.81e+2./4.0e+2)+in8val1.*t102.*t129.*t173.*t215.*(9.81e+2./4.0e+2),in6val1.*t68.*t129.*t173.*t215.*(-9.81e+2./4.0e+2)-in5val1.*t102.*t129.*t173.*t215.*(9.81e+2./4.0e+2),in5val1.*t68.*t129.*t173.*t215.*(9.81e+2./4.0e+2)-in6val1.*t102.*t129.*t173.*t215.*(9.81e+2./4.0e+2)];
    mt19 = [t183+t188-in8val1.*t68.*t129.*t173.*t216.*(9.81e+2./4.0e+2)+in7val1.*t102.*t129.*t173.*t216.*(9.81e+2./4.0e+2)-in8val1.*t68.*t71.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in7val1.*t71.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t58+t189+t190+in7val1.*t68.*t129.*t173.*t216.*(9.81e+2./4.0e+2)+in8val1.*t102.*t129.*t173.*t216.*(9.81e+2./4.0e+2)+in7val1.*t68.*t71.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in8val1.*t71.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t184+t185+t195-in6val1.*t68.*t129.*t173.*t216.*(9.81e+2./4.0e+2)-in5val1.*t102.*t129.*t173.*t216.*(9.81e+2./4.0e+2)-in6val1.*t68.*t71.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in5val1.*t71.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2)];
    mt20 = [t192+in5val1.*t68.*t129.*t173.*t216.*(9.81e+2./4.0e+2)-in6val1.*t102.*t129.*t173.*t216.*(9.81e+2./4.0e+2)+in5val1.*t68.*t71.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in6val1.*t71.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t66+t181+t182-in8val1.*t68.*t129.*t173.*t217.*(9.81e+2./4.0e+2)+in7val1.*t102.*t129.*t173.*t217.*(9.81e+2./4.0e+2)-in8val1.*t68.*t79.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in7val1.*t79.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t183+t188+in7val1.*t68.*t129.*t173.*t217.*(9.81e+2./4.0e+2)+in8val1.*t102.*t129.*t173.*t217.*(9.81e+2./4.0e+2)+in7val1.*t68.*t79.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in8val1.*t79.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2)];
    mt21 = [t191-in6val1.*t68.*t129.*t173.*t217.*(9.81e+2./4.0e+2)-in5val1.*t102.*t129.*t173.*t217.*(9.81e+2./4.0e+2)-in6val1.*t68.*t79.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in5val1.*t79.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),-t184-t185+t195+in5val1.*t68.*t129.*t173.*t217.*(9.81e+2./4.0e+2)-in6val1.*t102.*t129.*t173.*t217.*(9.81e+2./4.0e+2)+in5val1.*t68.*t79.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in6val1.*t79.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t186+t187+t196-in8val1.*t68.*t129.*t173.*t218.*(9.81e+2./4.0e+2)+in7val1.*t102.*t129.*t173.*t218.*(9.81e+2./4.0e+2)+in8val1.*t68.*t80.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in7val1.*t80.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2)];
    mt22 = [t192+in7val1.*t68.*t129.*t173.*t218.*(9.81e+2./4.0e+2)+in8val1.*t102.*t129.*t173.*t218.*(9.81e+2./4.0e+2)-in7val1.*t68.*t80.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in8val1.*t80.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t183+t188-in6val1.*t68.*t129.*t173.*t218.*(9.81e+2./4.0e+2)-in5val1.*t102.*t129.*t173.*t218.*(9.81e+2./4.0e+2)+in6val1.*t68.*t80.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in5val1.*t80.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t66+t189+t190+in5val1.*t68.*t129.*t173.*t218.*(9.81e+2./4.0e+2)-in6val1.*t102.*t129.*t173.*t218.*(9.81e+2./4.0e+2)-in5val1.*t68.*t80.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in6val1.*t80.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2)];
    mt23 = [t191-in8val1.*t68.*t129.*t173.*t219.*(9.81e+2./4.0e+2)+in7val1.*t102.*t129.*t173.*t219.*(9.81e+2./4.0e+2)-in8val1.*t68.*t72.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in7val1.*t72.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),-t186-t187+t196+in7val1.*t68.*t129.*t173.*t219.*(9.81e+2./4.0e+2)+in8val1.*t102.*t129.*t173.*t219.*(9.81e+2./4.0e+2)+in7val1.*t68.*t72.*t127.*t130.*t172.*(9.81e+2./2.0e+2)+in8val1.*t72.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),t58+t181+t182-in6val1.*t68.*t129.*t173.*t219.*(9.81e+2./4.0e+2)-in5val1.*t102.*t129.*t173.*t219.*(9.81e+2./4.0e+2)-in6val1.*t68.*t72.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in5val1.*t72.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2)];
    mt24 = [t183+t188+in5val1.*t68.*t129.*t173.*t219.*(9.81e+2./4.0e+2)-in6val1.*t102.*t129.*t173.*t219.*(9.81e+2./4.0e+2)+in5val1.*t68.*t72.*t127.*t130.*t172.*(9.81e+2./2.0e+2)-in6val1.*t72.*t102.*t127.*t130.*t172.*(9.81e+2./2.0e+2),in6val1.*(-1.0./2.0),in5val1./2.0,in8val1./2.0,in7val1.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
    j_out3 = reshape([mt17,mt18,mt19,mt20,mt21,mt22,mt23,mt24],4,15);
end
if nargout > 10
    j_out4 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-in15val1,0.0,0.0,0.0,0.0,-in10val1];
end
if nargout > 11
    j_out5 = [0.0,in4val1.*t2.*t101.*t124.*sign(in2val1),in4val1.*t3.*t101.*t124.*sign(in3val1),-t124.*(t100-in4val1.*t4.*t101.*sign(in4val1)),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 12
    j_out6 = [0.0,-in3val1.*t75,in2val1.*t75,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 13
    mt25 = [0.0,0.0,0.0,0.0,t102.*t129.*t173.*t213.*(-9.81e+2./2.0e+2),t68.*t129.*t173.*t213.*(9.81e+2./2.0e+2),0.0,t102.*t129.*t173.*t214.*(-9.81e+2./2.0e+2),t68.*t129.*t173.*t214.*(9.81e+2./2.0e+2),0.0,t102.*t129.*t173.*t215.*(-9.81e+2./2.0e+2),t68.*t129.*t173.*t215.*(9.81e+2./2.0e+2),0.0,t174-t102.*t129.*t173.*t216.*(9.81e+2./2.0e+2)-t71.*t102.*t127.*t130.*t172.*(9.81e+2./1.0e+2),t178+t68.*t129.*t173.*t216.*(9.81e+2./2.0e+2)+t68.*t71.*t127.*t130.*t172.*(9.81e+2./1.0e+2),0.0,t178-t102.*t129.*t173.*t217.*(9.81e+2./2.0e+2)-t79.*t102.*t127.*t130.*t172.*(9.81e+2./1.0e+2)];
    mt26 = [-t174+t68.*t129.*t173.*t217.*(9.81e+2./2.0e+2)+t68.*t79.*t127.*t130.*t172.*(9.81e+2./1.0e+2),0.0,t179-t102.*t129.*t173.*t218.*(9.81e+2./2.0e+2)+t80.*t102.*t127.*t130.*t172.*(9.81e+2./1.0e+2),-t177+t68.*t129.*t173.*t218.*(9.81e+2./2.0e+2)-t68.*t80.*t127.*t130.*t172.*(9.81e+2./1.0e+2),0.0,t177-t102.*t129.*t173.*t219.*(9.81e+2./2.0e+2)-t72.*t102.*t127.*t130.*t172.*(9.81e+2./1.0e+2),t179+t68.*t129.*t173.*t219.*(9.81e+2./2.0e+2)+t68.*t72.*t127.*t130.*t172.*(9.81e+2./1.0e+2),1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
    j_out7 = reshape([mt25,mt26],3,15);
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

end  % sys_384d00f76cdee9982b02f8b3880132c6_jac
