%---------------------------------
%   lorenz_gl.m
%  Eine Approximation der Lorenzgleichungen
%  Gerd Rapin 08.01.2004
%-----------------------------------------
tspan=[0,30]; aw=[0;1;0];
options=odeset ('AbsTol',1e-7,'RelTol',1e-4);
[t,y]=ode45(@lorenz_rechte_seite,tspan,aw, options);
subplot(2,2,1),plot3(y(:,1),y(:,2),y(:,3)), 
subplot(2,2,2),plot(y(:,1),y(:,2)), xlabel('y_1'), ylabel('y_2');
subplot(2,2,3),plot(y(:,1),y(:,3)), xlabel('y_1'), ylabel('y_3');
subplot(2,2,4),plot(y(:,2),y(:,3)), xlabel('y_2'), ylabel('y_3');
