disp('*** aufgabe 2');
clear
% zufaellige Koordinaten
x = rand (2000,1);
y = rand (2000,1);
z = sin (4*pi*x) .* cos (2*pi*y);

figure
plot3(x,y,z,'.');

xi = linspace(min(x),max(x),40);
yi = linspace(min(y),max(y),40);
[XI,YI] = meshgrid(xi,yi);

% Iteration ueber die verschiedenen Methoden
methods ={'natural','linear','nearest'};
figure
for k = 1:3
    F = TriScatteredInterp(x,y,z,methods{k});
    ZI = F(XI,YI);
    subplot(3,3,(k-1)*3+1)
    surf(XI,YI,ZI);
    shading interp
    subplot(3,3,(k-1)*3+2)
    mesh(XI,YI,ZI);
    subplot(3,3,(k-1)*3+3)
    [C,h] = contour(XI,YI,ZI);
    clabel(C,h,'fontsize',8);
end