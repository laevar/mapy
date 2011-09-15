close all

disp('*** aufgabe 1');
clear

fid = fopen('daten.dat','r');
daten = fscanf(fid,'%f %f',[2 inf])
lz = textscan(fid,'%s %s');
fclose(fid);
  
x = daten(1,:);
f = daten(2,:);
figure
plot (x,f);
xlabel(lz{1})
ylabel(lz{2})

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
methods ={'natural','linear','nearest'}
figure
for k = 1:3
    F = TriScatteredInterp(x,y,z,methods{k});
    ZI = F(XI,YI);
    subplot(3,3,(k-1)*3+1)
    surf(XI,YI,ZI);
    shading interp
    subplot(3,3,(k-1)*3+2)
    mesh(XI,YI,ZI);
    subplot(3,3,(k-1)*3+3)
    [C,h] = contour(XI,YI,ZI);
    clabel(C,h,'fontsize',8);
end
    
disp('*** aufgabe 3');
clear

load census
figure; plot (cdate,pop);
xlim([min(cdate) 2050]);
%420.000

disp('*** aufgabe 4');
clear

[nrrows, nrchars, mcuchar] = einlesen('text.txt');

disp('*** aufgabe 5');
clear

x = 4;
n = 3;
ergebnis = potenz (x,n)


disp('*** aufgabe 6');
clear

mandel



disp('*** aufgabe 7');
clear

minzahl = folgenmin(2)

