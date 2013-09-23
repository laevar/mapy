%---------------------------
%      interpol3.m
%
%  berechnet die polynomiale
%  Interpolation fuer 1/(1+x^2)
%
%   Gerd Rapin  23.11.2003
%--------------------------------

% Stuetzstellen
%x = linspace(-5,5,13);
y = f(x);
figure
plot(x,y,'or','Markersize',8);
hold on;

% Berechnen der Koeffizienten
p = interpol2(x,y);

% Plotten
x1 = linspace(-5,5,100);
y1 = ausw_poly2(p',x1);
y2 = f(x1);
plot(x1,y1,x1,y2,'Linewidth',3);
xlim([-6,6]);
grid on; box on;
legend('Interpolationspunkte','Interpolierende von f','f(x)=x^2*exp(-|x|)');

hold off
