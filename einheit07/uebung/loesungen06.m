

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

bild_funktion

disp('*** aufgabe 5');
clear

plot_gui

disp('*** aufgabe 6');
clear

erzeugematrix(6)

