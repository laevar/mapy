disp('*** aufgabe 9');
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