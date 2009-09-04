function [anz_loesungen, loesungen]=quad_gl(p,q)
%----------------------------------------------------
% quad_gl berechnet die Loesungen der quadratischen   
%         Gleichung x^2 + px + q =0
%           INPUT:   Skalare   p
%                              q
%                 
%           OUTPUT: anz_loesungen   Anzahl der Loesungen
%                   loesungen       Vektor der Loesungen
%
%  Gerd Rapin      11.11.2003
%------------------------------------------------------
d=p^2/4-q; % Diskriminante

% 2 Loesungen
if d>0 
    anz_loesungen=2;
    loesungen=[-p/2-sqrt(d) -p/2+sqrt(d)];
end

% 1 Loesung
if d==0 
    anz_loesungen=1;
    loesungen=[-p/2];
end

% 0 Loesungen
if d<0 
    anz_loesungen=0;
    loesungen=[];
end
