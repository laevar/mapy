profile off
close all
tic
profile on -history -timer real
interpolation('x.^2',1000)
profile viewer
toc