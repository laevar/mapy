disp('*** Aufgabe 7');
clear all, close all
global xnsolve

% Programm zur Loesung von x=cos(x)
xn = 1; % Startwert Newton
xf = xn; % Startwert Fixpunktiteration
xr = 0.739085133215161; % wahre Loesung
xnlist = xn-xr;% Fehlerliste 
xflist = xf-xr;% Fehlerliste 
for i=1:15
  % Newton
  xn = xn-(xn-cos(xn))/(1+sin(xn)); 
  xnlist = [xnlist xn-xr]; % Funktioniert, da x = funktionswert
  %Fixpunktiteration
  xf = cos(xf); 
  xflist = [xflist xf-xr];
end
% trust-region-dogleg von Matlab
options = optimset('display','iter','OutputFcn',@outfun,'TolX',1e-16,'TolFun',1e-16)
[xsolve,fval,exitflag,output]  = fsolve(@(x) x - cos(x),1,options)

% Plotausgabe
semilogy(1:length(xnlist),abs(xnlist),'r*-',1:length(xflist),abs(xflist),'b*-',1:length(xnsolve),abs(xnsolve),'g*-')
legend('newton','fixpuktiteration','trust-region-dogleg')
title('Loesung von x=cos(x)')
xlabel('Iterationen')
ylabel('Fehler im X-Wert')

