function result=integral(varargin)
%----------------------------------
%   integral.m
% 
% berechnet approximativ ein Integral 
% ueber  (a,b) durch die Mittelpunktregel 
% Hilfe von N Punkten
%
% Eingabe: 0 Parameter:       (N=20, a=0, b=1)
%          1 Parameter: N     (a=0,b=1)
%          3 Parameter: N,a,b
%----------------------------------
N=20; a=0; b=1; % Default-Einstellung
anzahl_parameter=nargin; % Anz. Input-argumente
if anzahl_parameter==1 
    N=varargin{1};
end;
if anzahl_parameter==3
    N=varargin{1}; a=varargin{2}; b=varargin{3};
end;
if anzahl_parameter~=[0 1 3]
    error('Falsche Anzahl an Input-Argumenten');
end;
x=(a+(b-a)/(2*N)):(b-a)/N:(b-(b-a)/(2*N));
y=x.^3;
% Berechnung des Integrals
result=(b-a)*sum(y)*(1/N);

close all; % Plot
x1=linspace(a,b,N+1);
y1=x1.^3;
for i=1:N
    fill([x1(i) x1(i)  x1(i+1) x1(i+1)], [0 y(i)  y(i) 0], 'r');
    hold on;
end;
plot(a:(b-a)/100:b,(a:(b-a)/100:b).^3,'LineWidth',3);
title(strcat('\int x^3 = ',num2str(result),' fuer N =', num2str(N))); 




