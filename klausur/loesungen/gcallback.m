function gcallback()
global han;
x = rand(20);
y = rand(20);
z = sin(x).*cos(y);
plot3(han.axe1,x,y,z,'*');

lin = linspace(0,1,60);
[Xi,Yi] = meshgrid(lin,lin);
Zi = griddata(x,y,z,Xi,Yi,get(han.edit,'string'));
surf(han.axe2,Xi,Yi,Zi);
