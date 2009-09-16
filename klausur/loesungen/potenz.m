function res=potenz(x,n)
% function potenz(x,n)
n
if n==1 
    res=x;
else
    if mod(n,2)==0
        res=potenz(x,n/2).^2;
    else
        res=potenz(x,(n-1)/2).^2*x;
    end
end
