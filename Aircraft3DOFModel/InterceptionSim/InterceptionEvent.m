function [value, isterminal, direction, x]=InterceptionEvent(t,x)
value=norm(x(7:9)-x(1:3))&&(-x(3)<0);
isterminal=1; % Stop the integration
direction=0;
end