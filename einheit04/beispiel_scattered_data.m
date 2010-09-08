%--------------- beispiel_scattered_data.m

load seamount
plot(x,y,'.','markersize',10)
figure, plot3(x,y,z,'.')

xi = linspace(min(x),max(x),40);
yi = linspace(min(y),max(y),40);
[XI,YI] = meshgrid(xi,yi);

figure
ZI = griddata(x,y,z,XI,YI,'cubic');
surf(XI,YI,ZI)

F = TriScatteredInterp(x,y,z,'linear');
ZI = F(XI,YI);
figure
surf(XI,YI,ZI)