function res=fak(n)
if (n==1)
    res=1;
else
    res=n*fak(n-1);
end