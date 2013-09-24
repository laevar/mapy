function p=interpol2_for(x,y)
% interpol2 berechnet zu n+1 Punkten (x_i,y_i)
%           das Polynom n-ten Grades, das druch die
%           n+1 Punkte verlaeuft
%           INPUT: Vektoren x,y
%           OUTPUT: Koeffizientenvektor p
%   Gerd Rapin    23.11.2003

% Aufstellen des lin. GLS
A=vandermonde2(x);

% Loesen des lin GLS
p=A\y';
