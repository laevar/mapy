disp ('*** aufgabe 5');
clear

A = diag (2*ones(100,1),0) + ...
    diag (-1*ones(99,1),-1) + ...
    diag (-1*ones(99,1),1);
det(A)
