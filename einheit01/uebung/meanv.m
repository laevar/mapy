function vmean = meanv(x)
%------------------------------------
%  berechnet den Durschnittswert eines gegebenen
%  Vektors
%
%   input: 
%       x : vektor
%   output:
%       vmean : durchschittswert
%
%  Jochen Schulz           20.07.2009
%-------------------------------------------

vmean = sum(x)/length(x);
