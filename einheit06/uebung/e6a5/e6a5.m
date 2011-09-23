disp('*** Aufgabe 5');
clear all, close all

% Das Programm ist nicht optimiert sondern zeigt alle Alternativen. 
% eine triviale Optimierung durch Auswahl geeigneter Funktionen 
% aus den Alternativen jedoch moeglich.
profile off
close all
tic
profile on -history -timer real
interpolation('x.^2',1000)
profile viewer
toc