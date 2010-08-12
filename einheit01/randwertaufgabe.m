%------------------------------------
%     randwertaufgabe.m 
%   
%  berechnet mit Finiten Differenzen die Lösung u von
%  -u''=f in (0,1), u(0)=u(1)=0
%
%  Gerd Rapin           31.10.2003
%  Jochen Schulz        12.8.2010
%-------------------------------------------

% Anzahl Stuetzstellen
n = 41;

% Erzeugen des Gitters
x = 0:(1/n):1;
x_i = x(2:n);

% Aufstellen des lin. Gls.
A = diag(2*ones(1,n-1),0)...
   +diag(-1*ones(1,n-2),-1)...
   +diag(-1*ones(1,n-2),1);
F = (1/n)^2*transpose(exp(x_i)); % rechte Seite fuer f=exp(x) 

% Loesen des lin. Gls.
z_i = A\ F;

% Darstellen der Loesung
z = [0; z_i; 0];
plot(x,z,'r*-');
%plot(x_i,exp(x_i))
