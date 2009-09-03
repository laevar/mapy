function [result] = safeggt(a,b)

% Input Variablen muessen nichtnegative Double sein.
if ( isinteger(a) && isinteger(b) && a > 0 && b > 0 && length(a) == 1 && length(b) == 1)
  result = ggt(a,b);
else
  warning('keine Korrekte Eingabe!')
end