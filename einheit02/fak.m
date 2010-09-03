function res = fak(n)
% fakultaet   berechnet zu einer gegebenen natuerlichen Zahl n
%             die Fakultaet n!:=1*2*...*n (rekursiv)
%
%              INPUT: natuerliche Zahl n
%              OUTPUT: Fakultaet fak
%   Jochen Schulz 3.9.2010
if (n == 1)
    res = 1;
else
    res = n*fak(n-1);
end
