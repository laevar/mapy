







disp('*** aufgabe 10');
clear
% Wiederholung aufgabe 2, blatt 1

a = [-36 9 40 -10 -4 1]; 
x = linspace(0,4,30); % Betrachte [0,4]
%alternative
x0 = 2;
[xsolve,fval] = fsolve (@(x)ausw_poly2(a,x),x0)

roots(flipdim(a,2)) %Eigenwerte der begleitmatrix entsprechen den Nullstellen
figure
plot(x,polyval(flipdim(a,2),x))

