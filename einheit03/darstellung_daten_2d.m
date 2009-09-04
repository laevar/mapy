%-----------------------------
%  darstellung_daten_2d.m
%
%  Das Programm zeigt einige Visualisierungsmglichkeiten von Daten
%
%  Gerd Rapin   25.11.2003
%------------------------------
 
% Daten
n=linspace(0,10,40);
y=n.^2.*exp(-n);

% Balkendiagramm
subplot(2,2,1),
bar(y); title('Balkendiagramm');

% Histogramm
subplot(2,2,2),
hist(y,5); title('Histogramm');

% Area plot
subplot(2,2,3),
area(n,[2*y',y']); title('Area plot');

% Tortengrafik
subplot(2,2,4),
pie3([ 1 2 3 4]); title('Tortengrafik');
