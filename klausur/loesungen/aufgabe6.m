function i=aufgabe6(x)
y(1)=x;
y(2)=x-1/x;
i=1;
while abs(y(i+1)-y(i))>=10^(-4)
    y(i+2)=0.5*y(i+1)+1/y(i+1);
    i=i+1;
end;