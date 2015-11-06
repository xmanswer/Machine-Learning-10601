function [bic] = BIC(X, C, idx, k)
Rtotal = size(X,1);
f = size(X, 2);
for i = 1:k
    R(i) = sum(idx == i);
end

p = k * (1 + f);
%assign centroid mu to each data point, Rtotal by f
mu = zeros(Rtotal, f);
for i = 1:k
    mu(idx == i, :) = repmat(C(i, :), [R(i), 1]);
end

%compute sigma ^ 2
sigma2 = 1 / f / (Rtotal - k) * sum(sum((X - mu) .^ 2));

%compute log likelihood of data
logD = sum(-R/2*log(2*pi) - R*f/2*log(sigma2) - (R-k)/2 + R .* log(R) - R * log(Rtotal));

%compute bic
bic = logD - p / 2 * log(Rtotal);

end