% A = e^{-\abs{x-y}}\sin(\abs{x-y})^2}
% A \phi = rhs
disp('*** Aufgabe 5');
clear all

%points on domain
n = 10;
x = linspace (0,1,n);
h = 1/(n-1);
%difference-matrix
xmat = ones(size(x)).'*x;
rmat = xmat.'-xmat;


%Matrix for igl
A = exp(-abs(rmat)).*sin(abs(rmat).^2)*h;

%rhs
rhs = sin(x)';

%density
phi = A\rhs

%selfconsistancy
norm(A*phi-rhs)

%alternative calculation
[X,Y] = meshgrid(x,x);
A2 = exp(-abs(X-Y)).*sin(abs(X-Y).^2)*h;
phi = A2\rhs;

%evaluate
y = linspace(2,4,30);
xmat = ones(size(y)).'*x;
ymat = ones(size(x)).'*y;
rmat = ymat.'-xmat;
 
%Matrix for igl
A = exp(-abs(rmat)).*sin(abs(rmat).^2)*h;
field = A*phi;
 
plot(y,field)