% Mandelbrot set
% MANDEL.m

xmin = -1;
xmax = 1;
ymin = -1;
ymax = 1;

%zentrum 0,0
cent = [0 0];
mandelbox(cent, xmin, xmax, ymin, ymax);

while (1)
  [x,y,taste] = ginput(1);
  cent = [x y];
  xdiff = (xmax - xmin);
  ydiff = (ymax - ymin);
  switch taste
    case 1 
      xmin = -xdiff/3;
      xmax = xdiff/3;
      ymin = -ydiff/3;
      ymax = ydiff/3;
      mandelbox (cent, xmin, xmax, ymin, ymax);
    case 2
      close all
      return
    case 3
      xmin = -3/2*xdiff/2;
      xmax = 3/2*xdiff/2;
      ymin = -3/2*ydiff/2;
      ymax = 3/2*ydiff/2;
      mandelbox (cent, xmin, xmax, ymin, ymax);
  end
end
