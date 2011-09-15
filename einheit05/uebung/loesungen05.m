close all
disp('*** aufgabe 1');
clear

tspan = [0,7]; aw = [0.5; 0.5];
[t,y] = ode45(@rechte_seite,tspan,aw);
plot(y(:,1),y(:,2),'-','Linewidth',3)
xlabel('y(1)'), ylabel('y(2)')

disp('*** aufgabe 2');
clear

tspan = [0,3]; aw = [1; 0 ; 0];
[t1,y1] = ode45(@rechte_seite2,tspan,aw);
[t2,y2] = ode15s(@rechte_seite2,tspan,aw);
figure
hold on
plot3(y1(:,1),y1(:,2),y1(:,3),'r-','Linewidth',1)
plot3(y2(:,1),y2(:,2),y2(:,3),'b-','Linewidth',1)
box on, grid on
xlabel('y(1)'), ylabel('y(2)'), zlabel ('y(3)')
hold off

disp('*** aufgabe 3');
clear

integral2 ('x^3',50,-3,3)
integral2 ('x^2*sin(pi*x)',50,1,4)

disp('*** aufgabe 4');
clear

g = '(1 - abs(x^2))*(abs(x) < 1)';
ezplot(g,[-2 2]);

disp('*** aufgabe 5');
clear

ezplot('sin(x)*cos(2*x)',[-pi,2*pi]);
legend({'sin(x)*cos(2*x)'},'FontSize',21)
set(gca,'XTick',-pi:pi/2:2*pi)
set(gca,'XTickLabel',[num2str([-1:1/2:2]') repmat(' pi',7,1)],'FontSize',14)

disp('*** aufgabe 6');
clear

interpolation('x^2',50);

disp('*** aufgabe 7');
clear

myfplot('sin(x)*sin(y)');
myfplot('sin(x)*sin(y)',5);


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



disp('*** aufgabe 1');
clear

% Stuetzstellen
x = linspace(-5,5,13);
interpol

y1 = ausw_poly2(p',x);
max(abs(y1'-y))

% Stuetzstellen
x = -5*cos(pi*(1:13-1)/12);
interpol

y1 = ausw_poly2(p',x);
max(abs(y1'-y))

% Stuetzstellen
x = -5*cos(pi*(1:50-1)/49);
interpol

y1 = ausw_poly2(p',x);
max(abs(y1'-y))


disp('*** aufgabe 1');
addpath ('../')
% Koeffizienten
a = [-36 9 40 -10 -4 1]; 

x = linspace(0,4,30); % Betrachte [0,4]
y = ausw_poly2(a,x);

disp('*** aufgabe 10');
clear
% Wiederholung aufgabe 2, blatt 1

a = [-36 9 40 -10 -4 1]; 
x = linspace(0,4,30); % Betrachte [0,4]
%alternative
x0 = 2;
[xsolve,fval] = fsolve (@(x)ausw_poly2(a,x),x0)

roots(flipdim(a,2)) %Eigenwerte der begleitmatrix entsprechen den Nullstellen
figure
plot(x,polyval(flipdim(a,2),x))

