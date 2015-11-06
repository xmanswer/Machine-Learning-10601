function [M, V] = likelihood(xTrain, yTrain)
[c ind] = max(yTrain); %get # of classes
[n f] = size(xTrain); %get size of trainning set n and feature f

for i = 1:c %for each class
    %create a vector with 1 in the position of this class (n x 1)
    labelVector = yTrain == i;
    %compute # of trainning samples in this class
    sumY = sum(labelVector);
    %compute mean for this class for every feature (f x 1)
    M(:,i) = xTrain' * labelVector / sumY;
    %create repeated matrix for mean on each tranning sample
    mu = repmat(M(:,i), 1, n);
    %compute variance for this class for every feature (f x 1)
    V(:, i) = (xTrain' - mu) .^ 2 * labelVector / sumY;
end
end
