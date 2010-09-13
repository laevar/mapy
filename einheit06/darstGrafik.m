function darstGrafik()
% Callback-Funktion fuer die GUI, die durch bild_funktion.m erstellt wurde
A = get(findobj('tag','figGUI'),'UserData');
t = round(1+get(findobj('tag','slider'),'Value'));
set(findobj('tag','text1'), 'string', strcat('Zeit: t = ',num2str(t-1)) );
selection = findobj('tag','radio');
switch get(get(selection,'SelectedObject'),'tag')
  case 'r1'
    surf(A(:,:,t));
  case 'r2'
    mesh(A(:,:,t));
  case 'r3'
    contour(A(:,:,t));
  otherwise
    error('Keines oder zuviele entsprech. GUIs geoeffnet');
end
