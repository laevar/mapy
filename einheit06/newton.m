% Programm zur Loesung von x=cos(x)
xn = 1; % Startwert Newton
xr = 0.739085133215161; % wahre Loesung
xnlist = xn-xr;% Fehlerliste 
for i=1:15
  xn = xn-(xn-cos(xn))/(1+sin(xn)); % Newton
  xnlist = [xnlist xn-xr];
end
% Listenausgabe
format long
xnlist'
% Plotausgabe
semilogy(1:length(xnlist),abs(xnlist),'r*-')
title('Loesung von x=cos(x)')
xlabel('Iterationen')
ylabel('Fehler im X-Wert')
