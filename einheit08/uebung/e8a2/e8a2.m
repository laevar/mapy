disp('*** aufgabe 2');
clear

mex vektor.c
x = linspace(0.2,1,10);
[mean,product] = vektor(x)