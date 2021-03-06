disp ('*** aufgabe 5');
clear

x = linspace(-1,-0.4,401);
y = linspace(-0.6,0,401);

[X,Y] = meshgrid(x,y);
C = complex(X,Y);

it_max = 50;

Z = C; Anz = zeros(size(Z));

for k = 1:it_max
    Z = Z.^2+C;
    Anz = Anz + isfinite(Z);
end,
figure
image(x,y,Anz);
title('Mandelbrot Set', 'FontSize',16);