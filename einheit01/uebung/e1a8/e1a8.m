disp ('*** aufgabe 8');
clear

A = hilb(50);
transpose(A(:,3))*ones(length(A(:,3)),1)
sum(A(:,3))