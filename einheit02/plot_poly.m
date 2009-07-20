%------------------------------------
%     plot_poly.m 
%   
%  zeichnet den Graphen eines Polynoms
% 
%
%  Gerd Rapin           1.11.2003
%-------------------------------------------

% Koeffizienten
a = [9 0 -10 0 1]; 

x = linspace(0,4,30); % Betrachte [0,4]
y = ausw_poly2(a,x);

% Plotten
plot(x,y,'r*-','LineWidth',3,'MarkerSize',4)
