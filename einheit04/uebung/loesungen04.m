close all
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

disp('*** aufgabe 1');
clear

fid = fopen('daten.dat','r');
daten = fscanf(fid,'%f %f',[2 inf])
fclose(fid);
  
x = daten(1,:);
f = daten(2,:);
figure
plot (x,f);

disp('*** aufgabe 2');
clear
x = rand (2000,1);
y = rand (2000,1);
z = sin (4*pi*x) .* cos (2*pi*y);

figure
plot3(x,y,z,'.');

xi = linspace(min(x),max(x),40);
yi = linspace(min(y),max(y),40);
[XI,YI] = meshgrid(xi,yi);
ZI = griddata(x,y,z,XI,YI,'cubic');
ZIl = griddata(x,y,z,XI,YI,'linear');
ZIn = griddata(x,y,z,XI,YI,'nearest');
%ZI4 = griddata(x,y,z,XI,YI,'v4');

figure
subplot(3,3,1)
surf(XI,YI,ZI);
shading interp
subplot(3,3,2)
mesh(XI,YI,ZI);
subplot(3,3,3)
[C,h] = contour(XI,YI,ZI);
clabel(C,h,'fontsize',8);

subplot(3,3,4)
surf(XI,YI,ZIl);
shading interp
subplot(3,3,5)
mesh(XI,YI,ZIl);
subplot(3,3,6)
contour(XI,YI,ZIl);

subplot(3,3,7)
surf(XI,YI,ZIn);
shading interp
subplot(3,3,8)
mesh(XI,YI,ZIn);
subplot(3,3,9)
contour(XI,YI,ZIn);

disp('*** aufgabe 3');
clear

load census
figure; plot (cdate,pop);
xlim([min(cdate) 2050]);
%420.000

disp('*** aufgabe 4');
clear

mandel

disp('*** aufgabe 5');
clear

[nrrows, nrchars, mcuchar] = einlesen('text.txt');

disp('*** aufgabe 6');
clear

x = 4;
n = 3;
ergebnis = potenz (x,n)

disp('*** aufgabe 7');
clear

minzahl = folgenmin(2)

disp('*** aufgabe 8');
clear

x = [ 1 2 3 4];
y = [ 0 3 2 4];
x1 = (y-x > 0) & (x ~= 1)

x = sin(1:100);
x2 = length(x)

x = linspace(0,1,10);
y = 1:2:6;
x3 = x(y)

disp('*** aufgabe 9');
clear

x = 100:200;
y = linspace(300,400,100);
z = x.*y.*2
% 100:200 erzeugt einen punkt mehr, daher stimmen die matrizengroessen
% nicht ueberein.

clear all
z(5) = 10;
a = (6:10).^z;
b = a.*ones(5,1)
% hier stimmt zwar die groesse der vektoren, aber die orientierung ist
% nicht korrekt. Ein Zeilenvektor kann nicht direkt per .* mit einem
% Spaltenvektore multipliziert werden.
