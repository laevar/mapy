%--------------------------
%    plot3_beispiel.m
%
%  Beispiel fuer den Befehl 
%            plot3
%
%   Gerd Rapin    29.11.2003
%-----------------------------

close all;

t=0:0.1:20*pi;
x=exp(-t/20).*sin(t);
y=exp(-t/20).*cos(t);
z=t;

plot3(x,y,z,'b-o','LineWidth',1);
grid on
xlabel('x(t)'), ylabel('y(t)'), zlabel('z(t)')
title(' Beispiel: plot3','FontSize',15);

% Verschiedene Blickwinkel
figure;
subplot(2,2,1),
plot3(x,y,z,'b');
xlabel('x(t)'), ylabel('y(t)'), zlabel('z(t)')
title('az=-37.5, el=30','Fontsize',16);


subplot(2,2,2),
plot3(x,y,z,'b');
view(0,0);
xlabel('x(t)'), ylabel('y(t)'), zlabel('z(t)')
title('az=0, el=0','Fontsize',16);

subplot(2,2,3),
plot3(x,y,z,'b');
view(0,90);
xlabel('x(t)'), ylabel('y(t)'), zlabel('z(t)')
title('az=0, el=90','Fontsize',16);


subplot(2,2,4),
plot3(x,y,z,'b');
view(90,0);
xlabel('x(t)'), ylabel('y(t)'), zlabel('z(t)')
title('az=90  el=0','Fontsize',16);
