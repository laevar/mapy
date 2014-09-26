function loes = poisson (f,n)
%--------------------------------------------------
% poisson.m 
%  loest das Poison Problem auf dem Einheitsquadrat
%  mit homogenen Dirirchlet-Randbedingungen
%
% INPUT:
% f    Function-Handle rechte Seite
% n    Anzahl Gitterpunkte pro Richtung
% OUTPUT:
% loes  Loesung, Struktur mit Feldern 
%          x     Loesungsvektor
%          mesh  2xn Matrix der Gitterpunkte
%---------------------------------------------------

A = n^2*gallery('poisson',n-1); 

% Erzeuge rechte Seite und Mesh
loes.mesh = zeros(2,(n-1)^2);
F = zeros((n-1)^2,1);
for i = 1:(n-1)
    for j = 1:(n-1)
        F(i+(n-1)*(j-1)) = f(i/n,j/n);
        loes.mesh(:,i+(n-1)*(j-1)) = [i/n; j/n]; 
    end
end
% Loese das lineare System
loes.x = A \ F;

% Ergänze Randbedingungen
loes.x = [ loes.x; zeros(4*(n+1),1)];
loes.mesh = [loes.mesh, [zeros(1,n+1); 0:1/n:1]];
loes.mesh = [loes.mesh, [ones(1,n+1);  0:1/n:1]];
loes.mesh = [loes.mesh, [0:1/n:1; ones(1,n+1)]];
loes.mesh = [loes.mesh, [0:1/n:1; zeros(1,n+1)]];

% Plotten
plot3(loes.mesh(1,:),loes.mesh(2,:),loes.x,'*');
figure;
[X,Y] = meshgrid(0:1/n:1,0:1/n:1);
Fi = TriScatteredInterp(loes.mesh(1,:)', loes.mesh(2,:)',loes.x,'linear');
Z = Fi(X,Y);
surf(X,Y,Z);
shading flat;
