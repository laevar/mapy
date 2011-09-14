% Example for Linear Regression 
x = (1:0.5:4)';
y = exp(x);
figure
plot(x,y,'o');
hold on;
%pause;
%--- Determine least square fit for
%    f(t)=a(1) + a(2) t + a(3) t^2

n = length(x);
A = [ ones(n,1), x, x.^2 ];
a = A \ y;
%--- Plot new curve
x1 = 1:0.1:4;
y1 = a(1) + a(2)*x1 + a(3)*x1.^2;
plot(x1,y1,'LineWidth',2)