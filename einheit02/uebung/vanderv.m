function vanderv = vanderv(x)
%------------------------------------
%  berechnet die vandermode-matrix zu einem gegebenen
%  Vektor
%
%   input: 
%       x : vektor
%   output:
%       vanderv : vandermode-matrix
%
%  Jochen Schulz           20.07.2009
%-----------------------------------------

%A = zeros(length(x));
%A(i,j) = v(i)^(n-j)

n = length(x);
xrep = repmat (x(:),1,n);
pmat = repmat(linspace(n-1,0,n),n,1);
vanderv = xrep.^pmat;