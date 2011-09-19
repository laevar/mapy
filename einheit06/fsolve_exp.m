x0 = -5;  % Startwert
options = optimset('Display','iter');  
f = @(x) 2*x  - exp(-x);
[x,fval] = fsolve(f,x0,options) 