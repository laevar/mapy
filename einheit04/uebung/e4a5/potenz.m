function result = potenz (x,n)
% Berechnet rekursiv die natuerliche Potenz einer Zahl.
% 
% input: 
%   x:  Zahl x
%   n:  Potenz
% output:
%   result:  Ergebnis
%
% Jochen Schulz   11.08.2009
if n == 1
  result = x;
  return 
end
if mod(n,2) == 0
  result = potenz(x,n/2)*potenz(x,n/2);
else
  result = x*potenz(x,(n-1)/2)*potenz(x,(n-1)/2);
end