function bmat = bernstein(n)
% Bernstein-Polynome (n!/(i!(n-i)!)* t^i (1-t)^(n-i)
t = linspace(0,1,20);

bmat = zeros(20,n);
for i=0:n
    bmat(:,i+1) = factorial(n)/(factorial(i)*factorial(n-i))*t.^i.*(1-t).^(n-i);
end
