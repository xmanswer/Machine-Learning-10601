function [score] = likelihood(a, b, p, Xtest)
N = size(Xtest, 1);
T = size(Xtest, 2);
K = size(a, 1);
score = zeros(N, 1);
for n = 1 : N
    Xsample = Xtest(n, :);
    alpha = zeros(T, K);
    alpha(1, :) = (b(:,Xsample(1)) .* p)';
    for t = 2 : T
        alpha(t, :) = (b(:, Xsample(t)) .* (a' * alpha(t-1,:)'))';
    end
    score(n) = log(sum(alpha(T,:)));
end
end