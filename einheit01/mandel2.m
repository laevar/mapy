% Mandelbrot set
% MANDEL.m
clear 
x=linspace(-2.1,0.6,1001);
y=linspace(-1.1,1.1,1001);

[X,Y]=meshgrid(x,y);
C=complex(X,Y);

Z_max=1e6; it_max=50;

Z=C;
Z2=C;
for k=1:it_max
    Z=Z.^2+C;
    Z2(abs(Z)>Z_max) = k;
    waitbar(k/it_max);
end
%contourf(x,y,abs(Z)<Z_max,10);
image(x,y,abs(Z2));
axis tight
title('Mandelbrot Set', 'FontSize',16);

