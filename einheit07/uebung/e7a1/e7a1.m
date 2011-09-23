disp('*** aufgabe 1');
clear

sierpinski_plot
dreiecke = get(get(sploth,'Children'),'Children');
for idx = 1:length(dreiecke)
  if (sum(get(dreiecke(idx),'Xdata') + get(dreiecke(idx),'Ydata') >= 1/2) > 0 )
    delete(dreiecke(idx))
  end
end