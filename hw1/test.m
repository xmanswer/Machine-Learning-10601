clear all
load('ecoli.mat')
p = prior(yTrain);
[M, V] = likelihood(xTrain, yTrain);
tr = naiveBayesClassify(xTrain, M, V, p);
trainHit = sum(tr == yTrain) / length(yTrain)
t = naiveBayesClassify(xTest, M, V, p);
testHit = sum(t == yTest) / length(yTest)
precision1 = sum((t == 1) & (yTest == 1)) / sum(t == 1)
recall1 = sum((t == 1) & (yTest == 1)) / sum(yTest == 1)
precision5 = sum((t == 5) & (yTest == 5)) / sum(t == 5)
recall5 = sum((t == 5) & (yTest == 5)) / sum(yTest == 5)