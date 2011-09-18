disp ('*** aufgabe 3');
clear all

% spaltenweise die Vektoren eingeben
x1 = [0 1 0 1]';
x2 = [1 2 3 4]';
x3 = [1 0 1 0]';
x4 = [0 0 1 1]';
A = [x1 x2 x3 x4];
% det A = 0 bedeutet linear unabhaengig
deta = det(A)
% eig A enthaelt Eigenwert 0
eiga = eig(A)
% Loesung der Gleichung. Bei Nullvektor = linear unabhaengig
% Hier koennen auch die Abhaengigkeiten untereinander abgelesen werden.
b = [0 0 0 0];
x = A\b'
