% Erzeugen des Gitters
x=linspace(-2,2,30);
y=linspace(-2,2,30);
[X,Y]=meshgrid(x,y);
% Funktionswerte
Z=exp(-X.^2-Y.^2).*sin(pi*X.*Y);

% verschiedene Darstellungen
subplot(2,2,1),
 contourf(X,Y,Z,10), title('contourf')
subplot(2,2,2),
 contour(X,Y,Z,[0 0.2 0.4]), title('special contours');
subplot(2,2,3),
 [C,h]=contour(X,Y,Z,[0 0.05 0.1 0.15 0.2 ]); 
 title('contour with labeling');
 clabel(C,h)
subplot(2,2,4),
  contour3(X,Y,Z,10), title('contour3')