clear all
x = [-1 -1; 0.5 -0.5; 1 1; -0.5 0.5];
%scatter(x(:, 1), x(:,2)); hold on
S = 1/4 * x' * x
[U, Lambda, V] = svd(S)
%plot([0 V(1,1)], [0 V(2,1)]); hold on
%plot([0 V(1,2)], [0 V(2,2)])
u1 = V(:,1)
u2 = V(:,2)
x*u1
var(x * u1)
var(x * u2)

C = [2.2 1.7 1.4 0.8 0.4 0.2 0.15 0.02 0.001]
sum(C)
1-sum(C(5:end))/sum(C)