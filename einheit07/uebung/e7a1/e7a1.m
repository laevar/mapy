disp('*** aufgabe 1');
clear

sierpinski_plot
% Figure handle besorgen
sploth = findobj('type','figure');
% alle Dreiecke besorgen
dreiecke = get(get(sploth,'Children'),'Children');
for idx = 1:length(dreiecke)
  % Wenn ein Punkt die Bedingung erfuellt, wird das Dreieck geloescht. 
  if (sum(get(dreiecke(idx),'Xdata') + get(dreiecke(idx),'Ydata') >= 1/2) > 0 )
    delete(dreiecke(idx))
  end
end