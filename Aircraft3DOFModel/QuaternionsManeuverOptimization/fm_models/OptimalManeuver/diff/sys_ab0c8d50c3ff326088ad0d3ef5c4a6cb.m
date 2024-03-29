function [out1,out2,out3,out4,out5,out6,out7,j_out1,j_out2,j_out3,j_out4,j_out5,j_out6,j_out7,h_out1,h_out2,h_out3,h_out4,h_out5,h_out6,h_out7] = sys_ab0c8d50c3ff326088ad0d3ef5c4a6cb(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1,in7val1,in8val1,in9val1,in10val1,in11val1,in12val1,in13val1,in14val1,in15val1)
%SYS_AB0C8D50C3FF326088AD0D3EF5C4A6CB
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,J_OUT1,J_OUT2,J_OUT3,J_OUT4,J_OUT5,J_OUT6,J_OUT7,H_OUT1,H_OUT2,H_OUT3,H_OUT4,H_OUT5,H_OUT6,H_OUT7] = SYS_AB0C8D50C3FF326088AD0D3EF5C4A6CB(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1,IN7VAL1,IN8VAL1,IN9VAL1,IN10VAL1,IN11VAL1,IN12VAL1,IN13VAL1,IN14VAL1,IN15VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    05-Jun-2022 19:45:34

t2 = abs(in2val1);
t3 = abs(in3val1);
t4 = abs(in4val1);
t5 = cos(in14val1);
t6 = sin(in14val1);
t7 = in2val1.^2;
t8 = in3val1.^2;
t9 = in4val1.^2;
t10 = in5val1.^2;
t11 = in6val1.^2;
t12 = in7val1.^2;
t13 = in8val1.^2;
t17 = in2val1.*in5val1.*2.0;
t18 = in2val1.*in6val1.*2.0;
t19 = in3val1.*in5val1.*2.0;
t20 = in2val1.*in7val1.*2.0;
t21 = in3val1.*in6val1.*2.0;
t22 = in4val1.*in5val1.*2.0;
t23 = in2val1.*in8val1.*2.0;
t24 = in3val1.*in7val1.*2.0;
t25 = in4val1.*in6val1.*2.0;
t26 = in3val1.*in8val1.*2.0;
t27 = in4val1.*in7val1.*2.0;
t28 = in5val1.*in6val1.*2.0;
t29 = in4val1.*in8val1.*2.0;
t30 = in5val1.*in7val1.*2.0;
t31 = in5val1.*in8val1.*2.0;
t32 = in6val1.*in7val1.*2.0;
t33 = in6val1.*in8val1.*2.0;
t34 = in7val1.*in8val1.*2.0;
t35 = in5val1.*in13val1.*2.0;
t36 = in6val1.*in13val1.*2.0;
t37 = in7val1.*in13val1.*2.0;
t38 = in8val1.*in13val1.*2.0;
t41 = 1.0./in13val1;
t57 = in5val1.*in6val1.*(9.81e+2./5.0e+1);
t58 = in7val1.*in8val1.*(9.81e+2./5.0e+1);
t71 = in1val1.*2.255769564462953e-5;
t14 = t2.^2;
t15 = t3.^2;
t16 = t4.^2;
t39 = in10val1.*t5;
t40 = in10val1.*t6;
t42 = t41.^2;
t43 = -t21;
t44 = -t23;
t45 = -t27;
t46 = -t32;
t47 = -t33;
t48 = -t34;
t49 = -t11;
t50 = -t12;
t51 = -t13;
t53 = t7+t8;
t54 = t28+t34;
t55 = t30+t33;
t56 = t31+t32;
t73 = t18+t24+t29;
t74 = t71+1.0;
t93 = t57+t58;
t52 = -t39;
t59 = 1.0./t53;
t60 = t28+t48;
t61 = t30+t47;
t62 = t31+t46;
t63 = t54.^2;
t64 = in2val1.*t55;
t65 = in3val1.*t56;
t66 = in4val1.*t54;
t72 = t14+t15+t16;
t78 = t20+t22+t43;
t79 = t19+t25+t44;
t80 = t17+t26+t45;
t84 = t10+t13+t49+t50;
t85 = t10+t12+t49+t51;
t86 = t10+t11+t50+t51;
t98 = in5val1.*t93.*2.0;
t99 = in6val1.*t93.*2.0;
t100 = in7val1.*t93.*2.0;
t101 = in8val1.*t93.*2.0;
t103 = t74.^3.258643795229161;
t104 = t74.^4.258643795229161;
t108 = (t55.*t93)./2.0;
t109 = (t56.*t93)./2.0;
t110 = t73.*t93;
t67 = in2val1.*t62;
t68 = in3val1.*t60;
t69 = in4val1.*t61;
t70 = in13val1.*t61;
t81 = 1.0./t72;
t82 = 1.0./sqrt(t72);
t88 = in2val1.*t86;
t89 = in3val1.*t85;
t90 = in4val1.*t84;
t91 = in13val1.*t84;
t92 = t84.^2;
t95 = 1.0./t84;
t105 = -t101;
t111 = (t60.*t93)./2.0;
t112 = (t61.*t93)./2.0;
t113 = t78.*t93;
t114 = t79.*t93;
t115 = t80.*t93;
t120 = t110./2.0;
t126 = (t84.*t93)./2.0;
t127 = (t86.*t93)./2.0;
t75 = -t67;
t76 = -t68;
t77 = -t69;
t83 = t82.^3;
t87 = t9.*t81;
t96 = 1.0./t92;
t97 = -t91;
t107 = t63+t92;
t117 = -t111;
t118 = -t112;
t119 = -t113;
t121 = t113./2.0;
t122 = t114./2.0;
t123 = t115./2.0;
t94 = -t87;
t116 = 1.0./t107;
t124 = -t121;
t125 = -t122;
t128 = t65+t77+t88;
t129 = t66+t75+t89;
t130 = t64+t76+t90;
t102 = t94+1.0;
t131 = abs(t128);
t132 = abs(t129);
t133 = abs(t130);
t134 = sign(t128);
t135 = sign(t129);
t136 = sign(t130);
t140 = in5val1.*t128.*(9.81e+2./1.0e+2);
t141 = in5val1.*t130.*(9.81e+2./1.0e+2);
t142 = in6val1.*t128.*(9.81e+2./1.0e+2);
t143 = in6val1.*t130.*(9.81e+2./1.0e+2);
t144 = in7val1.*t128.*(9.81e+2./1.0e+2);
t145 = in7val1.*t130.*(9.81e+2./1.0e+2);
t146 = in8val1.*t128.*(9.81e+2./1.0e+2);
t147 = in8val1.*t130.*(9.81e+2./1.0e+2);
t148 = t5.*t41.*t130.*(9.81e+2./2.0e+2);
t149 = t6.*t41.*t128.*(9.81e+2./2.0e+2);
t150 = t39.*t41.*t128.*(9.81e+2./2.0e+2);
t151 = t40.*t41.*t130.*(9.81e+2./2.0e+2);
t153 = t41.*t61.*t129.*(9.81e+2./2.0e+2);
t154 = t41.*t61.*t130.*(9.81e+2./2.0e+2);
t156 = (t93.*t128)./2.0;
t157 = (t93.*t130)./2.0;
t160 = t41.*t84.*t128.*(9.81e+2./2.0e+2);
t161 = t41.*t84.*t129.*(9.81e+2./2.0e+2);
t106 = 1.0./sqrt(t102);
t137 = t131.^2;
t138 = t132.^2;
t139 = t133.^2;
t152 = -t151;
t155 = -t153;
t158 = -t156;
t159 = -t157;
t162 = t56.*t131.*t134.*2.0;
t163 = t54.*t132.*t135.*2.0;
t164 = t55.*t133.*t136.*2.0;
t165 = t61.*t131.*t134.*2.0;
t166 = t62.*t132.*t135.*2.0;
t167 = t60.*t133.*t136.*2.0;
t171 = t73.*t131.*t134.*2.0;
t172 = t73.*t132.*t135.*2.0;
t173 = t73.*t133.*t136.*2.0;
t174 = t78.*t131.*t134.*2.0;
t175 = t78.*t132.*t135.*2.0;
t176 = t78.*t133.*t136.*2.0;
t177 = t79.*t131.*t134.*2.0;
t178 = t79.*t132.*t135.*2.0;
t179 = t79.*t133.*t136.*2.0;
t180 = t80.*t131.*t134.*2.0;
t181 = t80.*t132.*t135.*2.0;
t182 = t80.*t133.*t136.*2.0;
t186 = t86.*t131.*t134.*2.0;
t187 = t85.*t132.*t135.*2.0;
t188 = t84.*t133.*t136.*2.0;
t189 = t148+t149;
t168 = -t165;
t169 = -t166;
t170 = -t167;
t183 = -t174;
t184 = -t179;
t185 = -t181;
t190 = t150+t152;
t191 = t137+t138+t139;
t271 = t176+t178+t180;
t192 = in11val1.*t104.*t191.*1.707407859219665e+1;
t193 = in12val1.*t104.*t191.*1.707407859219665e+1;
t233 = t41.*t104.*t129.*t191.*1.674967109894491e+2;
t234 = in5val1.*t41.*t104.*t129.*t191.*8.374835549472455e+1;
t235 = in6val1.*t41.*t104.*t129.*t191.*8.374835549472455e+1;
t236 = in7val1.*t41.*t104.*t129.*t191.*8.374835549472455e+1;
t237 = in8val1.*t41.*t104.*t129.*t191.*8.374835549472455e+1;
t252 = in11val1.*t41.*t103.*t130.*t191.*8.0453017323396e-3;
t253 = in12val1.*t41.*t103.*t128.*t191.*8.0453017323396e-3;
t268 = t164+t169+t186;
t269 = t162+t170+t187;
t270 = t163+t168+t188;
t272 = t171+t175+t184;
t273 = t172+t182+t183;
t274 = t173+t177+t185;
t279 = in11val1.*t104.*t271.*1.707407859219665e+1;
t281 = in12val1.*t104.*t271.*1.707407859219665e+1;
t194 = t52+t70+t192;
t195 = t40+t97+t193;
out1 = [-t62.*t93-t41.*t55.*t195.*(9.81e+2./1.0e+2)-t41.*t86.*t194.*(9.81e+2./1.0e+2);t85.*t93-t41.*t56.*t194.*(9.81e+2./1.0e+2)+t41.*t60.*t195.*(9.81e+2./1.0e+2);t54.*t93+t41.*t61.*t194.*(9.81e+2./1.0e+2)-t41.*t84.*t195.*(9.81e+2./1.0e+2)];
if nargout > 1
    out2 = atan2(in5val1.*in6val1.*2.0+in7val1.*in8val1.*2.0,t84);
end
if nargout > 2
    t240 = -t237;
    t254 = -t253;
    t280 = in11val1.*t104.*t272.*1.707407859219665e+1;
    t282 = in11val1.*t104.*t273.*1.707407859219665e+1;
    t283 = in12val1.*t104.*t272.*1.707407859219665e+1;
    t284 = in11val1.*t104.*t274.*1.707407859219665e+1;
    t285 = in12val1.*t104.*t273.*1.707407859219665e+1;
    t286 = in12val1.*t104.*t274.*1.707407859219665e+1;
    t288 = -t281;
    t292 = t37+t279;
    t299 = in11val1.*t41.*t104.*t129.*t268.*8.374835549472455e+1;
    t300 = in11val1.*t41.*t104.*t129.*t269.*8.374835549472455e+1;
    t301 = in11val1.*t41.*t104.*t129.*t270.*8.374835549472455e+1;
    t302 = in11val1.*t41.*t104.*t130.*t268.*8.374835549472455e+1;
    t303 = in11val1.*t41.*t104.*t130.*t269.*8.374835549472455e+1;
    t304 = in11val1.*t41.*t104.*t130.*t270.*8.374835549472455e+1;
    t305 = in12val1.*t41.*t104.*t128.*t268.*8.374835549472455e+1;
    t306 = in12val1.*t41.*t104.*t128.*t269.*8.374835549472455e+1;
    t307 = in12val1.*t41.*t104.*t128.*t270.*8.374835549472455e+1;
    t308 = in12val1.*t41.*t104.*t129.*t268.*8.374835549472455e+1;
    t309 = in12val1.*t41.*t104.*t129.*t269.*8.374835549472455e+1;
    t310 = in12val1.*t41.*t104.*t129.*t270.*8.374835549472455e+1;
    t196 = in5val1.*t41.*t194.*(9.81e+2./5.0e+1);
    t197 = in6val1.*t41.*t194.*(9.81e+2./5.0e+1);
    t198 = in7val1.*t41.*t194.*(9.81e+2./5.0e+1);
    t199 = in8val1.*t41.*t194.*(9.81e+2./5.0e+1);
    t203 = t41.*t54.*t194.*(9.81e+2./2.0e+2);
    t204 = t41.*t55.*t194.*(9.81e+2./2.0e+2);
    t205 = in5val1.*t41.*t195.*(9.81e+2./5.0e+1);
    t206 = in6val1.*t41.*t195.*(9.81e+2./5.0e+1);
    t207 = in7val1.*t41.*t195.*(9.81e+2./5.0e+1);
    t208 = in8val1.*t41.*t195.*(9.81e+2./5.0e+1);
    t209 = t41.*t60.*t194.*(9.81e+2./2.0e+2);
    t210 = t41.*t62.*t194.*(9.81e+2./2.0e+2);
    t215 = t41.*t73.*t194.*(9.81e+2./1.0e+2);
    t216 = t41.*t73.*t194.*(9.81e+2./2.0e+2);
    t217 = t41.*t78.*t194.*(9.81e+2./1.0e+2);
    t218 = t41.*t79.*t194.*(9.81e+2./1.0e+2);
    t219 = t41.*t80.*t194.*(9.81e+2./1.0e+2);
    t220 = t41.*t78.*t194.*(9.81e+2./2.0e+2);
    t221 = t41.*t79.*t194.*(9.81e+2./2.0e+2);
    t222 = t41.*t80.*t194.*(9.81e+2./2.0e+2);
    t226 = t41.*t54.*t195.*(9.81e+2./2.0e+2);
    t227 = t41.*t56.*t195.*(9.81e+2./2.0e+2);
    t228 = t41.*t84.*t194.*(9.81e+2./2.0e+2);
    t229 = t41.*t85.*t194.*(9.81e+2./2.0e+2);
    t230 = t41.*t61.*t195.*(9.81e+2./2.0e+2);
    t231 = t41.*t62.*t195.*(9.81e+2./2.0e+2);
    t238 = t41.*t73.*t195.*(9.81e+2./1.0e+2);
    t239 = t41.*t73.*t195.*(9.81e+2./2.0e+2);
    t241 = t41.*t78.*t195.*(9.81e+2./1.0e+2);
    t242 = t41.*t79.*t195.*(9.81e+2./1.0e+2);
    t243 = t41.*t80.*t195.*(9.81e+2./1.0e+2);
    t244 = t41.*t78.*t195.*(9.81e+2./2.0e+2);
    t245 = t41.*t79.*t195.*(9.81e+2./2.0e+2);
    t246 = t41.*t80.*t195.*(9.81e+2./2.0e+2);
    t249 = t41.*t85.*t195.*(9.81e+2./2.0e+2);
    t250 = t41.*t86.*t195.*(9.81e+2./2.0e+2);
    t255 = t41.*t129.*t194.*(9.81e+2./2.0e+2);
    t256 = t41.*t130.*t194.*(9.81e+2./2.0e+2);
    t257 = t42.*t129.*t194.*(9.81e+2./2.0e+2);
    t258 = t42.*t130.*t194.*(9.81e+2./2.0e+2);
    t262 = t41.*t128.*t195.*(9.81e+2./2.0e+2);
    t263 = t41.*t129.*t195.*(9.81e+2./2.0e+2);
    t264 = t42.*t128.*t195.*(9.81e+2./2.0e+2);
    t265 = t42.*t129.*t195.*(9.81e+2./2.0e+2);
    t287 = -t280;
    t289 = -t284;
    t290 = -t286;
    t291 = t35+t282;
    t293 = t36+t283;
    t294 = t37+t285;
    t295 = t35+t288;
    t311 = -t303;
    t312 = -t305;
    t313 = -t307;
    t316 = t41.*t129.*t292.*(9.81e+2./2.0e+2);
    t317 = t41.*t130.*t292.*(9.81e+2./2.0e+2);
    t336 = t252+t254;
    t200 = -t196;
    t201 = -t197;
    t202 = -t199;
    t211 = -t205;
    t212 = -t207;
    t213 = -t208;
    t214 = -t210;
    t223 = -t216;
    t224 = -t219;
    t225 = -t222;
    t232 = -t231;
    t247 = -t241;
    t248 = -t246;
    t251 = -t250;
    t259 = -t255;
    t260 = -t256;
    t261 = -t258;
    t266 = -t262;
    t267 = -t263;
    t275 = t155+t257;
    t276 = t156+t255;
    t277 = t157+t263;
    t278 = t161+t265;
    t296 = t36+t289;
    t297 = t38+t287;
    t298 = t38+t290;
    t314 = t41.*t129.*t291.*(9.81e+2./2.0e+2);
    t315 = t41.*t130.*t291.*(9.81e+2./2.0e+2);
    t318 = t41.*t128.*t293.*(9.81e+2./2.0e+2);
    t319 = t41.*t129.*t293.*(9.81e+2./2.0e+2);
    t320 = t41.*t128.*t294.*(9.81e+2./2.0e+2);
    t321 = t41.*t129.*t294.*(9.81e+2./2.0e+2);
    t322 = t41.*t128.*t295.*(9.81e+2./2.0e+2);
    t323 = t41.*t129.*t295.*(9.81e+2./2.0e+2);
    t338 = t118+t203+t301;
    t340 = t109+t229+t300;
    t343 = t126+t226+t310;
    t344 = t117+t249+t309;
    t345 = t123+t142+t221+t316;
    t353 = t209+t227+t306+t311;
    t355 = t228+t230+t304+t313;
    t324 = t41.*t129.*t296.*(9.81e+2./2.0e+2);
    t325 = t41.*t130.*t296.*(9.81e+2./2.0e+2);
    t326 = t41.*t129.*t297.*(9.81e+2./2.0e+2);
    t327 = t41.*t130.*t297.*(9.81e+2./2.0e+2);
    t328 = -t320;
    t329 = t41.*t128.*t298.*(9.81e+2./2.0e+2);
    t330 = t41.*t129.*t298.*(9.81e+2./2.0e+2);
    t331 = -t323;
    t337 = t256+t266;
    out3 = [in6val1.*t277-in8val1.*t276+in7val1.*t337;-in5val1.*t277+in7val1.*t276+in8val1.*t337;-in6val1.*t276-in8val1.*t277-in5val1.*t337;in5val1.*t276+in7val1.*t277-in6val1.*t337];
end
if nargout > 3
    out4 = -in10val1.*in15val1;
end
if nargout > 4
    out5 = -asin(in4val1.*t82);
end
if nargout > 5
    out6 = atan2(in3val1,in2val1);
end
if nargout > 6
    out7 = [-t93.*t130-t41.*t129.*t195.*(9.81e+2./1.0e+2);t41.*t128.*t195.*(9.81e+2./1.0e+2)-t41.*t130.*t194.*(9.81e+2./1.0e+2);t93.*t128+t41.*t129.*t194.*(9.81e+2./1.0e+2)];
end
if nargout > 7
    mt1 = [in12val1.*t41.*t55.*t103.*t191.*(-1.60906034646792e-2)-in11val1.*t41.*t86.*t103.*t191.*1.60906034646792e-2];
    mt2 = [in11val1.*t41.*t56.*t103.*t191.*(-1.60906034646792e-2)+in12val1.*t41.*t60.*t103.*t191.*1.60906034646792e-2];
    mt3 = [in11val1.*t41.*t61.*t103.*t191.*1.60906034646792e-2-in12val1.*t41.*t84.*t103.*t191.*1.60906034646792e-2];
    mt4 = [in12val1.*t41.*t55.*t104.*t268.*(-1.674967109894491e+2)-in11val1.*t41.*t86.*t104.*t268.*1.674967109894491e+2,in11val1.*t41.*t56.*t104.*t268.*(-1.674967109894491e+2)+in12val1.*t41.*t60.*t104.*t268.*1.674967109894491e+2];
    mt5 = [in11val1.*t41.*t61.*t104.*t268.*1.674967109894491e+2-in12val1.*t41.*t84.*t104.*t268.*1.674967109894491e+2,in12val1.*t41.*t55.*t104.*t269.*(-1.674967109894491e+2)-in11val1.*t41.*t86.*t104.*t269.*1.674967109894491e+2];
    mt6 = [in11val1.*t41.*t56.*t104.*t269.*(-1.674967109894491e+2)+in12val1.*t41.*t60.*t104.*t269.*1.674967109894491e+2,in11val1.*t41.*t61.*t104.*t269.*1.674967109894491e+2-in12val1.*t41.*t84.*t104.*t269.*1.674967109894491e+2];
    mt7 = [in12val1.*t41.*t55.*t104.*t270.*(-1.674967109894491e+2)-in11val1.*t41.*t86.*t104.*t270.*1.674967109894491e+2,in11val1.*t41.*t56.*t104.*t270.*(-1.674967109894491e+2)+in12val1.*t41.*t60.*t104.*t270.*1.674967109894491e+2];
    mt8 = [in11val1.*t41.*t61.*t104.*t270.*1.674967109894491e+2-in12val1.*t41.*t84.*t104.*t270.*1.674967109894491e+2,t105+t200+t212-in6val1.*t62.*(9.81e+2./5.0e+1)+t41.*t55.*t295.*(9.81e+2./1.0e+2)-t41.*t86.*t292.*(9.81e+2./1.0e+2),t98+t202+t206+in6val1.*t85.*(9.81e+2./5.0e+1)-t41.*t56.*t292.*(9.81e+2./1.0e+2)-t41.*t60.*t295.*(9.81e+2./1.0e+2)];
    mt9 = [t99+t198+t211+in6val1.*t54.*(9.81e+2./5.0e+1)+t41.*t61.*t292.*(9.81e+2./1.0e+2)+t41.*t84.*t295.*(9.81e+2./1.0e+2),t100+t201+t213-in5val1.*t62.*(9.81e+2./5.0e+1)-t41.*t55.*t293.*(9.81e+2./1.0e+2)+t41.*t86.*t297.*(9.81e+2./1.0e+2),-t99-t198+t205+in5val1.*t85.*(9.81e+2./5.0e+1)+t41.*t56.*t297.*(9.81e+2./1.0e+2)+t41.*t60.*t293.*(9.81e+2./1.0e+2),t98+t202+t206+in5val1.*t54.*(9.81e+2./5.0e+1)-t41.*t61.*t297.*(9.81e+2./1.0e+2)-t41.*t84.*t293.*(9.81e+2./1.0e+2)];
    mt10 = [t99+t198+t211-in8val1.*t62.*(9.81e+2./5.0e+1)-t41.*t55.*t294.*(9.81e+2./1.0e+2)-t41.*t86.*t291.*(9.81e+2./1.0e+2),t100+t201+t213+in8val1.*t85.*(9.81e+2./5.0e+1)-t41.*t56.*t291.*(9.81e+2./1.0e+2)+t41.*t60.*t294.*(9.81e+2./1.0e+2),t101+t196+t207+in8val1.*t54.*(9.81e+2./5.0e+1)+t41.*t61.*t291.*(9.81e+2./1.0e+2)-t41.*t84.*t294.*(9.81e+2./1.0e+2),-t98+t199-t206-in7val1.*t62.*(9.81e+2./5.0e+1)+t41.*t55.*t298.*(9.81e+2./1.0e+2)+t41.*t86.*t296.*(9.81e+2./1.0e+2)];
    mt11 = [t105+t200+t212+in7val1.*t85.*(9.81e+2./5.0e+1)+t41.*t56.*t296.*(9.81e+2./1.0e+2)-t41.*t60.*t298.*(9.81e+2./1.0e+2),t100+t201+t213+in7val1.*t54.*(9.81e+2./5.0e+1)-t41.*t61.*t296.*(9.81e+2./1.0e+2)+t41.*t84.*t298.*(9.81e+2./1.0e+2),0.0,0.0,0.0,t6.*t41.*t55.*(-9.81e+2./1.0e+2)+t5.*t41.*t86.*(9.81e+2./1.0e+2),t5.*t41.*t56.*(9.81e+2./1.0e+2)+t6.*t41.*t60.*(9.81e+2./1.0e+2),t5.*t41.*t61.*(-9.81e+2./1.0e+2)-t6.*t41.*t84.*(9.81e+2./1.0e+2)];
    mt12 = [t41.*t86.*t104.*t191.*(-1.674967109894491e+2),t41.*t56.*t104.*t191.*(-1.674967109894491e+2),t41.*t61.*t104.*t191.*1.674967109894491e+2,t41.*t55.*t104.*t191.*(-1.674967109894491e+2)];
    mt13 = [t41.*t60.*t104.*t191.*1.674967109894491e+2,t41.*t84.*t104.*t191.*(-1.674967109894491e+2),t41.*t55.*t84.*(9.81e+2./1.0e+2)-t41.*t61.*t86.*(9.81e+2./1.0e+2)+t42.*t55.*t195.*(9.81e+2./1.0e+2)+t42.*t86.*t194.*(9.81e+2./1.0e+2),t41.*t56.*t61.*(-9.81e+2./1.0e+2)-t41.*t60.*t84.*(9.81e+2./1.0e+2)+t42.*t56.*t194.*(9.81e+2./1.0e+2)-t42.*t60.*t195.*(9.81e+2./1.0e+2)];
    mt14 = [t41.*t92.*(9.81e+2./1.0e+2)+t41.*t61.^2.*(9.81e+2./1.0e+2)-t42.*t61.*t194.*(9.81e+2./1.0e+2)+t42.*t84.*t195.*(9.81e+2./1.0e+2),t39.*t41.*t55.*(-9.81e+2./1.0e+2)-t40.*t41.*t86.*(9.81e+2./1.0e+2),t40.*t41.*t56.*(-9.81e+2./1.0e+2)+t39.*t41.*t60.*(9.81e+2./1.0e+2),t40.*t41.*t61.*(9.81e+2./1.0e+2)-t39.*t41.*t84.*(9.81e+2./1.0e+2),0.0,0.0,0.0];
    j_out1 = reshape([mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9,mt10,mt11,mt12,mt13,mt14],3,15);
end
if nargout > 8
    j_out2 = [0.0,0.0,0.0,0.0,t92.*t116.*(in6val1.*t95.*2.0-in5val1.*t54.*t96.*2.0),t92.*t116.*(in5val1.*t95.*2.0+in6val1.*t54.*t96.*2.0),t92.*t116.*(in8val1.*t95.*2.0+in7val1.*t54.*t96.*2.0),t92.*t116.*(in7val1.*t95.*2.0-in8val1.*t54.*t96.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 9
    t339 = t154+t160+t261+t264;
    t341 = t108+t232+t308;
    t342 = t127+t214+t299;
    t346 = t124+t146+t216+t314;
    t349 = t123+t147+t239+t321;
    t350 = t125+t141+t244+t319;
    t354 = t204+t251+t302+t312;
    t358 = t220+t248+t317+t322;
    t332 = -t324;
    t333 = -t326;
    t334 = -t329;
    t335 = -t330;
    t351 = t121+t143+t245+t331;
    t356 = t221+t239+t318+t327;
    t357 = t222+t244+t315+t328;
    t347 = t120+t140+t220+t333;
    t348 = t122+t144+t225+t332;
    t352 = t120+t145+t248+t335;
    mt15 = [in7val1.*t336+in6val1.*in12val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3-in8val1.*in11val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3];
    mt16 = [in8val1.*t336-in5val1.*in12val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3+in7val1.*in11val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3];
    mt17 = [-in5val1.*t336-in6val1.*in11val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3-in8val1.*in12val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3];
    mt18 = [-in6val1.*t336+in5val1.*in11val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3+in7val1.*in12val1.*t41.*t103.*t129.*t191.*8.0453017323396e-3,in6val1.*t341-in8val1.*t342+in7val1.*t354,-in5val1.*t341+in7val1.*t342+in8val1.*t354,-in6val1.*t342-in5val1.*t354-in8val1.*t341,in5val1.*t342+in7val1.*t341-in6val1.*t354,in6val1.*t344-in8val1.*t340-in7val1.*t353];
    mt19 = [-in5val1.*t344+in7val1.*t340-in8val1.*t353,-in6val1.*t340+in5val1.*t353-in8val1.*t344,in5val1.*t340+in6val1.*t353+in7val1.*t344,in6val1.*t343-in8val1.*t338+in7val1.*t355,-in5val1.*t343+in7val1.*t338+in8val1.*t355,-in6val1.*t338-in5val1.*t355-in8val1.*t343,in5val1.*t338+in7val1.*t343-in6val1.*t355,in6val1.*t351-in8val1.*t345+in7val1.*t358,t159+t267-in5val1.*t351+in7val1.*t345+in8val1.*t358,t260+t262-in6val1.*t345-in5val1.*t358-in8val1.*t351,t276+in5val1.*t345-in6val1.*t358+in7val1.*t351,t277+in6val1.*t350-in7val1.*t356-in8val1.*t347,-in5val1.*t350+in7val1.*t347-in8val1.*t356,t158+t259+in5val1.*t356-in6val1.*t347-in8val1.*t350];
    mt20 = [t260+t262+in5val1.*t347+in6val1.*t356+in7val1.*t350,t337+in6val1.*t349-in8val1.*t346+in7val1.*t357,t276-in5val1.*t349+in7val1.*t346+in8val1.*t357,-in6val1.*t346-in5val1.*t357-in8val1.*t349,t277+in5val1.*t346-in6val1.*t357+in7val1.*t349,t158+t259+in6val1.*t352-in8val1.*t348+in7val1.*(t216-t245-t325+t329),t337-in5val1.*t352+in7val1.*t348+in8val1.*(t216-t245-t325+t329),t159+t267-in6val1.*t348-in8val1.*t352-in5val1.*(t216-t245-t325+t329),in5val1.*t348+in7val1.*t352-in6val1.*(t216-t245-t325+t329),0.0,0.0,0.0,0.0,-in7val1.*t189+in6val1.*t6.*t41.*t129.*(9.81e+2./2.0e+2)+in8val1.*t5.*t41.*t129.*(9.81e+2./2.0e+2)];
    mt21 = [-in8val1.*t189-in5val1.*t6.*t41.*t129.*(9.81e+2./2.0e+2)-in7val1.*t5.*t41.*t129.*(9.81e+2./2.0e+2),in5val1.*t189+in6val1.*t5.*t41.*t129.*(9.81e+2./2.0e+2)-in8val1.*t6.*t41.*t129.*(9.81e+2./2.0e+2),in6val1.*t189-in5val1.*t5.*t41.*t129.*(9.81e+2./2.0e+2)+in7val1.*t6.*t41.*t129.*(9.81e+2./2.0e+2),t240+in7val1.*t41.*t104.*t130.*t191.*8.374835549472455e+1,t236+in8val1.*t41.*t104.*t130.*t191.*8.374835549472455e+1];
    mt22 = [-t235-in5val1.*t41.*t104.*t130.*t191.*8.374835549472455e+1,t234-in6val1.*t41.*t104.*t130.*t191.*8.374835549472455e+1,t235-in7val1.*t41.*t104.*t128.*t191.*8.374835549472455e+1];
    mt23 = [-t234-in8val1.*t41.*t104.*t128.*t191.*8.374835549472455e+1,t240+in5val1.*t41.*t104.*t128.*t191.*8.374835549472455e+1,t236+in6val1.*t41.*t104.*t128.*t191.*8.374835549472455e+1,-in6val1.*t278+in7val1.*t339-in8val1.*(t153-t257),in5val1.*t278+in8val1.*t339+in7val1.*(t153-t257)];
    mt24 = [in8val1.*t278-in5val1.*t339-in6val1.*(t153-t257),-in7val1.*t278-in6val1.*t339+in5val1.*(t153-t257),-in7val1.*t190+in6val1.*t39.*t41.*t129.*(9.81e+2./2.0e+2)-in8val1.*t40.*t41.*t129.*(9.81e+2./2.0e+2),-in8val1.*t190-in5val1.*t39.*t41.*t129.*(9.81e+2./2.0e+2)+in7val1.*t40.*t41.*t129.*(9.81e+2./2.0e+2),in5val1.*t190-in6val1.*t40.*t41.*t129.*(9.81e+2./2.0e+2)-in8val1.*t39.*t41.*t129.*(9.81e+2./2.0e+2),in6val1.*t190+in5val1.*t40.*t41.*t129.*(9.81e+2./2.0e+2)+in7val1.*t39.*t41.*t129.*(9.81e+2./2.0e+2),0.0,0.0,0.0,0.0];
    j_out3 = reshape([mt15,mt16,mt17,mt18,mt19,mt20,mt21,mt22,mt23,mt24],4,15);
end
if nargout > 10
    j_out4 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-in15val1,0.0,0.0,0.0,0.0,-in10val1];
end
if nargout > 11
    j_out5 = [0.0,in4val1.*t2.*t83.*t106.*sign(in2val1),in4val1.*t3.*t83.*t106.*sign(in3val1),-t106.*(t82-in4val1.*t4.*t83.*sign(in4val1)),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 12
    j_out6 = [0.0,-in3val1.*t59,in2val1.*t59,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 13
    mt25 = [in12val1.*t41.*t103.*t129.*t191.*(-1.60906034646792e-2),in11val1.*t41.*t103.*t130.*t191.*(-1.60906034646792e-2)+in12val1.*t41.*t103.*t128.*t191.*1.60906034646792e-2];
    mt26 = [in11val1.*t41.*t103.*t129.*t191.*1.60906034646792e-2,-t55.*t93+t41.*t62.*t195.*(9.81e+2./1.0e+2)-in12val1.*t41.*t104.*t129.*t268.*1.674967109894491e+2];
    mt27 = [t41.*t55.*t194.*(-9.81e+2./1.0e+2)+t41.*t86.*t195.*(9.81e+2./1.0e+2)-in11val1.*t41.*t104.*t130.*t268.*1.674967109894491e+2+in12val1.*t41.*t104.*t128.*t268.*1.674967109894491e+2,t86.*t93-t41.*t62.*t194.*(9.81e+2./1.0e+2)+in11val1.*t41.*t104.*t129.*t268.*1.674967109894491e+2];
    mt28 = [t60.*t93-t41.*t85.*t195.*(9.81e+2./1.0e+2)-in12val1.*t41.*t104.*t129.*t269.*1.674967109894491e+2,t41.*t56.*t195.*(9.81e+2./1.0e+2)+t41.*t60.*t194.*(9.81e+2./1.0e+2)-in11val1.*t41.*t104.*t130.*t269.*1.674967109894491e+2+in12val1.*t41.*t104.*t128.*t269.*1.674967109894491e+2];
    mt29 = [t56.*t93+t41.*t85.*t194.*(9.81e+2./1.0e+2)+in11val1.*t41.*t104.*t129.*t269.*1.674967109894491e+2,-t84.*t93-t41.*t54.*t195.*(9.81e+2./1.0e+2)-in12val1.*t41.*t104.*t129.*t270.*1.674967109894491e+2];
    mt30 = [t41.*t61.*t195.*(-9.81e+2./1.0e+2)-t41.*t84.*t194.*(9.81e+2./1.0e+2)-in11val1.*t41.*t104.*t130.*t270.*1.674967109894491e+2+in12val1.*t41.*t104.*t128.*t270.*1.674967109894491e+2,-t61.*t93+t41.*t54.*t194.*(9.81e+2./1.0e+2)+in11val1.*t41.*t104.*t129.*t270.*1.674967109894491e+2];
    mt31 = [t119-t242-in6val1.*t130.*(9.81e+2./5.0e+1)+t41.*t129.*t295.*(9.81e+2./1.0e+2),-t217+t243-t41.*t130.*t292.*(9.81e+2./1.0e+2)-t41.*t128.*t295.*(9.81e+2./1.0e+2),t115+t218+in6val1.*t128.*(9.81e+2./5.0e+1)+t41.*t129.*t292.*(9.81e+2./1.0e+2),t114+t247-in5val1.*t130.*(9.81e+2./5.0e+1)-t41.*t129.*t293.*(9.81e+2./1.0e+2),t218+t238+t41.*t128.*t293.*(9.81e+2./1.0e+2)+t41.*t130.*t297.*(9.81e+2./1.0e+2),t110+t217+in5val1.*t128.*(9.81e+2./5.0e+1)-t41.*t129.*t297.*(9.81e+2./1.0e+2),-t115-t238-in8val1.*t130.*(9.81e+2./5.0e+1)-t41.*t129.*t294.*(9.81e+2./1.0e+2)];
    mt32 = [t224+t247-t41.*t130.*t291.*(9.81e+2./1.0e+2)+t41.*t128.*t294.*(9.81e+2./1.0e+2),t119+t215+in8val1.*t128.*(9.81e+2./5.0e+1)+t41.*t129.*t291.*(9.81e+2./1.0e+2),-t110+t243-in7val1.*t130.*(9.81e+2./5.0e+1)+t41.*t129.*t298.*(9.81e+2./1.0e+2),-t215+t242-t41.*t128.*t298.*(9.81e+2./1.0e+2)+t41.*t130.*t296.*(9.81e+2./1.0e+2),t114+t224+in7val1.*t128.*(9.81e+2./5.0e+1)-t41.*t129.*t296.*(9.81e+2./1.0e+2),0.0,0.0,0.0,t6.*t41.*t129.*(-9.81e+2./1.0e+2),t6.*t41.*t128.*(9.81e+2./1.0e+2)+t5.*t41.*t130.*(9.81e+2./1.0e+2),t5.*t41.*t129.*(-9.81e+2./1.0e+2),0.0];
    mt33 = [t41.*t104.*t130.*t191.*(-1.674967109894491e+2),t233,-t233,t41.*t104.*t128.*t191.*1.674967109894491e+2,0.0,t41.*t84.*t129.*(9.81e+2./1.0e+2)+t42.*t129.*t195.*(9.81e+2./1.0e+2),t41.*t61.*t130.*(-9.81e+2./1.0e+2)-t41.*t84.*t128.*(9.81e+2./1.0e+2)-t42.*t128.*t195.*(9.81e+2./1.0e+2)+t42.*t130.*t194.*(9.81e+2./1.0e+2)];
    mt34 = [t41.*t61.*t129.*(9.81e+2./1.0e+2)-t42.*t129.*t194.*(9.81e+2./1.0e+2),t39.*t41.*t129.*(-9.81e+2./1.0e+2),t39.*t41.*t128.*(9.81e+2./1.0e+2)-t40.*t41.*t130.*(9.81e+2./1.0e+2),t40.*t41.*t129.*(9.81e+2./1.0e+2),0.0,0.0,0.0];
    j_out7 = reshape([mt25,mt26,mt27,mt28,mt29,mt30,mt31,mt32,mt33,mt34],3,15);
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

end
