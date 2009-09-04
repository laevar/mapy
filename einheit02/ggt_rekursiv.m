function [a,b] = ggt_rekursiv(a,b)
% ggt_rekursiv berechnet den goessten 
% gemeinsamen Teiler (ggT) 
if a~=b
  if a>b
    a = a-b;
  else
    b = b-a;
  end;
  [a,b] = ggt_rekursiv(a,b);
end;




   
