function [B] = Backward(a, b, p, X)
N = size(X, 1);
T = size(X, 2);
K = size(a, 1);
M = size(b, 2);
B = cell(N, 1);
for n = 1 : N
    Xsample = X(n, :);
    beta = zeros(T, K);
    beta(T, :) = ones(1, K);
    for t = T-1 : -1 : 1
        beta(t, :) = a * (beta(t+1, :)' .* b(:, Xsample(t+1)));
    end
    B{n} = beta;
end
end