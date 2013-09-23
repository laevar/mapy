disp('*** aufgabe 2');
clear

sierpinski_plot
sploth = findobj('type','figure');
saxe = get(sploth,'Children');
for idx = 1:4
  fig(idx) = figure;
  copyobj(saxe,fig(idx));
end
