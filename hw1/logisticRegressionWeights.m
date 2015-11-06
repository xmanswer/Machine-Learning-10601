function [w] = logisticRegressionWeights(xTrain, yTrain, w0, nIter)
w = w0;
stepSize = 0.1;
n = size(xTrain, 1);
%xExtended = [ones([n 1]) xTrain];
xExtended = xTrain;
for i = 1:nIter
    delta = xExtended' * ((yTrain == 1) - sigmoidProb(1, xExtended, w));
    w = w + stepSize * delta;
end
end
