x = linspace(-2.1,0.6,601);
y = linspace(-1.1,1.1,401);

[X,Y] = meshgrid(x,y);
C = complex(X,Y);

it_max = 50;

Z = C; Anz = zeros(size(Z));

for k = 1:it_max
    Z = Z.^2+C;
    Anz = Anz + isfinite(Z);
    waitbar(k/it_max);
end,
image(x,y,Anz);
title('Mandelbrot Set', 'FontSize',16);
