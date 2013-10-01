disp ('*** aufgabe 3');
clear

j = 2:1000;
sum(1./(log(j).*j))
%alternativ
(1./log(j))*transpose(1./j)

