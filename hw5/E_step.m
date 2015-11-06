function [Gamma, Ksi] = E_step(a, b, p, X)
N = size(X, 1);
T = size(X, 2);
K = size(a, 1);
M = size(b, 2);
A = Forward(a, b, p, X);
B = Backward(a, b, p, X);
Gamma = cell(N, 1);
Ksi = cell(N, 1);
for n = 1 : N
    Xsample = X(n, :);
    alpha = A{n};
    beta = B{n};
    %compute gamma for each sample
    gamma = zeros(T, K);
    for t = 1 : T
        gamma(t, :) = alpha(t, :) .* beta(t, :) / (alpha(t, :) * beta(t, :)');
    end
    Gamma{n} = gamma;
    %compute ksi for each sample
    ksi = zeros(T, K, K);
    for t = 2:T
        alphaBeta = alpha(t-1, :) * beta(t-1, :)';
        for i = 1:K
            for j = 1:K
                ksi(t, i, j) = alpha(t-1,i) * a(i, j) * b(j, Xsample(t)) * beta(t, j) / alphaBeta;
            end
        end
    end
    Ksi{n} = ksi;
end
end