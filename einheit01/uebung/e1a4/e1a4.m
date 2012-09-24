disp ('*** aufgabe 4');
clear
% hyperharmonische Reihe (euler)
% hat den Grenzwert pi^2/6 
% damit ist der Gesamtgrenzwert: 1/6
j = 1:10000;
1/pi^2*sum(1./j.^2)
