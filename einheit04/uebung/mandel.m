% Mandelbrot-Fraktal
% Die Mandelbrot-Menge ist die Menge von Punkten c∈C bei denen die Folge (zn)n, die durch
% z_0 := c, z_{n+1} = z^2_n + c, n \in N
% definiert ist, beschränkt ist.
% 
% Das Programm mandel() gibt zu x+iy die relative Anzahl der Iterationsschritte zurück.
x = linspace(-2.1,0.6,601);
y = linspace(-1.1,1.1,401);

[X,Y] = meshgrid(x,y);
C = complex(X,Y);

it_max = 50;
Z = C; 
Anz = zeros(size(Z));

for k = 1:it_max
    Z = Z.^2+C;
    Anz = Anz + isfinite(Z); %isfinite checks if Z has finite values
    waitbar(k/it_max);%creates waitbar for calculation
end
image(x,y,Anz);
title('Mandelbrot Set', 'FontSize',16);
