%--------------------------------------------------
%         plot_funktion_3d_2.m
%
%    Beispiel der verschiedenen Moeglichkeiten eine
%     Funktion f:R^2 --> R zu plotten
%
% Gerd Rapin             29.11.2003
%---------------------------------------------------

% Erzeugen des Gitters
x=linspace(-2,2,30);
y=linspace(-2,2,30);
[X,Y]=meshgrid(x,y);

% Funktionswerte
Z=exp(-X.^2-Y.^2).*sin(pi*X.*Y);

% verschiedenen Darstellungen

subplot(2,2,1),
mesh(X,Y,Z);
title('Default');

subplot(2,2,2),
mesh(X,Y,Z),
hidden off,
title('keine versteckten Linien');

subplot(2,2,3),
surf(X,Y,Z);
shading('interp');
title('Shading');
 
subplot(2,2,4),
Z=X.^2.*Y;
meshz(X,Y,Z);
title('f(x,y)=x^2 y');







