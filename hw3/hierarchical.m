clear all
red = [4.7 3.2; 4.9 3.1; 5 3; 4.6 2.9];
blue = [5.9 3.2; 6.7 3.1; 6 3; 6.2 2.8];

for i = 1:4
    for j = 1:4
        d(i,j) = sqrt((blue(j,1) - red(i, 1)).^2 + (blue(j,2) - red(i, 2)).^2);
    end
end
max(max(d))
min(min(d))
mean(mean(d))