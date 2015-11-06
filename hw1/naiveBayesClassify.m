function [t] = naiveBayesClassify(xTest, M, V, p)
[f c] = size(M);
ts = size(xTest, 1); %test set size

for i = 1:c
    Mexpand = repmat(M(:, i)', ts, 1);
    Vexpand = repmat(V(:, i)', ts, 1);
    logLikelihood = - log(sqrt(2 * pi * Vexpand)) - (1/2) ...
        * ((((xTest - Mexpand).^ 2) ./ Vexpand)); % t x f matrix
    logProb(:, i) = log(p(i)) + sum(logLikelihood, 2);
end

[~, t] = max(logProb, [], 2);
end
