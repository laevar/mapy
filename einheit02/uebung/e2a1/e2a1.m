disp ('*** aufgabe 1');
clear
% Bereits hier ist der numerische Fehler sichtbar, da nicht alle Stellen
% nach der moeglichen Genauigkeit automatisch 0 sind.
x = 1e-15; ((1+x)-1)/x
% bei der Addition 1+x wird abgerundet und es kommt wieder 1 heraus. Dann
% ist 1-1 natuerlich 0
x = 1e-16; ((1+x)-1)/x