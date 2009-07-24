disp('*** aufgabe 1');
clear

disp( '9 + 0*x - 10*x^2 + 0*x^3 + 1*x^4' );
disp ([ 'laenge der vektoren bestimmen und abspeichern' ...
'n-fache replizierung des vektors x in einer matrix A' ...
'erzeugung der Matrix B, welche die Potenzen enthaelt' ...
'stellenweises potenzieren der eintraege von A mit B und somit erzeugung der einzelnen potenzterme' ...
'multiplizierung mit dem vektor a, fuer die auswertung der einzelnen polynom-werte pro x-wert' ]);

disp('*** aufgabe 2');
clear

addpath ('../')
% Koeffizienten
a = [-36 9 40 -10 -4 1]; 

x = linspace(0,4,30); % Betrachte [0,4]
y = ausw_poly2(a,x);

% Plotten
figure
plot(x,y,'r*-','LineWidth',3,'MarkerSize',4)

x0 = 2;
[xsolve,fval] = fsolve (@(x)ausw_poly2(a,x),x0)

roots(flipdim(a,2)) %Eigenwerte der begleitmatrix entsprechen den Nullstellen

figure
plot(x,polyval(flipdim(a,2),x))

disp('*** aufgabe 3');
clear

randwertaufgabe

disp('*** aufgabe 4');
clear
x = [ 1 2 3 4];
meanv(x)

disp('*** aufgabe 5');
clear

x = [ 1 2 3 4];
vanderv(x)

disp('*** aufgabe 6');
clear

fixpunkt_aufg

disp('*** aufgabe 7');
clear

nullstelle_cos2
 
disp('*** aufgabe 8');
clear

myhilbert(4)-hilb(4)

disp('*** aufgabe 9');
clear
roots([1 0 -2])
roots([1 -2 1] )
roots([1 -4 10] )

disp('*** aufgabe 10');
clear

[g,k] = fibonacci(10e-3)
[g,k] = fibonacci(10e-4)

disp('*** aufgabe 11');
clear

level = 3;

y1 = [0;0];
y2 = [2;1];

figure; axis equal;
hold on;
vierstrecker(y1,y2,level);
hold off;
