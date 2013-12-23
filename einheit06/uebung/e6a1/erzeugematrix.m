function matrix = erzeugematrix(N)
% Erzeugt eine Sparse-Matrix
%
% input:
%   N: Parameter N
% output:
%   matrix: Rueckgabe der Matrix
% Jochen Schulz   01.09.2009

h = 1/N;
T = spdiags(repmat(-1,N-1,1),-1,N-1,N-1) + ...
    spdiags(repmat(4,N-1,1),0,N-1,N-1) + ...
    spdiags(repmat(-1,N-1,1),+1,N-1,N-1);
Tnull = spdiags(repmat(-1,N-1,1),-1,N-1,N-1) + ...
     spdiags(repmat(0,N-1,1),0,N-1,N-1) + ... % nur um klarzumachen, das es nicht gebraucht wird
     spdiags(repmat(-1,N-1,1),+1,N-1,N-1);
I = speye(N-1);
matrix = 1/h^2*(kron(Tnull,I) ... %nebendiagonale
   + kron(I,T)) ; %diagonale