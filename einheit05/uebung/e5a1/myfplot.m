function myfplot(varargin)
%----------------------------------
% Eingabe: 1 Parameter: f      (N=50)
%          2 Parameter: f,N     
% Jochen Schulz 28.08.2009
%----------------------------------
N = 50;% Default-Einstellung
anzahl_parameter = nargin; % Anz. Input-argumente

switch anzahl_parameter 
  case 1
    f1 = varargin{1};
  case 2
    f1 = varargin{1}; 
    N = varargin{2}; 
  otherwise
    error('Falsche Anzahl an Input-Argumenten');
end

f = fcnchk(f1,'vectorized');
x = linspace(-1,1,N);
[X,Y] = meshgrid (x,x);
values = feval(f,X,Y);

figure
surf(X,Y,values,'LineWidth',3);
shading flat




