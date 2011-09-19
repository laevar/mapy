n = 1000;
x = linspace(-1,1,n);
[X,Y] = meshgrid(x,x);
Z = complex(X,Y);
TOL = 0.2;
V = zeros(n,n);
for idx = 1:20
    Z = Z - (Z.^3-1)./(3*Z.^2);
    ind = find (Z.^3 - 1 < TOL);
    V(ind) = angle(Z(ind));
end
image(x,x,V,'CDataMapping','scaled');
caxis([-2.5 2.5]);
title('Konvergenzverhalten Newton')
xlabel('x'),ylabel('i*y')
