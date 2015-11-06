function [sigma] = MaximizeCovariance(X, k, w, mu)
n = size(X, 1);
f = size(X, 2);
N = (sum(w, 1))'; %k x 1
sigma = zeros(f, f, k); %f x f x k
for j = 1:k
    muk = mu(j, :); %1 x f
    for i = 1:n
        sigma(:, :, j) = sigma(:, :, j) + w(i, j) * (X(i, :) - muk)' * (X(i, :) - muk);
    end
    sigma(:, :, j) = sigma(:, :, j) / N(j); %f x f
end
end