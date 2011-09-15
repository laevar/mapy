%--------------- beispiel_scattered_data.m

load seamount
plot(x,y,'.','markersize',10)
figure
plot3(x,y,z,'.')
grid on

xi = linspace(min(x),max(x),40);
yi = linspace(min(y),max(y),40);
[XI,YI] = meshgrid(xi,yi);

F = TriScatteredInterp(x,y,z,'linear');
ZI = F(XI,YI);
figure
surf(XI,YI,ZI)