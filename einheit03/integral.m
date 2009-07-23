%----------------------------------
%   integral.m
% 
% berechnet approximativ ein Integral 
% ueber  (0,1) durch die Mittelpunktregel
%----------------------------------

N=5; % Anzahl Unterteilungen

x=(0+1/(2*N)):(1/N):(1-1/(2*N));
y=sin(pi*x.*x);
% Berechnung des Integrals
result=sum(y)*(1/N);

% Plot
for i=1:N
    fill([(i-1)/N (i-1)/N i/N i/N], [0 ((i-0.5)/N).^3  ((i-0.5)/N).^3 0], 'r');
    hold on;
end;
plot(0:0.01:1,(0:0.01:1).^3,'LineWidth',3);
title(['\int_0^1 x^3 = ',num2str(result),' fuer N =', num2str(N) ]); 




