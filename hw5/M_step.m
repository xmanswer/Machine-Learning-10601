function [a, b, p] = M_step(Gamma, Ksi, X, M, K)
N = size(X, 1);
T = size(X, 2);
a = zeros(K, K);
b = zeros(K, M);
p = zeros(K, 1);
n_hat = zeros(K, K);
for n = 1 : N
    ksi = Ksi{n};
    for i = 1 : K
        for j = 1 : K
            n_hat(i, j) = n_hat(i, j) + sum(ksi(:, i, j));
        end
    end
end
n_hat = n_hat / N;

for i = 1 : K
    for j = 1 : K
        a(i,j) = n_hat(i,j) / sum(n_hat(i, :));
    end
end

B = zeros(K, M);
for n = 1:N
    Xsample = X(n, :);
    gamma = Gamma{n};
    for k = 1 : K
        for j = 1 : M
            B(k,j) = B(k,j) + (Xsample == j) * gamma(:, k);
        end
    end
    p = p + gamma(1, :)';
end
p = p / N;
B = B / N;

for k = 1 : K
    for j = 1 : M
        b(k, j) = B(k,j) / sum(B(k, :));
    end
end

end