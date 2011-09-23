disp('*** aufgabe 7');
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