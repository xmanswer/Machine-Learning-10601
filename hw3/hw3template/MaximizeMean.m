function [mu] = MaximizeMean(X, k, w)
n = size(X, 1);
f = size(X, 2);
N = (sum(w, 1))'; %k x 1
N = repmat(N, [1 f]); %k x f
mu = w' * X ./ N; %k x f
end