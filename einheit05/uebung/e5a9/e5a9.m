disp('*** aufgabe 9');
clear

f = @(x) x.^2+exp(-abs(x));

% Stellen an denen der Fehler ausgerechnet werden soll
xf = linspace(-5,5,200);
yf = f(xf);

% Stuetzstellen der Interpolation
x = linspace(-5,5,13)
interpol

% Maximalen Fehler bestimmen
y1 = ausw_poly2(p',xf);
fprintf ('abs : %f  ,  rel : %f\n',max(abs(y1'-yf)),max(abs(y1'-yf)./abs(yf)))

% Stuetzstellen der Interpolation
x = -5*cos(pi*(1:13-1)/12)
interpol

% Maximalen Fehler bestimmen
y1 = ausw_poly2(p',xf);
fprintf ('abs : %f  ,  rel : %f\n',max(abs(y1'-yf)),max(abs(y1'-yf)./abs(yf)))

% Stuetzstellen der Interpolation
x = -5*cos(pi*(1:50-1)/49);
interpol

% Maximalen Fehler bestimmen
y1 = ausw_poly2(p',xf);
fprintf ('abs : %f  ,  rel : %f\n',max(abs(y1'-yf)),max(abs(y1'-yf)./abs(yf)))

% Heuristik: Die Polynom-interpolation an den naiv gewaehlten Punkten ist schlecht, da
% wir nach aussen hin Kontrolle ueber unsere Funktionswerte verlieren. Die
% Wahl der cos-Stuetzstellen sorgt dafuer, dass wir mehr Stuetzstellen am
% Rand der Funktion bekommen und diesem Problem entgegen wirken.