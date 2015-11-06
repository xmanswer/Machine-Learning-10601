clear all
i = [1; 0];
wih = [0.5; -0.5];
h = 1 ./ (1 + exp(-i .* wih))
who = [-0.4 -0.5; 0.6 0.3];
o = 1./ (1+ exp(-who * h))
t = [1; 1];
deltao = o .* (1 - o) .* (t - o)
deltah = h .* (1 - h) .* (who' * deltao)
ita = 0.1;
who = who + ita * deltao * h'
wih = wih + ita * deltah .* i