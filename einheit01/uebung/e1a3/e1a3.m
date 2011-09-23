disp ('*** aufgabe 3');
clear

j = 2:1000;
sum(1./(log(j).*j))
(1./log(j))*transpose(1./j)

j = 1:1000;
idx = ones(1000,1);
1./j*idx