disp('*** aufgabe 2');
clear

ecken = plot_neck(6);
streckenpunkte = [ecken ; ecken(1,:)];
figure; axis equal;
hold on;
axis equal;
for idx = 1:6
  vierstrecker(streckenpunkte(idx,:)',streckenpunkte(idx+1,:)',3)
end
hold off
