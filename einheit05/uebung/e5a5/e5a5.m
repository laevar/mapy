disp ('*** aufgabe 5');
clear all

A = vander(0:0.02:1);
norm(A,'fro')
%alternativ: manuell
sqrt(sum(sum(A.^2)))
