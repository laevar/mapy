close all
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

disp('*** aufgabe 2');
clear

a = 5;
x = linspace (-3,3,40);
f = 1./(x.^2+a);
figure
plot (x,f,'Linewidth',2);
grid on; box on;
title('$f(x) = \frac{1}{x^2+a}$','interpreter','latex')

disp('*** aufgabe 3');
clear

inverstring ('qwertz');

disp('*** aufgabe 4');
clear

x = linspace(0,1,100);

figure
hold on
xlabel('x');
ylabel('y');
grid on; box on;
xlim ([-0.1 1.1]);
ylim ([-1.1 1.1]);
plot (x,sin(0.5*pi*x),'b--','LineWidth',2);
plot (x,sin(pi*x),'k:','LineWidth',2);
plot (x,sin(2*pi*x),'g-','LineWidth',2);
plot (x,sin(4*pi*x),'m-.','LineWidth',2);
legend ('sin(0.5 \pi x)','sin(\pi x)','sin(2 \pi x)','sin(4 \pi x)',...
  'Location','SouthWest');

disp('*** aufgabe 5');
clear

integral

disp('*** aufgabe 6');
clear

x = linspace (-1,1,30);
[X,Y,Z] = meshgrid(x,x,x);
V = sin(4*pi*X).*sin(pi*Y).*Y.^2.*(Z.^2-1);
sx = [-0.4,0.4]; sy = [-0.6,0.6]; 
sz = [0.1];
figure
slice(X,Y,Z,V,sx,sy,sz)
shading interp
axis equal
alpha(0.6) % Transparency

disp('*** aufgabe 7');
clear

ecken = plot_neck(6);
streckenpunkte = [ecken ; ecken(1,:)];
figure; axis equal;
hold on;
axis equal;
for idx = 1:6
  vierstrecker(streckenpunkte(idx,:)',streckenpunkte(idx+1,:)',3)
end
hold off

disp('*** aufgabe 8');
clear

x = linspace(-1,1,40);
[X,Y] = meshgrid (x,x);

figure
subplot(2,2,1);
surf (X,Y,sin(pi^2*X.*Y) );
shading interp
subplot(2,2,2);
surf (X,Y,(X.^2 -1).*(Y.^2 -1));
shading interp
subplot(2,2,3);
surf (X,Y,sin(pi*X.^2) );
shading interp
subplot(2,2,4);
surf (X,Y,sin(-pi*exp(-X.^2 - Y.^2) ) );
shading interp


disp('*** aufgabe 9');
clear

x = linspace (-3,3,50);

figure
for a = 1:20
    f = cos(1./(x.^2 + sqrt(a)));
    plot(x,f);
    ylim ([0.6 1]);
    F(a) = getframe;
end
% Abspielen des Movies
movie(F,1);

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

