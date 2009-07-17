function fak=fak_it(n)
% fakultaet   berechnet zu einer gegebenen natuerlichen Zahl n
%             die Fakultaet n!:=1*2*...*n
%
%              INPUT: natuerliche Zahl n
%              OUTPUT: Fakultaet fak
%   Gerd Rapin  10.11.

fak=1;
for i=1:n
  fak=fak*i;
end;
