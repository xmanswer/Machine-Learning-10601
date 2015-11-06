function [cls] = logisticRegressionClassify(xTest, w)
%nt = size(xTest, 1);
%xTest = [ones([nt 1]) xTest];
prob = sigmoidProb(1, xTest, w);
cls = prob > 0.5;
end
