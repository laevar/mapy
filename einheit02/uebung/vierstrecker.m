function vierstrecker(y1,y2,level)
% Teilt die Strecke  auf in 4 Teilstrecken (level>0)
% input:
%   y1:
%   y2:
% output:

if (level == 0)
  plot([y1(1),y2(1)],[y1(2),y2(2)],'*r-','LineWidth',1);
else
  z1 = 2/3*y1 + 1/3*y2;
  z2 = sqrt(3)/6*[0 1 ; -1 0]*(y1-y2) + 1/2*(y1+y2);
  z3 = 1/3*y1 + 2/3*y2;
  vierstrecker(y1,z1,level-1);
  vierstrecker(z1,z2,level-1);
  vierstrecker(z2,z3,level-1);
  vierstrecker(z3,y2,level-1);
end;

