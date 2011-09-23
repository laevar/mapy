function V=vandermonde(x)
%----------------------------------------------------
% vandermonde berechnet die Vandermonde Matrix zu einem
%             Vektor x
%     
%             INPUT:  
%             x Zeilenvektor 
%             OUTPUT: 
%             V Vandermonde-Matrix
%  Gerd Rapin      1.11.2003
%------------------------------------------------------

n=length(x);
A=repmat(transpose(x),1,n);
B=repmat(0:(n-1),n,1);

V=A.^B;
