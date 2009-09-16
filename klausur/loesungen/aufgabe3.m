% Aufgabe 3

x=linspace(0,pi,40);
[X,Y]=meshgrid(x,x);
Z=sin(X.^2).*cos(Y.^2);
mesh(X,Y,Z)
