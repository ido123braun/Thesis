function [out1,out2,out3,out4,out5,out6,j_out1,j_out2,j_out3,j_out4,j_out5,j_out6,h_out1,h_out2,h_out3,h_out4,h_out5,h_out6] = sys_d868690b14a1ad7b0492085974b79df5(in1val1,in2val1,in3val1,in4val1,in5val1,in6val1,in7val1,in8val1,in9val1,in10val1,in11val1,in12val1,in13val1,in14val1,in15val1)
%SYS_D868690B14A1AD7B0492085974B79DF5
%    [OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,J_OUT1,J_OUT2,J_OUT3,J_OUT4,J_OUT5,J_OUT6,H_OUT1,H_OUT2,H_OUT3,H_OUT4,H_OUT5,H_OUT6] = SYS_D868690B14A1AD7B0492085974B79DF5(IN1VAL1,IN2VAL1,IN3VAL1,IN4VAL1,IN5VAL1,IN6VAL1,IN7VAL1,IN8VAL1,IN9VAL1,IN10VAL1,IN11VAL1,IN12VAL1,IN13VAL1,IN14VAL1,IN15VAL1)

%    This function was generated by the Symbolic Math Toolbox version 8.7.
%    27-Mar-2022 23:21:59

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
t49 = in9val1./2.0;
t59 = in5val1.*in6val1.*(9.81e+2./5.0e+1);
t60 = in7val1.*in8val1.*(9.81e+2./5.0e+1);
t73 = in1val1.*2.255769564462953e-5;
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
t50 = -t11;
t51 = -t12;
t52 = -t13;
t54 = -t49;
t55 = t7+t8;
t56 = t28+t34;
t57 = t30+t33;
t58 = t31+t32;
t75 = t18+t24+t29;
t76 = t73+1.0;
t95 = t59+t60;
t53 = -t39;
t61 = 1.0./t55;
t62 = t28+t48;
t63 = t30+t47;
t64 = t31+t46;
t65 = t56.^2;
t66 = in2val1.*t57;
t67 = in3val1.*t58;
t68 = in4val1.*t56;
t74 = t14+t15+t16;
t80 = t20+t22+t43;
t81 = t19+t25+t44;
t82 = t17+t26+t45;
t86 = t10+t13+t50+t51;
t87 = t10+t12+t50+t52;
t88 = t10+t11+t51+t52;
t100 = in5val1.*t95.*2.0;
t101 = in6val1.*t95.*2.0;
t102 = in7val1.*t95.*2.0;
t103 = in8val1.*t95.*2.0;
t105 = t76.^3.258643795229161;
t106 = t76.^4.258643795229161;
t109 = t57.*t95;
t110 = t58.*t95;
t116 = t75.*t95;
t69 = in2val1.*t64;
t70 = in3val1.*t62;
t71 = in4val1.*t63;
t72 = in13val1.*t63;
t83 = 1.0./t74;
t84 = 1.0./sqrt(t74);
t90 = in2val1.*t88;
t91 = in3val1.*t87;
t92 = in4val1.*t86;
t93 = in13val1.*t86;
t94 = t86.^2;
t97 = 1.0./t86;
t107 = -t103;
t111 = t62.*t95;
t112 = t63.*t95;
t117 = t80.*t95;
t118 = t81.*t95;
t119 = t82.*t95;
t123 = t86.*t95;
t124 = t88.*t95;
t77 = -t69;
t78 = -t70;
t79 = -t71;
t85 = t84.^3;
t89 = t9.*t83;
t98 = 1.0./t94;
t99 = -t93;
t113 = t65+t94;
t114 = -t111;
t115 = -t112;
t121 = -t117;
t122 = -t118;
t96 = -t89;
t120 = 1.0./t113;
t125 = t67+t79+t90;
t126 = t68+t77+t91;
t127 = t66+t78+t92;
t104 = t96+1.0;
t128 = abs(t125);
t129 = abs(t126);
t130 = abs(t127);
t131 = sign(t125);
t132 = sign(t126);
t133 = sign(t127);
t137 = in5val1.*t125.*(9.81e+2./5.0e+1);
t138 = in5val1.*t127.*(9.81e+2./5.0e+1);
t139 = in6val1.*t125.*(9.81e+2./5.0e+1);
t140 = in6val1.*t127.*(9.81e+2./5.0e+1);
t141 = in7val1.*t125.*(9.81e+2./5.0e+1);
t142 = in7val1.*t127.*(9.81e+2./5.0e+1);
t143 = in8val1.*t125.*(9.81e+2./5.0e+1);
t144 = in8val1.*t127.*(9.81e+2./5.0e+1);
t145 = t5.*t41.*t127.*(9.81e+2./1.0e+2);
t146 = t6.*t41.*t125.*(9.81e+2./1.0e+2);
t147 = t39.*t41.*t125.*(9.81e+2./1.0e+2);
t148 = t40.*t41.*t127.*(9.81e+2./1.0e+2);
t150 = t95.*t125;
t151 = t95.*t127;
t152 = t41.*t63.*t126.*(9.81e+2./1.0e+2);
t153 = t41.*t63.*t127.*(9.81e+2./1.0e+2);
t155 = t41.*t86.*t125.*(9.81e+2./1.0e+2);
t156 = t41.*t86.*t126.*(9.81e+2./1.0e+2);
t184 = in5val1.*t41.*t106.*t126.*8.374835549472455e+1;
t185 = in6val1.*t41.*t106.*t126.*8.374835549472455e+1;
t186 = in7val1.*t41.*t106.*t126.*8.374835549472455e+1;
t187 = in8val1.*t41.*t106.*t126.*8.374835549472455e+1;
t108 = 1.0./sqrt(t104);
t134 = t128.^2;
t135 = t129.^2;
t136 = t130.^2;
t149 = -t148;
t154 = -t152;
t157 = t58.*t128.*t131.*2.0;
t158 = t56.*t129.*t132.*2.0;
t159 = t57.*t130.*t133.*2.0;
t160 = t63.*t128.*t131.*2.0;
t161 = t64.*t129.*t132.*2.0;
t162 = t62.*t130.*t133.*2.0;
t166 = t75.*t128.*t131.*2.0;
t167 = t75.*t129.*t132.*2.0;
t168 = t75.*t130.*t133.*2.0;
t169 = t80.*t128.*t131.*2.0;
t170 = t80.*t129.*t132.*2.0;
t171 = t80.*t130.*t133.*2.0;
t172 = t81.*t128.*t131.*2.0;
t173 = t81.*t129.*t132.*2.0;
t174 = t81.*t130.*t133.*2.0;
t175 = t82.*t128.*t131.*2.0;
t176 = t82.*t129.*t132.*2.0;
t177 = t82.*t130.*t133.*2.0;
t181 = t88.*t128.*t131.*2.0;
t182 = t87.*t129.*t132.*2.0;
t183 = t86.*t130.*t133.*2.0;
t188 = -t187;
t189 = t145+t146;
t163 = -t160;
t164 = -t161;
t165 = -t162;
t178 = -t169;
t179 = -t174;
t180 = -t176;
t190 = t147+t149;
t191 = t134+t135+t136;
t254 = t171+t173+t175;
t192 = 1.0./t191;
t194 = in11val1.*t106.*t191.*1.707407859219665e+1;
t195 = in12val1.*t106.*t191.*1.707407859219665e+1;
t238 = in11val1.*t41.*t105.*t127.*t191.*1.60906034646792e-2;
t239 = in12val1.*t41.*t105.*t125.*t191.*1.60906034646792e-2;
t251 = t159+t164+t181;
t252 = t157+t165+t182;
t253 = t158+t163+t183;
t255 = t166+t170+t179;
t256 = t167+t177+t178;
t257 = t168+t172+t180;
t262 = in11val1.*t106.*t254.*1.707407859219665e+1;
t264 = in12val1.*t106.*t254.*1.707407859219665e+1;
t193 = t192.^2;
t196 = t53+t72+t194;
t197 = t40+t99+t195;
out1 = [-t64.*t95-t41.*t57.*t197.*(9.81e+2./1.0e+2)-t41.*t88.*t196.*(9.81e+2./1.0e+2);t87.*t95-t41.*t58.*t196.*(9.81e+2./1.0e+2)+t41.*t62.*t197.*(9.81e+2./1.0e+2);t56.*t95+t41.*t63.*t196.*(9.81e+2./1.0e+2)-t41.*t86.*t197.*(9.81e+2./1.0e+2)];
if nargout > 1
    t240 = -t239;
    t263 = in11val1.*t106.*t255.*1.707407859219665e+1;
    t265 = in11val1.*t106.*t256.*1.707407859219665e+1;
    t266 = in12val1.*t106.*t255.*1.707407859219665e+1;
    t267 = in11val1.*t106.*t257.*1.707407859219665e+1;
    t268 = in12val1.*t106.*t256.*1.707407859219665e+1;
    t269 = in12val1.*t106.*t257.*1.707407859219665e+1;
    t271 = -t264;
    t275 = t37+t262;
    t282 = in11val1.*t41.*t106.*t126.*t251.*1.674967109894491e+2;
    t283 = in11val1.*t41.*t106.*t126.*t252.*1.674967109894491e+2;
    t284 = in11val1.*t41.*t106.*t126.*t253.*1.674967109894491e+2;
    t285 = in11val1.*t41.*t106.*t127.*t251.*1.674967109894491e+2;
    t286 = in11val1.*t41.*t106.*t127.*t252.*1.674967109894491e+2;
    t287 = in11val1.*t41.*t106.*t127.*t253.*1.674967109894491e+2;
    t288 = in12val1.*t41.*t106.*t125.*t251.*1.674967109894491e+2;
    t289 = in12val1.*t41.*t106.*t125.*t252.*1.674967109894491e+2;
    t290 = in12val1.*t41.*t106.*t125.*t253.*1.674967109894491e+2;
    t291 = in12val1.*t41.*t106.*t126.*t251.*1.674967109894491e+2;
    t292 = in12val1.*t41.*t106.*t126.*t252.*1.674967109894491e+2;
    t293 = in12val1.*t41.*t106.*t126.*t253.*1.674967109894491e+2;
    t198 = in5val1.*t41.*t196.*(9.81e+2./5.0e+1);
    t199 = in6val1.*t41.*t196.*(9.81e+2./5.0e+1);
    t200 = in7val1.*t41.*t196.*(9.81e+2./5.0e+1);
    t201 = in8val1.*t41.*t196.*(9.81e+2./5.0e+1);
    t205 = t41.*t56.*t196.*(9.81e+2./1.0e+2);
    t206 = t41.*t57.*t196.*(9.81e+2./1.0e+2);
    t207 = in5val1.*t41.*t197.*(9.81e+2./5.0e+1);
    t208 = in6val1.*t41.*t197.*(9.81e+2./5.0e+1);
    t209 = in7val1.*t41.*t197.*(9.81e+2./5.0e+1);
    t210 = in8val1.*t41.*t197.*(9.81e+2./5.0e+1);
    t211 = t41.*t62.*t196.*(9.81e+2./1.0e+2);
    t212 = t41.*t64.*t196.*(9.81e+2./1.0e+2);
    t217 = t41.*t75.*t196.*(9.81e+2./1.0e+2);
    t218 = t41.*t80.*t196.*(9.81e+2./1.0e+2);
    t219 = t41.*t81.*t196.*(9.81e+2./1.0e+2);
    t220 = t41.*t82.*t196.*(9.81e+2./1.0e+2);
    t223 = t41.*t56.*t197.*(9.81e+2./1.0e+2);
    t224 = t41.*t58.*t197.*(9.81e+2./1.0e+2);
    t225 = t41.*t86.*t196.*(9.81e+2./1.0e+2);
    t226 = t41.*t87.*t196.*(9.81e+2./1.0e+2);
    t227 = t41.*t63.*t197.*(9.81e+2./1.0e+2);
    t228 = t41.*t64.*t197.*(9.81e+2./1.0e+2);
    t230 = t41.*t75.*t197.*(9.81e+2./1.0e+2);
    t231 = t41.*t80.*t197.*(9.81e+2./1.0e+2);
    t232 = t41.*t81.*t197.*(9.81e+2./1.0e+2);
    t233 = t41.*t82.*t197.*(9.81e+2./1.0e+2);
    t235 = t41.*t87.*t197.*(9.81e+2./1.0e+2);
    t236 = t41.*t88.*t197.*(9.81e+2./1.0e+2);
    t241 = t41.*t126.*t196.*(9.81e+2./1.0e+2);
    t242 = t41.*t127.*t196.*(9.81e+2./1.0e+2);
    t243 = t42.*t126.*t196.*(9.81e+2./1.0e+2);
    t244 = t42.*t127.*t196.*(9.81e+2./1.0e+2);
    t246 = t41.*t125.*t197.*(9.81e+2./1.0e+2);
    t247 = t41.*t126.*t197.*(9.81e+2./1.0e+2);
    t248 = t42.*t125.*t197.*(9.81e+2./1.0e+2);
    t249 = t42.*t126.*t197.*(9.81e+2./1.0e+2);
    t270 = -t263;
    t272 = -t267;
    t273 = -t269;
    t274 = t35+t265;
    t276 = t36+t266;
    t277 = t37+t268;
    t278 = t35+t271;
    t294 = -t286;
    t295 = -t288;
    t296 = -t290;
    t299 = t41.*t126.*t275.*(9.81e+2./1.0e+2);
    t300 = t41.*t127.*t275.*(9.81e+2./1.0e+2);
    t324 = t238+t240;
    t202 = -t198;
    t203 = -t199;
    t204 = -t201;
    t213 = -t207;
    t214 = -t209;
    t215 = -t210;
    t216 = -t212;
    t221 = -t217;
    t222 = -t220;
    t229 = -t228;
    t234 = -t233;
    t237 = -t236;
    t245 = -t244;
    t250 = -t246;
    t258 = t150+t241;
    t259 = t154+t243;
    t260 = t151+t247;
    t261 = t156+t249;
    t279 = t36+t272;
    t280 = t38+t270;
    t281 = t38+t273;
    t297 = t41.*t126.*t274.*(9.81e+2./1.0e+2);
    t298 = t41.*t127.*t274.*(9.81e+2./1.0e+2);
    t301 = t41.*t125.*t276.*(9.81e+2./1.0e+2);
    t302 = t41.*t126.*t276.*(9.81e+2./1.0e+2);
    t303 = t41.*t125.*t277.*(9.81e+2./1.0e+2);
    t304 = t41.*t126.*t277.*(9.81e+2./1.0e+2);
    t305 = t41.*t125.*t278.*(9.81e+2./1.0e+2);
    t306 = t41.*t126.*t278.*(9.81e+2./1.0e+2);
    t326 = t115+t205+t284;
    t328 = t110+t226+t283;
    t333 = t123+t223+t293;
    t334 = t114+t235+t292;
    t335 = t119+t139+t219+t299;
    t364 = t211+t224+t289+t294;
    t366 = t225+t227+t287+t296;
    t307 = t41.*t126.*t279.*(9.81e+2./1.0e+2);
    t308 = t41.*t127.*t279.*(9.81e+2./1.0e+2);
    t309 = t41.*t126.*t280.*(9.81e+2./1.0e+2);
    t310 = t41.*t127.*t280.*(9.81e+2./1.0e+2);
    t311 = -t303;
    t312 = t41.*t125.*t281.*(9.81e+2./1.0e+2);
    t313 = t41.*t126.*t281.*(9.81e+2./1.0e+2);
    t314 = -t306;
    t319 = (t192.*t258)./2.0;
    t321 = (t192.*t260)./2.0;
    t325 = t242+t250;
    t327 = t153+t155+t245+t248;
    t329 = t109+t229+t291;
    t330 = t124+t216+t282;
    t337 = t121+t143+t217+t297;
    t339 = t119+t144+t230+t304;
    t341 = t122+t138+t231+t302;
    t343 = (t193.*t251.*t260)./2.0;
    t344 = (t193.*t252.*t260)./2.0;
    t345 = (t193.*t253.*t260)./2.0;
    t349 = (t193.*t254.*t260)./2.0;
    t350 = (t193.*t255.*t260)./2.0;
    t351 = (t193.*t256.*t260)./2.0;
    t352 = (t193.*t257.*t260)./2.0;
    t358 = (t192.*t333)./2.0;
    t359 = (t192.*t334)./2.0;
    t365 = t206+t237+t285+t295;
    t369 = t218+t234+t300+t305;
    t315 = -t307;
    t316 = -t309;
    t317 = -t312;
    t318 = -t313;
    t320 = -t319;
    t322 = -t321;
    t331 = (t192.*t325)./2.0;
    t340 = t117+t140+t232+t314;
    t346 = -t343;
    t347 = -t344;
    t348 = -t345;
    t353 = -t349;
    t354 = -t350;
    t355 = -t351;
    t356 = -t352;
    t357 = (t192.*t329)./2.0;
    t360 = (t192.*t339)./2.0;
    t362 = (t192.*t341)./2.0;
    t367 = t219+t230+t301+t310;
    t368 = t220+t231+t298+t311;
    t323 = t49+t322;
    out2 = [-in6val1.*t323+in7val1.*t331-(in8val1.*t192.*t258)./2.0;in5val1.*t323+in7val1.*t319+in8val1.*t331;in8val1.*t323-(in6val1.*t192.*t258)./2.0-(in5val1.*t192.*t325)./2.0;in5val1.*t319-in7val1.*t323-(in6val1.*t192.*t325)./2.0];
