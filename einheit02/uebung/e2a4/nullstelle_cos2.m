%---------------------------------------------
%                fixpunkt.m
%
%  berechnet naeherungsweise einen Fixpunkt
%
% Gerd Rapin                    6.11.2003 
%----------------------------------------------
clear 

% Plot 1
x = linspace(0,1.5,50);
y = cos(x).^2;

% Anfangswert
z(1) = 1.1;
% Iterationsschritte 
it_max = 1000;

for i = 1:it_max
    z(i+1) = ( cos(z(i)).^2 );
end;
% Ueberpruefe Loesung
cos(z(i+1))^2-z(i+1)
