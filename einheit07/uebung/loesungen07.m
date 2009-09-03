disp('*** aufgabe 1');
clear

mex ggt_2.c
ans = ggt_2(2,4)

disp('*** aufgabe 2');
clear

mex vektor.c
x = linspace(0.2,1,10);
[mean,product] = vektor(x)

disp('*** aufgabe 3');
clear

safeggt(227,-34);
safeggt(227,-34.1);
safeggt(227,24523);

disp('*** aufgabe 4');
clear

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

  
disp('*** aufgabe 5');
clear

%plot_poisson.c

disp('*** aufgabe 6');
clear

%hilbert.c