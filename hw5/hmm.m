clear all
load('hw5data_matlab.mat');
A = Forward(a, b, p, X)
B = Backward(a, b, p, X)
[Gamma, Ksi] = E_step(a, b, p, X)
K = size(a, 1);
T = size(X, 2);
M = size(b, 2);
[a, b, p] = M_step(Gamma, Ksi, X, M, K)
[score] = likelihood(a, b, p, Xtest)
[x] = generate(a, b, p, T)