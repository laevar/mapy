disp ('*** aufgabe 1');
clear
x = 1e-15; ((1+x)-1)/x
x = 1e-16; ((1+x)-1)/x

disp('*** aufgabe 2');
clear

differ

disp('*** aufgabe 3');
clear

fixpunkt_aufg

disp('*** aufgabe 4');
clear

nullstelle_cos2
 
disp('*** aufgabe 5');
clear

myhilbert(4)-hilb(4)

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

disp('*** aufgabe 7');
clear

[g,k] = fibonacci(1e-3)
[g,k] = fibonacci(1e-4)

disp('*** aufgabe 8');
clear

inverstring('qwerty')

disp('*** aufgabe 9');
clear

countstr('abcdeada','a')