end
if nargout > 2
    out3 = -in10val1.*in15val1;
end
if nargout > 3
    out4 = atan2(in5val1.*in6val1.*2.0+in7val1.*in8val1.*2.0,t86);
end
if nargout > 4
    out5 = -asin(in4val1.*t84);
end
if nargout > 5
    out6 = atan2(in3val1,in2val1);
end
if nargout > 6
    mt1 = [in12val1.*t41.*t57.*t105.*t191.*(-1.60906034646792e-2)-in11val1.*t41.*t88.*t105.*t191.*1.60906034646792e-2];
    mt2 = [in11val1.*t41.*t58.*t105.*t191.*(-1.60906034646792e-2)+in12val1.*t41.*t62.*t105.*t191.*1.60906034646792e-2];
    mt3 = [in11val1.*t41.*t63.*t105.*t191.*1.60906034646792e-2-in12val1.*t41.*t86.*t105.*t191.*1.60906034646792e-2];
    mt4 = [in12val1.*t41.*t57.*t106.*t251.*(-1.674967109894491e+2)-in11val1.*t41.*t88.*t106.*t251.*1.674967109894491e+2,in11val1.*t41.*t58.*t106.*t251.*(-1.674967109894491e+2)+in12val1.*t41.*t62.*t106.*t251.*1.674967109894491e+2];
    mt5 = [in11val1.*t41.*t63.*t106.*t251.*1.674967109894491e+2-in12val1.*t41.*t86.*t106.*t251.*1.674967109894491e+2,in12val1.*t41.*t57.*t106.*t252.*(-1.674967109894491e+2)-in11val1.*t41.*t88.*t106.*t252.*1.674967109894491e+2];
    mt6 = [in11val1.*t41.*t58.*t106.*t252.*(-1.674967109894491e+2)+in12val1.*t41.*t62.*t106.*t252.*1.674967109894491e+2,in11val1.*t41.*t63.*t106.*t252.*1.674967109894491e+2-in12val1.*t41.*t86.*t106.*t252.*1.674967109894491e+2];
    mt7 = [in12val1.*t41.*t57.*t106.*t253.*(-1.674967109894491e+2)-in11val1.*t41.*t88.*t106.*t253.*1.674967109894491e+2,in11val1.*t41.*t58.*t106.*t253.*(-1.674967109894491e+2)+in12val1.*t41.*t62.*t106.*t253.*1.674967109894491e+2];
    mt8 = [in11val1.*t41.*t63.*t106.*t253.*1.674967109894491e+2-in12val1.*t41.*t86.*t106.*t253.*1.674967109894491e+2,t107+t202+t214-in6val1.*t64.*(9.81e+2./5.0e+1)+t41.*t57.*t278.*(9.81e+2./1.0e+2)-t41.*t88.*t275.*(9.81e+2./1.0e+2),t100+t204+t208+in6val1.*t87.*(9.81e+2./5.0e+1)-t41.*t58.*t275.*(9.81e+2./1.0e+2)-t41.*t62.*t278.*(9.81e+2./1.0e+2)];
    mt9 = [t101+t200+t213+in6val1.*t56.*(9.81e+2./5.0e+1)+t41.*t63.*t275.*(9.81e+2./1.0e+2)+t41.*t86.*t278.*(9.81e+2./1.0e+2),t102+t203+t215-in5val1.*t64.*(9.81e+2./5.0e+1)-t41.*t57.*t276.*(9.81e+2./1.0e+2)+t41.*t88.*t280.*(9.81e+2./1.0e+2),-t101-t200+t207+in5val1.*t87.*(9.81e+2./5.0e+1)+t41.*t58.*t280.*(9.81e+2./1.0e+2)+t41.*t62.*t276.*(9.81e+2./1.0e+2),t100+t204+t208+in5val1.*t56.*(9.81e+2./5.0e+1)-t41.*t63.*t280.*(9.81e+2./1.0e+2)-t41.*t86.*t276.*(9.81e+2./1.0e+2)];
    mt10 = [t101+t200+t213-in8val1.*t64.*(9.81e+2./5.0e+1)-t41.*t57.*t277.*(9.81e+2./1.0e+2)-t41.*t88.*t274.*(9.81e+2./1.0e+2),t102+t203+t215+in8val1.*t87.*(9.81e+2./5.0e+1)-t41.*t58.*t274.*(9.81e+2./1.0e+2)+t41.*t62.*t277.*(9.81e+2./1.0e+2),t103+t198+t209+in8val1.*t56.*(9.81e+2./5.0e+1)+t41.*t63.*t274.*(9.81e+2./1.0e+2)-t41.*t86.*t277.*(9.81e+2./1.0e+2),-t100+t201-t208-in7val1.*t64.*(9.81e+2./5.0e+1)+t41.*t57.*t281.*(9.81e+2./1.0e+2)+t41.*t88.*t279.*(9.81e+2./1.0e+2)];
    mt11 = [t107+t202+t214+in7val1.*t87.*(9.81e+2./5.0e+1)+t41.*t58.*t279.*(9.81e+2./1.0e+2)-t41.*t62.*t281.*(9.81e+2./1.0e+2),t102+t203+t215+in7val1.*t56.*(9.81e+2./5.0e+1)-t41.*t63.*t279.*(9.81e+2./1.0e+2)+t41.*t86.*t281.*(9.81e+2./1.0e+2),0.0,0.0,0.0,t6.*t41.*t57.*(-9.81e+2./1.0e+2)+t5.*t41.*t88.*(9.81e+2./1.0e+2),t5.*t41.*t58.*(9.81e+2./1.0e+2)+t6.*t41.*t62.*(9.81e+2./1.0e+2),t5.*t41.*t63.*(-9.81e+2./1.0e+2)-t6.*t41.*t86.*(9.81e+2./1.0e+2)];
    mt12 = [t41.*t88.*t106.*t191.*(-1.674967109894491e+2),t41.*t58.*t106.*t191.*(-1.674967109894491e+2),t41.*t63.*t106.*t191.*1.674967109894491e+2,t41.*t57.*t106.*t191.*(-1.674967109894491e+2)];
    mt13 = [t41.*t62.*t106.*t191.*1.674967109894491e+2,t41.*t86.*t106.*t191.*(-1.674967109894491e+2),t41.*t57.*t86.*(9.81e+2./1.0e+2)-t41.*t63.*t88.*(9.81e+2./1.0e+2)+t42.*t57.*t197.*(9.81e+2./1.0e+2)+t42.*t88.*t196.*(9.81e+2./1.0e+2),t41.*t58.*t63.*(-9.81e+2./1.0e+2)-t41.*t62.*t86.*(9.81e+2./1.0e+2)+t42.*t58.*t196.*(9.81e+2./1.0e+2)-t42.*t62.*t197.*(9.81e+2./1.0e+2)];
    mt14 = [t41.*t94.*(9.81e+2./1.0e+2)+t41.*t63.^2.*(9.81e+2./1.0e+2)-t42.*t63.*t196.*(9.81e+2./1.0e+2)+t42.*t86.*t197.*(9.81e+2./1.0e+2),t39.*t41.*t57.*(-9.81e+2./1.0e+2)-t40.*t41.*t88.*(9.81e+2./1.0e+2),t40.*t41.*t58.*(-9.81e+2./1.0e+2)+t39.*t41.*t62.*(9.81e+2./1.0e+2),t40.*t41.*t63.*(9.81e+2./1.0e+2)-t39.*t41.*t86.*(9.81e+2./1.0e+2),0.0,0.0,0.0];
    j_out1 = reshape([mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9,mt10,mt11,mt12,mt13,mt14],3,15);
