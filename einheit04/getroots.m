roots([1 -1 0 1])
x = -1:0.1:1;
[X,Y] = meshgrid (x,x);
Z=abs( polyval ([1 -1 0 1],X+1i*Y));
surf(X,Y,Z)
