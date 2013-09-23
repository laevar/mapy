%----------------------------------
%   integral.m
% 
% berechnet approximativ ein Integral 
% ueber  (0,1) durch die Mittelpunktregel
%----------------------------------

%exakt: 
% partielle integration
% \int f' * g = f*g|a^b - \int f*g'
% f'=e^x
% g =x
% f = e^x
% g'=1
% x e^x - e^x|_0^1 = 1
N = 1; % Anzahl Unterteilungen
TOL = 1e-4;
err = 1;
% Schleife um das Integral so gut zu berechnen, dass es innerhalb der TOL
% gelangt
while (err > TOL)
  N = N+1;
  x = (0+1/(2*N)):(1/N):(1-1/(2*N));
  y = x.*exp(x);
  % Berechnung des Integrals
  result = sum(y)*(1/N);
  err = abs(1 - result);
end
N
err

% Plot
figure
for i = 1:N
    fill([(i-1)/N (i-1)/N i/N i/N], [0 ((i-0.5)/N)*exp((i-0.5)/N) ((i-0.5)/N)*exp((i-0.5)/N) 0], 'r');
    hold on;
end;
plot(0:0.01:1,(0:0.01:1).*exp(0:0.01:1),'LineWidth',3);
title(['\int_0^1 x e^x = ',num2str(result),' fuer N =', num2str(N) ]); 
hold off



