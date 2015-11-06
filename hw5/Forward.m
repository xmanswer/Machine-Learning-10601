function [A] = Forward(a, b, p, X)
N = size(X, 1);
T = size(X, 2);
K = size(a, 1);
M = size(b, 2);
A = cell(N, 1);
for n = 1 : N
    Xsample = X(n, :);
    alpha = zeros(T, K);
    alpha(1, :) = (b(:,Xsample(1)) .* p)';
    for t = 2 : T
        alpha(t, :) = (b(:, Xsample(t)) .* (a' * alpha(t-1,:)'))';
    end
    A{n} = alpha;
end
end