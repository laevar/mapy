function [gk,k] = fibonacci(TOL)
% berechnet die Die Fibonacci-Folge f und deren term-verhaeltnis 
% g_k = f_(k+1)/f_k
% Stoppt die Iteration bei |g_k − g_(k+1) | <= TOL 
% input:
%   TOL: Tolerance
% output:
%   gk : g_k
%   k : index k

f(1) = 1;
f(2) = 1;
f(3) = f(2) + f(1);

g(1) = f(2)/f(1);
g(2) = f(3)/f(2);

k = 1;
while (abs(g(k) - g(k+1)) > TOL)
  f(k+3) = f(k+2) + f(k+1);
  g(k+2) = f(k+3)/f(k+2);
  k = k+1;
end
gk=g(k);
