disp('*** Aufgabe 6');
clear all, close all

% Das Programm ist nicht optimiert sondern zeigt alle Alternativen. 
% eine triviale Optimierung durch Auswahl geeigneter Funktionen 
% aus den Alternativen jedoch moeglich.
% Mit unseren bisherigen Mitteln ist eine weitere Optimierung schwierig 
profile off
close all
tic
profile on -history -timer cpu
interpolation('x.^2',1000)
profile viewer
toc