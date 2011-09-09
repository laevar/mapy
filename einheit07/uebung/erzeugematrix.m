function matrix = erzeugematrix(N)
% Erzeugt eine Sparse-Matrix
%
% input:
%   N: Parameter N
% output:
%   matrix: Rueckgabe der Matrix
% Jochen Schulz   01.09.2009

h = 1/N;
T1 = diag(repmat(-1,N-2,1),-1) + ...
    diag(repmat(4,N-1,1),0) + ...
    diag(repmat(-1,N-2,1),+1);
T = sparse(T1);
T2 = diag(repmat(-1,N-2,1),-1) + ...
     diag(repmat(0,N-1,1),0) + ...
     diag(repmat(-1,N-2,1),+1);
Tnull = sparse(T2);
I = speye(N-1);
matrix = kron(Tnull,I) ... %nebendiagonale
   + kron(I,T) ; %diagonale