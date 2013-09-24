function interpolation(f1,N)
%---------------------------
%      interpolation.m
%
%  berechnet die polynomiale
%  Interpolation fuer eine Fkt. f1
%  an N Punkten
%
%   Gerd Rapin  23.11.2003
%--------------------------------
%----------------- Fehlerbehandlung
profile off
if (round(abs(N)) ~= N) || (N==0)
  error(strcat('Bitte fuer die Anzahl der Stuetzstellen',...
  ' eine natuerliche Zahl verwenden'));
end
if ~ischar(f1)
  error('Bitte fuer die Funktion einen String verwenden');
end

f = fcnchk(f1);
profile resume
% Stuetzstellen
x = linspace(-1,1,N);
y = feval(f,x);
profile off
plot(x,y,'or','Markersize',8);
hold on;
profile resume
% Berechnen der Koeffizienten
p = interpol2(x,y); % selbstgebaut
pm = polyfit(x,y,N-1); % built-in
p2 = interpol2_for(x,y); % selbstgebaut alternative vandermonde-matrix
% Plotten
x1 = linspace(-1,1,100);
y1 = ausw_poly2(p',x1);
ym = polyval(pm,x1);
y2 = feval(f,x1);
y2 = f(x1);
profile off
plot(x1,y1,x1,y2,'Linewidth',3);
xlim([-1.1,1.1]);
grid on; box on;
legend('Interpolationspunkte','Interpolierende von f',f1);
hold off

disp('Maximaler Interpolationsfehler:')
max(abs(y1'-y2))