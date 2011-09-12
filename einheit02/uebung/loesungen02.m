disp ('*** aufgabe 1');
clear
x = 1e-15; ((1+x)-1)/x
x = 1e-16; ((1+x)-1)/x

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

disp('*** aufgabe 4');
clear

[z] = randwertaufgabe(40);


disp('*** aufgabe 5');
clear

fixpunkt_aufg

disp('*** aufgabe 6');
clear

nullstelle_cos2
 
disp('*** aufgabe 7');
clear

myhilbert(4)-hilb(4)

disp('*** aufgabe 8');
clear

%x²-2
p = 0;
q = -2;
[anz,nulls] = quad_gl(p,q)
roots([1 0 -2])

%x²-2x +1
p = -2;
q = 1;
[anz,nulls] = quad_gl(p,q)
roots([1 -2 1] )

%x²-4x +10
p = -4;
q = 10;
[anz,nulls] = quad_gl(p,q)
roots([1 -4 10] )

disp('*** aufgabe 9');
clear

[g,k] = fibonacci(1e-3)
[g,k] = fibonacci(1e-4)

disp('*** aufgabe 10');
clear

level = 3;

y1 = [0;0];
y2 = [2;1];

figure; axis equal;
hold on;
vierstrecker(y1,y2,level);
hold off;

disp ('*** aufgabe 11');
clear
% Anzahl Stützstellen
n = 101;

% Erzeugen des Gitters
x = 0:(1/n):1;
x_i = x(2:n);

% Aufstellen des lin. Gls.
A = diag(2*ones(1,n-1),0)...
   +diag(-1*ones(1,n-2),-1)...
   +diag(-1*ones(1,n-2),1);
F = (1/n)^2*ones(n-1,1); % rechte Seite für f=1 

% Lösen des lin. Gls.
z_i = A\ F;

% Darstellen der Lösung
z = [0; z_i; 0];
figure
plot(x,z,'r*-');

disp ('*** aufgabe 12');
clear
A = vander(0:0.02:1);
norm(A,'fro')
sqrt(sum(sum(A.^2)))

disp ('*** aufgabe 13');
clear
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


