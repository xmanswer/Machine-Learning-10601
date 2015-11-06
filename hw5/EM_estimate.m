function [a, b, p] = EM_estimate(a, b, p, X, nIter)
K = size(a, 1);
M = size(b, 2);
for i = 1 : nIter
    [Gamma, Ksi] = E_step(a, b, p, X);
    [a, b, p] = M_step(Gamma, Ksi, X, M, K);
end
end