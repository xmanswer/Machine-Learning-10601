function [ls] = logSum(x)
maxlog = max(x);
ls = maxlog + log(sum(exp(x - maxlog)));
end
