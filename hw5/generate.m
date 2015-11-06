function [x] = generate(a, b, p, T)
    q = zeros(1, T);
    x = zeros(1, T);
    q(1) = sum(rand >= cumsum([0 p']));
    for t = 2 : T
        prob = a(q(t-1), :);
        q(t) = sum(rand >= cumsum([0 prob]));
    end
    for t = 1 : T
        prob = b(q(t), :);
        x(t) = sum(rand >= cumsum([0 prob]));
    end
end