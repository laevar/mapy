%--------------------------------------
%   data_fitting.m
%
%  Beispiel fuer die Routine interp1
%  Gerd Rapin   6.1.2004
%---------------------------------------
x=linspace(-5,5,11);
y=1./(1+x.*x);
% Plotten der Interpolationspunkte
subplot(2,3,1),
plot(x,y,'ro'), title('Punkte');
% Standardinterpolation
z=-5:0.1:5;
y1=polyval(polyfit(x,y,length(x)-1),z);
subplot(2,3,2), plot(x,y,'ro',z,y1,'b-.','Linewidth',3), title('polynomial');
% linearer Spline
y2=interp1(x,y,z,'linear');
subplot(2,3,3), plot(x,y,'ro',z,y2,'b-.','Linewidth',3), title('Linearer Spline');
%
% Kubischer Spline
y3=interp1(x,y,z,'spline');
subplot(2,3,4), plot(x,y,'ro',z,y3,'b-.','Linewidth',3), title('Kubischer Spline');
% kubische Interpolation
y4=interp1(x,y,z,'cubic');
subplot(2,3,5), plot(x,y,'ro',z,y3,'b-.','Linewidth',3), title('kubische Interpol.');
% konst. Approx.
y5=interp1(x,y,z,'nearest');
subplot(2,3,6), plot(x,y,'ro',z,y5,'b-.','Linewidth',3), title('konst. Approx.');



