function [k] = ChooseK(X, restarts, maxK)
    bic = zeros(maxK, 1);
    for i = 1:maxK
        maxBIC = -Inf;
        for j = 1:restarts
            [idx, C] = kmeans(X, i);
            thisBIC = BIC(X, C, idx, i);
            if thisBIC > maxBIC
                maxBIC = thisBIC;
            end
        end
        bic(i) = maxBIC;
    end
    [maxValue, k] = max(bic);
end
