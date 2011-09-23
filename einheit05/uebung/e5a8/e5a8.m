disp ('*** aufgabe 8');
clear

A = [30 1 2 3; 4 15 -4 -2; -1 0 3 5; -3 5 0 -1];
[V,D] = eig(A)
[Q,R] = qr(A) 