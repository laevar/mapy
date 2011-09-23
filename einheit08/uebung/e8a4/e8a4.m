disp('*** aufgabe 4');
clear all
mex mandel_c.c


MAX_IT = 150;

for idx=1:10
  x1 = linspace(-2.1,0.6,idx*101);
  y1 = linspace(-1.1,1.1,idx*81);
  
  tic;
  C = mandel_c(x1,y1);
  time1(idx) = toc;
  tic;
  C = mandelbrot(x1,y1,MAX_IT);
  time2(idx) = toc;

end
figure
hold on
plot(time1,'r*-','LineWidth',3);
plot(time2,'b*-','LineWidth',3);
legend('C','Matlab')
hold off