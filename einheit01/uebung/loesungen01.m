disp('*** aufgabe 1');
clear
A = [ 2 3 4 5; 1 1 1 1 ; 1 0 1 0; 9 3 2 1];
b = [14 4 2 15];
x = A\b'

disp('*** aufgabe 2');
clear
A = [ 1 2 3; 4 5 6; 7 8 9];
b = [6 15 24];
x = A\b'

disp ('*** aufgabe 3');
clear
A = [0 1 1 0; 1 2 0 0; 0 3 1 1; 1 4 0 1];
b = [0 0 0 0];
x = A\b'

disp ('*** aufgabe 4');
clear
x = 1e-15; ((1+x)-1)/x
x = 1e-16; ((1+x)-1)/x

disp ('*** aufgabe 5');
clear

j=2:1000;
sum(1./log(j).*j)

j=1:1000;
idx=ones(1000,1);
1./j*idx

disp ('*** aufgabe 6');
clear
j=1:10000;
1/pi^2*sum(1./j.^2)

disp ('*** aufgabe 7');
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

disp ('*** aufgabe 8');
clear
%a =100:2:200; b=[1 4 1 0 ] ; a (b)
disp (['b wird in diesem zusammenhang als index interpretiert, da er' ...
  'aber nicht die gleiche laenge wie a hat, bricht matlab ab']);

disp ('*** aufgabe 9');
clear

A = diag (2*ones(100,1),0) + ...
    diag (-1*ones(99,1),-1) + ...
    diag (-1*ones(99,1),1);
det(A)

disp ('*** aufgabe 10');
clear
% Anzahl Stützstellen
n=101;

% Erzeugen des Gitters
x=0:(1/n):1;
x_i=x(2:n);

% Aufstellen des lin. Gls.
A = diag(2*ones(1,n-1),0)...
   +diag(-1*ones(1,n-2),-1)...
   +diag(-1*ones(1,n-2),1);
F=(1/n)^2*ones(n-1,1); % rechte Seite für f=1 

% Lösen des lin. Gls.
z_i=A\ F;

% Darstellen der Lösung
z=[0; z_i; 0];
figure
plot(x,z,'r*-');

disp ('*** aufgabe 11');
clear

A = hilb(50); 
sum(A(3,:))

disp ('*** aufgabe 12');
clear
A = vander(0:0.02:1);
norm(A,'fro')
sqrt(sum(sum(A.^2)))

disp ('*** aufgabe 13');
clear
% Anzahl Stützstellen
n=101;

% Erzeugen des Gitters
x=0:(1/n):1;
x_i=x(2:n);

% Aufstellen des lin. Gls.
A = diag(2*ones(1,n-1),0)...
   +diag(-1*ones(1,n-2),-1)...
   +diag(-1*ones(1,n-2),1);
F=(1/n)^2*sin(4*pi*x_i); % rechte Seite für f=1 

% Lösen des lin. Gls.
z_i=A\ F';

% Darstellen der Lösung
z=[0; z_i; 0];
figure
plot(x,z,'r*-');

disp ('*** aufgabe 14');
clear

A = [30 1 2 3; 4 15 -4 -2; -1 0 3 5; -3 5 0 -1];
[V,D] = eig(A)
[Q,R] = qr(A) 

disp ('*** aufgabe 15');
clear
n = 15;
A = hilb(n);
x = ones(n,1);
b = A*x
norm(x - A\b)
cond (A)

disp([ 'Da die Hilbertmatrix schlecht konditioniert ist, und dieser Effekt' ...
    'mit der Groesse steigt, ist auch das loesen des linearen Gleichungssystems ' ...
    'aufgrund von numerischen Rundungsfehlern instabil und bricht bereits frueh zusammen' ]);
