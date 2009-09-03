function C = mandelbrot(x1,y1,MAX_IT)
C = zeros(length(y1),length(x1));

for i = 1:length(x1)
  for j = 1:length(y1)
    %------ Berechnen der Folge        
    m = 0;
    a = x1(i);
    b = y1(j);
    x = a;
    y = b;
    while (sqrt(x^2+y^2)<2 && m<MAX_IT)
      t = x;
      x = a+x^2-y^2;
      y = b+2*t*y;
      m = m+1;
    end;
    
    C(j,i) = m;
    
  end
end

