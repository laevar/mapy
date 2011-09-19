% profile inline-function vs. native function
x = linspace(1,100,1000000);
fin = inline('exp(x).*x.^2');
profile on -history -timer real
fin(x);
fout(x);
profile viewer
p = profile('info');
