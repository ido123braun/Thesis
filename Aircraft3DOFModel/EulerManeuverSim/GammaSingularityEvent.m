function [value, isterminal, direction, x]=GammaSingularityEvent(t,x)
value=abs(1-abs(x(6))/norm(x(4:6)));
isterminal=1; % Stop the integration
direction=0;
end