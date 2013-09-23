disp('*** aufgabe 6');
clear
%4d-Funtion (volumetrische Daten) daher z.B. farblich markierte Schnitte durch das Volumen

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