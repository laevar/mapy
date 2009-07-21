function H = myhilbert (n)
%für n ∈ N die Hilbert-Matrix H = (hij )n i,j=1 mit hij =1 i+j−1 berechnet.
%Berechnen Sie H −1 für n = 4.

H = zeros (n);
for i=1:n
  for j=1:n
    H(i,j) = 1/(i+j-1);
  end  
end

imat = repmat(0:n-1,n,1);
jmat = repmat((1:n)',1,n);
H = 1./(imat+jmat);


