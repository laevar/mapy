function mandelbox (cent, xmin, xmax, ymin, ymax)
x = linspace(cent(1)+xmin, cent(1)+xmax, 401);
y = linspace(cent(2)+ymin, cent(2)+ymax, 401);

[X,Y] = meshgrid(x,y);
C = complex(X,Y);

it_max = 50;

Z = C; Anz = zeros(size(Z));

for k = 1:it_max
    Z = Z.^2+C;
    Anz = Anz + isfinite(Z);
    %waitbar(k/it_max);
end,
image(x,y,Anz);
title('Mandelbrot Set', 'FontSize',16);