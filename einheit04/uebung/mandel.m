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
  switch taste
    case 1 
      xmin = -(xmax-xmin)/3;
      xmax = (xmax-xmin)/3;
      ymin = -(ymax - ymin)/3;
      ymax = (ymax - ymin)/3;
      mandelbox (cent, xmin, xmax, ymin, ymax);
    case 2
      close all
      break
    case 3
      xmin = -3/2*(xmax-xmin)/2;
      xmax = 3/2*(xmax-xmin)/2;
      ymin = -3/2*(ymax - ymin)/2;
      ymax = 3/2*(ymax - ymin)/2;
      mandelbox (cent, xmin, xmax, ymin, ymax);
  end
end

