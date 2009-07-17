function V=vandermonde2(x)
%----------------------------------------------------
% vandermonde2 berechnet die Vandermonde Matrix zu einem
%              Vektor x
%     
%             INPUT:  
%             x Zeilenvektor 
%             OUTPUT: 
%             V Vandermonde-Matrix
%  Gerd Rapin      8.11.2003
%------------------------------------------------------

n=length(x);

V=zeros(n,n);
for i=1:n
    for j=1:n
       V(i,j)=x(i)^(j-1);
   end
end

