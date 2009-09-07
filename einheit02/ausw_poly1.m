function y = ausw_poly1(a,x)
%----------------------------------------------------
% ausw_poly berechnet den Funktionswert von 
%           p(x)=a_1 +a_2 x + a_3 x^2+ ... +a^n x^(n-1)
%           INPUT:  a Vektor der Koeffizienten 
%                   x  auszuwertender Punkt
%           OUTPUT: y  Funktionswert (y=p(x))
%  Gerd Rapin      1.11.2003
%------------------------------------------------------

n = length(a);
aux_vector = x.^(0:n-1);
y = aux_vector*transpose(a);
