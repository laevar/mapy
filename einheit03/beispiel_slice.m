x = linspace(-2 ,2 ,20);
[X,Y,Z] = meshgrid (x, x, x) ;
V = exp(-X.^2-Y.^2) .* sin(pi*X.*Y.*Z);
sx = [-0.5  ] ; sy = [ -1, 1 ] ;
sz = [ ] ;
slice (X,Y, Z,V ,sx ,sy ,sz );
alpha (0.8 ) % Transparency
