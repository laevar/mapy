function a = ggt(a,b)
%----------------------------------------------------
% ggt berechnet den groessten gemeinsamen Teiler (ggT)    
%         zweier natuerlichen Zahlen a und b
%           INPUT:   natuerliche Zahlen  a
%                                       b
%                 
%           OUTPUT: ggT
%                   
%  Gerd Rapin      11.11.2003
%------------------------------------------------------
while (a ~= b)
  if (a > b)
    a = a-b;
  else
    b  =b-a;
  end
end

    
