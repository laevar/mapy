disp('*** Aufgabe 4');
clear all

n = 400; %number of points 
% Wird igrendwann mit zunehmenden n schlechter !
beta = 1; %sin(beta*x)
ax = -10; %left border 
bx = 10; %right border
hx = (bx-ax)/(n-1); %resulting mesh size
x = ax:hx:bx; %construct coordinate-vector

noise = sqrt(0.001)*randn(n); %add gaussian noise

dxg = zeros(n,1); %initalize numerical derivative
dxg2 = zeros(n,1); %initalize analytical derivative

for j=1:n-1
  %calculation of numerical derivative
  dxg(j) = (sin(beta*(x(j+1)))- sin(beta*x(j)))*1/hx + (noise(j+1)-noise(j))*1/hx; 
  
  %calculation of analytical derivative
  dxg2(j) = beta*cos(beta*x(j))+noise(j); 
  %noise can be added or left out for the analytical solution
  %it doesn't make sense really either way. The main
  % thing is to see, what happens with the noise in the numerical
  % calculation.
end


figure
%plotting numerical derivative
subplot(3,1,1);
plot(x,dxg);

%plotting analytical derivative
subplot(3,1,2);
plot(x,dxg2);

%both
subplot(3,1,3);
plot(x,dxg2,x,dxg);


