function invstr = inverstring (str)
% Invertiert einen string
% input:
%   str : input-string
% output:
%   invstr : invertierter string
% Jochen Schulz, 24.07.2009

 invstr = str(end:-1:1)
 %invstr = flipdim (str,2);