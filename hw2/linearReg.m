clear all
%X = [-1 -1.5; 0 0.5; 1 0.5; 2 1.5] %4 by 2
X = [-1 -1; 0 0; 1 1; 2 2.1] %4 by 2
beta = [0 1]' %2 by 1
condNum = cond(X' * X)
covw = inv(X' * X)
datasetNumber = 50;
sampleNumber = 4;
eps = normrnd(0, 1, datasetNumber ,1);
eps = repmat(eps, 1, sampleNumber)'; %4 by 50
y = repmat(X * beta, 1, datasetNumber)  + eps; %4 by 50
w = inv(X' * X) * X' * y; %2 by 50
w = w';
beta = repmat(beta, 1, datasetNumber)'; %50 by 2
for i = 1:datasetNumber
    error(i) = norm(w(i, :) - beta(i, :)); 
end
mean(w)
cov(w)
figure(1)
hist(error, 10);
figure(2)
scatter(w(:,1), w(:,2));
figure(3)
qqplot(w(:,1));
figure(4)
qqplot(w(:,2));

Xtest = [2 0];
ytest = Xtest * w';
figure(5)
hist(ytest, 10)