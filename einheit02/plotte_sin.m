% plotte_sin.m

disp('Plot der Sinus Funktion auf [0,10]');
n = input('Plot an wievielen Punkten?');
x = linspace(0,10,n);
for i=1:n
y(i) = sin(x(i));
end; 
plot(x,y);