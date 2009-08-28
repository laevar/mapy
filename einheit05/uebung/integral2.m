function result = integral2(varargin)
%----------------------------------
%   integral2.m
% 
% berechnet approximativ das Integral von f 
% ueber  (a,b) durch die Mittelpunktregel 
% Hilfe von N Punkten
%
% input:
%   1 Parameter: f       (N=20, a=0, b=1)
%   2 Parameter: f,N     (a=0,b=1)
%   4 Parameter: f,N,a,b
% Jochen Schulz     27.08.2009
%----------------------------------
N = 20; a = 0; b = 1; % Default-Einstellung
anzahl_parameter = nargin; % Anz. Input-argumente
if anzahl_parameter == 2 
    N = varargin{2};
end;
if anzahl_parameter == 4
    N = varargin{2}; a = varargin{3}; b = varargin{4};
end;
if anzahl_parameter ~= [1 2 4]
    error('Falsche Anzahl an Input-Argumenten');
end;

f = fcnchk(varargin{1},'vectorized'); % eventuelle Umwandlung von Strings
x = (a+(b-a)/(2*N)):(b-a)/N:(b-(b-a)/(2*N));
y = feval(f,x);
% Berechnung des Integrals
result = (b-a)*sum(y)*(1/N);

%close all; % Plot
figure
hold on;
x1 = linspace(a,b,N+1);
y1 = x1.^3;
for i = 1:N
    fill([x1(i) x1(i)  x1(i+1) x1(i+1)], [0 y(i)  y(i) 0], 'r');
end;
plot(a:(b-a)/100:b,feval(f,a:(b-a)/100:b),'LineWidth',3);
title(strcat('\int f dx \approx',num2str(result),' fuer N =', num2str(N))); 
hold off

