function minzahl = folgenmin (xstart)
% Berechnet die kleinste Zahl n, fuer die 
% abs(x_(n+1) - x_n) <= 10^-4 gilt
% 
% input: 
%   xstart: Startwert der Folge
% output:
%   minzahl:  kleinste Zahl die die Bedingung erfuellt
%
% Jochen Schulz   11.08.2009

x(1) = xstart;
x(2) = 1/2*x(1) + 1/x(1);

n = 1;
while ( abs( x(n+1) - x(n) ) >  10^(-4) )
  n = n + 1;
  x(n+1) =  1/2*x(n) + 1/x(n);
  disp (['Differenz der Folgeglieder: ' num2str(abs( x(n+1) - x(n) )) ]);
end
minzahl = n;