end
if nargout > 7
    t332 = -t331;
    t336 = t116+t137+t218+t316;
    t338 = t118+t141+t222+t315;
    t342 = t116+t142+t234+t318;
    t361 = (t192.*t340)./2.0;
    t370 = t221+t232+t308+t317;
    t371 = t346+t357;
    t372 = t348+t358;
    t373 = t347+t359;
    t374 = t355+t360;
    t376 = t354+t362;
    t363 = (t192.*t342)./2.0;
    mt15 = [(in7val1.*t192.*t324)./2.0+in6val1.*in12val1.*t41.*t105.*t126.*8.0453017323396e-3-in8val1.*in11val1.*t41.*t105.*t126.*8.0453017323396e-3];
    mt16 = [(in8val1.*t192.*t324)./2.0-in5val1.*in12val1.*t41.*t105.*t126.*8.0453017323396e-3+in7val1.*in11val1.*t41.*t105.*t126.*8.0453017323396e-3];
    mt17 = [in5val1.*t192.*t324.*(-1.0./2.0)-in6val1.*in11val1.*t41.*t105.*t126.*8.0453017323396e-3-in8val1.*in12val1.*t41.*t105.*t126.*8.0453017323396e-3];
    mt18 = [in6val1.*t192.*t324.*(-1.0./2.0)+in5val1.*in11val1.*t41.*t105.*t126.*8.0453017323396e-3+in7val1.*in12val1.*t41.*t105.*t126.*8.0453017323396e-3,-in6val1.*(t343-t357)-(in8val1.*t192.*t330)./2.0+(in7val1.*t192.*t365)./2.0+(in8val1.*t193.*t251.*t258)./2.0-(in7val1.*t193.*t251.*t325)./2.0];
    mt19 = [in5val1.*(t343-t357)+(in7val1.*t192.*t330)./2.0+(in8val1.*t192.*t365)./2.0-(in7val1.*t193.*t251.*t258)./2.0-(in8val1.*t193.*t251.*t325)./2.0,in8val1.*(t343-t357)-(in6val1.*t192.*t330)./2.0-(in5val1.*t192.*t365)./2.0+(in6val1.*t193.*t251.*t258)./2.0+(in5val1.*t193.*t251.*t325)./2.0,-in7val1.*(t343-t357)+(in5val1.*t192.*t330)./2.0-(in6val1.*t192.*t365)./2.0-(in5val1.*t193.*t251.*t258)./2.0+(in6val1.*t193.*t251.*t325)./2.0,-in6val1.*(t344-t359)-(in8val1.*t192.*t328)./2.0-(in7val1.*t192.*t364)./2.0+(in8val1.*t193.*t252.*t258)./2.0-(in7val1.*t193.*t252.*t325)./2.0];
    mt20 = [in5val1.*(t344-t359)+(in7val1.*t192.*t328)./2.0-(in8val1.*t192.*t364)./2.0-(in7val1.*t193.*t252.*t258)./2.0-(in8val1.*t193.*t252.*t325)./2.0,in8val1.*(t344-t359)-(in6val1.*t192.*t328)./2.0+(in5val1.*t192.*t364)./2.0+(in6val1.*t193.*t252.*t258)./2.0+(in5val1.*t193.*t252.*t325)./2.0,-in7val1.*(t344-t359)+(in5val1.*t192.*t328)./2.0+(in6val1.*t192.*t364)./2.0-(in5val1.*t193.*t252.*t258)./2.0+(in6val1.*t193.*t252.*t325)./2.0,-in6val1.*(t345-t358)-(in8val1.*t192.*t326)./2.0+(in7val1.*t192.*t366)./2.0+(in8val1.*t193.*t253.*t258)./2.0-(in7val1.*t193.*t253.*t325)./2.0];
    mt21 = [in5val1.*(t345-t358)+(in7val1.*t192.*t326)./2.0+(in8val1.*t192.*t366)./2.0-(in7val1.*t193.*t253.*t258)./2.0-(in8val1.*t193.*t253.*t325)./2.0,in8val1.*(t345-t358)-(in6val1.*t192.*t326)./2.0-(in5val1.*t192.*t366)./2.0+(in6val1.*t193.*t253.*t258)./2.0+(in5val1.*t193.*t253.*t325)./2.0,-in7val1.*(t345-t358)+(in5val1.*t192.*t326)./2.0-(in6val1.*t192.*t366)./2.0-(in5val1.*t193.*t253.*t258)./2.0+(in6val1.*t193.*t253.*t325)./2.0,-in6val1.*(t349-t361)-(in8val1.*t192.*t335)./2.0+(in7val1.*t192.*t369)./2.0+(in8val1.*t193.*t254.*t258)./2.0-(in7val1.*t193.*t254.*t325)./2.0];
    mt22 = [t323+in5val1.*(t349-t361)+(in7val1.*t192.*t335)./2.0+(in8val1.*t192.*t369)./2.0-(in7val1.*t193.*t254.*t258)./2.0-(in8val1.*t193.*t254.*t325)./2.0,t332+in8val1.*(t349-t361)-(in6val1.*t192.*t335)./2.0-(in5val1.*t192.*t369)./2.0+(in6val1.*t193.*t254.*t258)./2.0+(in5val1.*t193.*t254.*t325)./2.0,t319-in7val1.*(t349-t361)+(in5val1.*t192.*t335)./2.0-(in6val1.*t192.*t369)./2.0-(in5val1.*t193.*t254.*t258)./2.0+(in6val1.*t193.*t254.*t325)./2.0,t54+t321-in6val1.*(t350-t362)-(in8val1.*t192.*t336)./2.0-(in7val1.*t192.*t367)./2.0+(in8val1.*t193.*t255.*t258)./2.0-(in7val1.*t193.*t255.*t325)./2.0];
    mt23 = [in5val1.*(t350-t362)+(in7val1.*t192.*t336)./2.0-(in8val1.*t192.*t367)./2.0-(in7val1.*t193.*t255.*t258)./2.0-(in8val1.*t193.*t255.*t325)./2.0,t320+in8val1.*(t350-t362)-(in6val1.*t192.*t336)./2.0+(in5val1.*t192.*t367)./2.0+(in6val1.*t193.*t255.*t258)./2.0+(in5val1.*t193.*t255.*t325)./2.0,t332-in7val1.*(t350-t362)+(in5val1.*t192.*t336)./2.0+(in6val1.*t192.*t367)./2.0-(in5val1.*t193.*t255.*t258)./2.0+(in6val1.*t193.*t255.*t325)./2.0,t331-in6val1.*(t351-t360)-(in8val1.*t192.*t337)./2.0+(in7val1.*t192.*t368)./2.0+(in8val1.*t193.*t256.*t258)./2.0-(in7val1.*t193.*t256.*t325)./2.0];
    mt24 = [t319+in5val1.*(t351-t360)+(in7val1.*t192.*t337)./2.0+(in8val1.*t192.*t368)./2.0-(in7val1.*t193.*t256.*t258)./2.0-(in8val1.*t193.*t256.*t325)./2.0,in8val1.*(t351-t360)-(in6val1.*t192.*t337)./2.0-(in5val1.*t192.*t368)./2.0+(in6val1.*t193.*t256.*t258)./2.0+(in5val1.*t193.*t256.*t325)./2.0,t54+t321-in7val1.*(t351-t360)+(in5val1.*t192.*t337)./2.0-(in6val1.*t192.*t368)./2.0-(in5val1.*t193.*t256.*t258)./2.0+(in6val1.*t193.*t256.*t325)./2.0,t320-in6val1.*(t352-t363)+(in7val1.*t192.*(t217-t232-t308+t312))./2.0-(in8val1.*t192.*t338)./2.0+(in8val1.*t193.*t257.*t258)./2.0-(in7val1.*t193.*t257.*t325)./2.0];
    mt25 = [t331+in5val1.*(t352-t363)+(in8val1.*t192.*(t217-t232-t308+t312))./2.0+(in7val1.*t192.*t338)./2.0-(in7val1.*t193.*t257.*t258)./2.0-(in8val1.*t193.*t257.*t325)./2.0,t323+in8val1.*(t352-t363)-(in5val1.*t192.*(t217-t232-t308+t312))./2.0-(in6val1.*t192.*t338)./2.0+(in6val1.*t193.*t257.*t258)./2.0+(in5val1.*t193.*t257.*t325)./2.0,-in7val1.*(t352-t363)-(in6val1.*t192.*(t217-t232-t308+t312))./2.0+(in5val1.*t192.*t338)./2.0-(in5val1.*t193.*t257.*t258)./2.0+(in6val1.*t193.*t257.*t325)./2.0,in6val1.*(-1.0./2.0),in5val1./2.0,in8val1./2.0,in7val1.*(-1.0./2.0)];
    mt26 = [in7val1.*t189.*t192.*(-1.0./2.0)+in6val1.*t6.*t41.*t126.*t192.*(9.81e+2./2.0e+2)+in8val1.*t5.*t41.*t126.*t192.*(9.81e+2./2.0e+2),in8val1.*t189.*t192.*(-1.0./2.0)-in5val1.*t6.*t41.*t126.*t192.*(9.81e+2./2.0e+2)-in7val1.*t5.*t41.*t126.*t192.*(9.81e+2./2.0e+2),(in5val1.*t189.*t192)./2.0+in6val1.*t5.*t41.*t126.*t192.*(9.81e+2./2.0e+2)-in8val1.*t6.*t41.*t126.*t192.*(9.81e+2./2.0e+2),(in6val1.*t189.*t192)./2.0-in5val1.*t5.*t41.*t126.*t192.*(9.81e+2./2.0e+2)+in7val1.*t6.*t41.*t126.*t192.*(9.81e+2./2.0e+2),t188+in7val1.*t41.*t106.*t127.*8.374835549472455e+1];
    mt27 = [t186+in8val1.*t41.*t106.*t127.*8.374835549472455e+1,-t185-in5val1.*t41.*t106.*t127.*8.374835549472455e+1,t184-in6val1.*t41.*t106.*t127.*8.374835549472455e+1,t185-in7val1.*t41.*t106.*t125.*8.374835549472455e+1];
    mt28 = [-t184-in8val1.*t41.*t106.*t125.*8.374835549472455e+1,t188+in5val1.*t41.*t106.*t125.*8.374835549472455e+1,t186+in6val1.*t41.*t106.*t125.*8.374835549472455e+1,in6val1.*t192.*t261.*(-1.0./2.0)+(in7val1.*t192.*t327)./2.0-(in8val1.*t192.*(t152-t243))./2.0];
    mt29 = [(in5val1.*t192.*t261)./2.0+(in8val1.*t192.*t327)./2.0+(in7val1.*t192.*(t152-t243))./2.0,(in8val1.*t192.*t261)./2.0-(in5val1.*t192.*t327)./2.0-(in6val1.*t192.*(t152-t243))./2.0,in7val1.*t192.*t261.*(-1.0./2.0)-(in6val1.*t192.*t327)./2.0+(in5val1.*t192.*(t152-t243))./2.0,in7val1.*t190.*t192.*(-1.0./2.0)+in6val1.*t39.*t41.*t126.*t192.*(9.81e+2./2.0e+2)-in8val1.*t40.*t41.*t126.*t192.*(9.81e+2./2.0e+2),in8val1.*t190.*t192.*(-1.0./2.0)-in5val1.*t39.*t41.*t126.*t192.*(9.81e+2./2.0e+2)+in7val1.*t40.*t41.*t126.*t192.*(9.81e+2./2.0e+2),(in5val1.*t190.*t192)./2.0-in6val1.*t40.*t41.*t126.*t192.*(9.81e+2./2.0e+2)-in8val1.*t39.*t41.*t126.*t192.*(9.81e+2./2.0e+2)];
    mt30 = [(in6val1.*t190.*t192)./2.0+in5val1.*t40.*t41.*t126.*t192.*(9.81e+2./2.0e+2)+in7val1.*t39.*t41.*t126.*t192.*(9.81e+2./2.0e+2),0.0,0.0,0.0,0.0];
    j_out2 = reshape([mt15,mt16,mt17,mt18,mt19,mt20,mt21,mt22,mt23,mt24,mt25,mt26,mt27,mt28,mt29,mt30],4,15);
