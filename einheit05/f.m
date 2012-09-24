function result=f(varargin)
%--------------------------------------------------
% f.m     Sobolevsche Mittelungsfunktion
%         f(x)=exp(-1/(1-|x|^2)), |x|<1, und f(x)=0 sonst
%
%         Eingabe: Matrizen x1,x2,x3,..
%         Ausgabe: Matrix result=f(x1,x2,...)
%
%              Gerd Rapin   7.12.2003
%--------------------------------------------------

% Berechnen der Norm
betrag=varargin{1}.^2;
for i=2:nargin
    betrag=betrag+varargin{i}.^2;
end

% Berechnen des Funktionswerts
dimension=size(varargin{1});
result=zeros(dimension(1),dimension(2));
% das muss im multidimensionalen mehr schleifen haben! d.h. linearer index!
for j=1:dimension(1)
    for k=1:dimension(2)
      if betrag(j,k)<1
        result(j,k)=exp(-1/(1-betrag(j,k)));
      else
        result(j,k)=0;
      end;
    end;
end;