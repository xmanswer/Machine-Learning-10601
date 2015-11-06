function [p] = prior(yTrain)
[c, ind] = max(yTrain); %get # of class
n = length(yTrain); %get size of training set y
p = zeros([c 1]);
for i = 1:c
    p(i) = sum(yTrain == i) / n; %compute probablity for each class
end
end

