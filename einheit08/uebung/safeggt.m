function [result] = safeggt(a,b)

% Input Variablen muessen nichtnegative integer sein.
if ( (a - floor(a)) == 0 && (b - floor(b)) == 0 && a > 0 && b > 0 && isscalar(a) && isscalar(b))
  result = ggt(a,b);
else
  error('keine Korrekte Eingabe!');
end