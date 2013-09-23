disp('*** aufgabe 8');
clear

x = linspace (-3,3,50);

figure
for a = 1:20
    f = 1./(x.^2 + sqrt(a));
    plot(x,f);
    % Y-Achse festsetzen damit diese nicht springt.
    ylim ([0 1]);
    F(a) = getframe;
end
% Abspielen des Movies
movie(F,1);
