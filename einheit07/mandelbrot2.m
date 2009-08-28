%---------------- mandelbrot2.m
close all;
clear all;

MAX_IT = 150;

tic;

x1 = linspace(-2.1,0.6,201);
y1 = linspace(-1.1,1.1,401);

C=mandel_c(x1,y1);

disp('Benoetigte Zeit')
toc;

C = (1/MAX_IT) * C;

% Plotten der Funktion
contourf(x1,y1,C,20);
