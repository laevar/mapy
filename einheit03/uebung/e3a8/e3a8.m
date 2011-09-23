disp('*** aufgabe 8');
clear

x = linspace (-3,3,50);

figure
for a = 1:20
    f = cos(1./(x.^2 + sqrt(a)));
    plot(x,f);
    ylim ([0.6 1]);
    F(a) = getframe;
end
% Abspielen des Movies
movie(F,1);