disp('*** aufgabe 3');
clear

a = 5;
x = linspace (-3,3,40);
f = 1./(x.^2+a);
figure
plot (x,f,'Linewidth',2);
grid on; box on;
title('$f(x) = \frac{1}{x^2+a}$','interpreter','latex')
