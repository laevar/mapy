function interpolation(f1,N)
%---------------------------
%      interpolation.m
%
%  berechnet die polynomiale
%  Interpolation fuer eine Fkt. f1
%  an N Punkten
%--------------------------------
%----------------- Fehlerbehandlung
if (round(abs(N)) ~= N) || (N==0)
  error(strcat('Bitte fuer die Anzahl der Stuetzstellen',...
  ' eine natuerliche Zahl verwenden'));
end
if ~isa(f1, 'function_handle')
  error('Bitte fuer die Funktion einen String verwenden');
end

% Stuetzstellen
x = linspace(-1,1,N);
y = f1(x);
plot(x,y,'or','Markersize',8);
hold on;
% Berechnen der Koeffizienten
p = interpol2(x,y);
% Plotten
x1 = linspace(-1,1,100);
y1 = ausw_poly2(p',x1);
y2 = f1(x1);
plot(x1,y1,x1,y2,'Linewidth',3);
xlim([-1.1,1.1]);
grid on; box on;
legend('Interpolationspunkte','Interpolierende von f');
hold off

disp('Maximaler Interpolationsfehler:')
max(abs(y1'-y2))