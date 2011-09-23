disp('*** aufgabe 6');
clear

%x²-2
p = 0;
q = -2;
[anz,nulls] = quad_gl(p,q)
roots([1 0 -2])

%x²-2x +1
p = -2;
q = 1;
[anz,nulls] = quad_gl(p,q)
roots([1 -2 1] )

%x²-4x +10
p = -4;
q = 10;
[anz,nulls] = quad_gl(p,q)
roots([1 -4 10] )