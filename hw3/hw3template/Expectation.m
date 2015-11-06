function [w] = Expectation(X, k, t, mu, sigma)
n = size(X, 1);
f = size(X, 2);
w = zeros(n, k); %n x k
for j = 1:k
    muk = mu(j, :); %1 x f
    sigmak = sigma(:, :, j); %f x f
    p_pre_exp = 1/((2*pi)^(f/2)*sqrt(det(sigmak))); %1 x 1
    for i = 1:n
        p_x_theta = p_pre_exp * exp(-1/2 * (X(i, :) - muk) * inv(sigmak) * (X(i, :)- muk)'); %1 x 1
        w(i, j) = p_x_theta * t(j);            
    end
end
sum_of_w = sum(w, 2); % n x 1
for i = 1:n
    w(i, :) = w(i, :) / sum_of_w(i);
end
end
