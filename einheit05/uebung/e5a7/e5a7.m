disp ('*** aufgabe 7');
clear all

% Anzahl Stützstellen
n = 101;

% Erzeugen des Gitters
x = 0:(1/n):1;
x_i = x(2:n);

% Aufstellen des lin. Gls.
A = diag(2*ones(1,n-1),0)...
   +diag(-1*ones(1,n-2),-1)...
   +diag(-1*ones(1,n-2),1);
F = (1/n)^2*sin(4*pi*x_i); % rechte Seite für f=1 

% Lösen des lin. Gls.
z_i = A\ F';

% Darstellen der Lösung
z = [0; z_i; 0];
figure
plot(x,z,'r*-');