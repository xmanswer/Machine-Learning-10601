clear all
load('ecoli.mat')

f = size(xTrain, 2);
w0 = [0 zeros([1 f])]';
nIter = 100;
w = logisticRegressionWeights(xTrain, yTrain, w0, nIter)

cls = logisticRegressionClassify(xTest, w)

prediect = cls > 0.5;
recall = sum(prediect & (yTest == 1)) / sum(yTest == 1)
precision = sum(prediect & (yTest == 1)) / sum(prediect == 1)