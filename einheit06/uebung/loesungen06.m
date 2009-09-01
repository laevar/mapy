disp('*** aufgabe 1');
clear

sierpinski_plot
dreiecke = get(get(sploth,'Children'),'Children');
for idx = 1:length(dreiecke)
  if (get(dreiecke(idx),'Xdata') + get(dreiecke(idx),'Ydata') > 1/2)
    delete(dreiecke(idx))
  end
end

disp('*** aufgabe 2');
clear

sierpinski_plot
saxe = get(sploth,'Children');
for idx = 1:4
  fig(idx) = figure;
  copyobj(saxe,fig(idx));
end

disp('*** aufgabe 3');
clear

integral_gui

disp('*** aufgabe 4');
clear

graph

disp('*** aufgabe 5');
clear

bild_funktion

disp('*** aufgabe 6');
clear

plot_gui

disp('*** aufgabe 7');
clear

erzeugematrix(6)

