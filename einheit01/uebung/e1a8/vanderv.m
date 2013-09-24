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

n = length(x);
% Replizierte X-Werte
xrep = repmat (x(:),1,n);
%Pozenzen
pmat = repmat(linspace(0,n-1,n),n,1);
vanderv = xrep.^pmat;