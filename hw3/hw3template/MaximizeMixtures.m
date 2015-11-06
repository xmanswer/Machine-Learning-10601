function [t] = MaximizeMixtures(k, w)
N = (sum(w, 1))'; %k x 1
t = N / sum(N);
end
