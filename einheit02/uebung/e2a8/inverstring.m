function invstr = inverstring (str)
% Invertiert einen string
% input:
%   str : input-string
% output:
%   invstr : invertierter string
% Jochen Schulz, 24.07.2009

 invstr = str(end:-1:1);
 %alternativ
 invstr = flipdim (str,2);
 %Manuell mit Schleife
 slen = length(str);
 for i = 1:slen
    invstr(slen-i+1) = str(i);
 end