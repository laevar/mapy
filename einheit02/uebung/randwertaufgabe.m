function [z] = randwertaufgabe(n)
%------------------------------------
%     randwertaufgabe.m 
%   
%  berechnet mit Finiten Differenzen die Loesung u von
%  -u''=f in (0,1), u(0)=u(1)=0
%
%  Jochen Schulz           07.09.2009
%-------------------------------------------

if (n < 10 & n > 200 )
  disp(['Die Anzahl der Stuetzstellen ist nicht im Bereich vbon 10-200']);
  exit
end

% Erzeugen des Gitters
x = 0:(1/n):1;
x_i = x(2:n);

% Aufstellen des lin. Gls.
A = diag(2*ones(1,n-1),0)...
   +diag(-1*ones(1,n-2),-1)...
   +diag(-1*ones(1,n-2),1);
F = (1/n)^2*exp(x_i); % rechte Seite fuer f=1 

% Loesen des lin. Gls.
z_i = A\ F';

% Darstellen der Loesung
z = [0; z_i; 0];
figure
plot(x,z,'r*-');
