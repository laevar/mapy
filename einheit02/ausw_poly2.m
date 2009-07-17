function y=ausw_poly2(a,x)
%----------------------------------------------------
% ausw_poly berechnet den Funktionswert von 
%           p(x)=a_1 +a_2 x + a_3 x^2+ ... +a_n x^(n-1)
%           INPUT:  a Vektor der Koeffizienten 
%                   x Vektor der auszuwertenden Punkte
%           OUTPUT: y Vektor der Funktionswerte
%  Gerd Rapin      1.11.2003
%------------------------------------------------------

n=length(a);
k=length(x);
A=repmat(transpose(x),1,n);
B=repmat(0:(n-1),k,1);

y=(A.^B)*transpose(a);
