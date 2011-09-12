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

B=zeros(5);
B(:,5) = -a(1:5);
B(2:5,1:4)=eye(4);
eig(B)

% Plotten
figure
plot(x,y,'r*-','LineWidth',3,'MarkerSize',4)


disp ('*** aufgabe 3');
clear

j = 2:1000;
sum(1./log(j).*j)

j = 1:1000;
idx = ones(1000,1);
1./j*idx

disp ('*** aufgabe 4');
clear
j = 1:10000;
1/pi^2*sum(1./j.^2)

disp ('*** aufgabe 5');
clear

x = linspace(-1,-0.4,401);
y = linspace(-0.6,0,401);

[X,Y] = meshgrid(x,y);
C = complex(X,Y);

it_max = 50;

Z = C; Anz = zeros(size(Z));

for k = 1:it_max
    Z = Z.^2+C;
    Anz = Anz + isfinite(Z);
end,
figure
image(x,y,Anz);
title('Mandelbrot Set', 'FontSize',16);

disp ('*** aufgabe 6');
clear
a =100:2:200; b=[1 4 10] ; a (b)

disp ('*** aufgabe 7');
clear

A = diag (2*ones(100,1),0) + ...
    diag (-1*ones(99,1),-1) + ...
    diag (-1*ones(99,1),1);
det(A)

disp ('*** aufgabe 8');
clear

A = hilb(50);
sum(A(:,3))

disp('*** aufgabe 9');
clear
x = [ 1 2 3 4];
meanv(x)

disp('*** aufgabe 10');
clear

x = [ 1 2 3 4];
vanderv(x)
