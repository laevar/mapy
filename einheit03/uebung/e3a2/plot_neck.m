function ecken = plot_neck(n)
% plotted ein regelmaessiges n-eck
% input:
%   n : anzahl ecken
% output:
%   ecken : die koordinaten der ecken 
% Jochen Schulz, 24.07.2009

x = sin(2*pi*(1:n)/n);
y = cos(2*pi*(1:n)/n);
ecken = [x' y'];

figure
x = [x' ; x(1)];
y = [y' ; y(1)];
plot(x,y, 'LineWidth',2);
axis equal
