function [p] = sigmoidProb(y, x, w)
%p = (1 - double(y)) ./ (1 + exp(xExtended * w'))
 p = double(y) .* exp(x * w) ./ ((1 + exp(x * w))) ...
     + (1 - double(y)) ./ (1 + exp(x * w));
end
