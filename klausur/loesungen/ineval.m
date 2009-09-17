function ineval (varargin)
%Schreiben Sie eine Funktion, die einen bis mehrere zu 
%übergebene Strings in inline-functions 
%konvertiert und vektorisiert. Die Funktion soll 
%beliebige Anzahl von function-strings erhalten können und 
%ansonsten noch die untere Schranke und die obere Schranke 
%übergeben bekommen können. Überprüfen sie die Anzahl und 
%den Typ der Argumente und setzen sie für alle Variablen 
%Default-Werte. Nach der Überprüfung soll die Funktion in einem 
%2D-Plot grafisch dargestellt werden.

for idx = 1:nargin
  if ischar(varargin{idx})
    f{idx} = fcnchk(varargin{idx},'vectorized');
  end
  if isnumeric(varargin{idx})
    if (~exist('N'))
      N = varargin{idx};
    elseif (~exist('a'))
      a = varargin{idx};
    elseif (~exist('b'))
      b = varargin{idx};
    end
  end
end

%default-werte
if (~exist('N'))
  N = 20;
end
if (~exist('a'))
  a = -1;
end
if (~exist('b'))
  b = 1;
end

x = linspace(a,b,N);
figure
hold on
for idx = 1:length(f)
  plot(x,f{idx}(x))
end
hold off