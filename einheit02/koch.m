function koch ( y1, y2, level )
%--------------------------------------------
% Koch Kurven
%
%  erzeugt aus einer Linie eine Kurve bestehend aus 4 Linien
%
% function koch( y1 , y2 , level)
%
%               y1,y2 sind die Endpunkte
%               level gibt den Rekursionslevel an
%                (bei level 0 wird geplottet)
%
% Gerd Rapin                        20.7.2005
%----------------------------------------------------------

if level == 0 
    plot([y1(1),y2(1)],[y1(2),y2(2)]);
    hold on;
else
    % Definieren der neuen Punkte
    z1 = 2/3 * y1 + 1/3 * y2;
    z3 = 1/3 * y1 + 2/3 * y2;
    z2 = sqrt(3)/6*[0 1; -1 0]*(y1-y2) + 1/2 * ( y1 + y2);
    
    % Definieren der 4 Strecken
    koch( y1, z1, level-1);
    koch( z1, z2, level-1);
    koch( z2, z3, level-1);
    koch( z3, y2, level-1);
    
end
