disp('*** Aufgabe 6');
clear all, close all
% Programm zur Loesung von x=cos(x)
xn = 1; % Startwert Newton
xf = xn; % Startwert Fixpunktiteration
xr = 0.739085133215161; % wahre Loesung
xnlist = xn-xr;% Fehlerliste 
xflist = xf-xr;% Fehlerliste 
for i=1:15
  % Newton
  xn = xn-(xn-cos(xn))/(1+sin(xn)); 
  xnlist = [xnlist xn-xr];
  %Fixpunktiteration
  xf = cos(xf); 
  xflist = [xflist xf-xr];
end
% Listenausgabe
format long
xnlist'
xflist'
% Plotausgabe
semilogy(1:length(xnlist),abs(xnlist),'r*-',1:length(xflist),abs(xflist),'b*-')
legend('newton','fixpuktiteration')
title('Loesung von x=cos(x)')
xlabel('Iterationen')
ylabel('Fehler im X-Wert')

