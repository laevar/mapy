%--------------------------------------------------
%         plot_funktion_3d.m
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
title('mesh');

subplot(2,2,2),
surf(X,Y,Z);
title('surf');

subplot(2,2,3),
contour(X,Y,Z,10);
title('contour');
 
subplot(2,2,4),
surfc(X,Y,Z);
view(-26,20);
title('surfc');







