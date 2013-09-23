disp ('*** aufgabe 4');
clear
% hyperharmonische Reihe (euler)
% hat den Grenzwert pi^2/6 
% damit ist der Gesamtgrenzwert: 1/6
j = 1:100000;
grenzwert = 1/pi^2*sum(1./j.^2)
error = abs(1/6 - grenzwert)