end
if nargout > 8
    j_out3 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-in15val1,0.0,0.0,0.0,0.0,-in10val1];
end
if nargout > 9
    j_out4 = [0.0,0.0,0.0,0.0,t94.*t120.*(in6val1.*t97.*2.0-in5val1.*t56.*t98.*2.0),t94.*t120.*(in5val1.*t97.*2.0+in6val1.*t56.*t98.*2.0),t94.*t120.*(in8val1.*t97.*2.0+in7val1.*t56.*t98.*2.0),t94.*t120.*(in7val1.*t97.*2.0-in8val1.*t56.*t98.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 10
    j_out5 = [0.0,in4val1.*t2.*t85.*t108.*sign(in2val1),in4val1.*t3.*t85.*t108.*sign(in3val1),-t108.*(t84-in4val1.*t4.*t85.*sign(in4val1)),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 11
    j_out6 = [0.0,-in3val1.*t61,in2val1.*t61,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0];
end
if nargout > 12
    h_out1 = zeros(0,0);
end
if nargout > 13
    h_out2 = zeros(0,0);
end
if nargout > 14
    h_out3 = zeros(0,0);
end
if nargout > 15
    h_out4 = zeros(0,0);
end
if nargout > 16
    h_out5 = zeros(0,0);
end
if nargout > 17
    h_out6 = zeros(0,0);
end

end
