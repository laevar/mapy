% This example shows how the properties of a 
% graphic can be modified
close all;

% Generate Grid
x = linspace(-2,2,30);
[X,Y] = meshgrid(x,x);

% Function Values
Z = exp(-X.^2-Y.^2).*sin(pi*X.*Y);

% Plot graphic
h = surf(X,Y,Z);

k = get(h,'Parent'); % Handle for the graphics object
Angles = get (k,'View');

for l = 1:360
    set(k,'View',Angles+l);
    pause(1/60)
end

