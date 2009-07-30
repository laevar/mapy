close all
disp('*** aufgabe 1');
clear

fid = fopen('daten.dat','r');
daten = fscanf(fid,'%f');
fclose(fid);
  
x = daten(1:2:122,:);
f = daten(2:2:122,:);
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
contour(XI,YI,ZI);

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

[nrrows, nrchars, mcuchar] = einlesen('daten.dat');

disp('*** aufgabe 6');
clear
