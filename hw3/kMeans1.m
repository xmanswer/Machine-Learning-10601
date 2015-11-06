X = [5.9 3.2;
4.6 2.9;
6.2 2.8;
4.7 3.2;
5.5 4.2;
5.0 3.0;
4.9 3.1;
6.7 3.1;
5.1 3.8;
6.0 3.0];

u1 = [6.2 3.2];
u2 = [6.6 3.7];
u3 = [6.5 3.0];

for i = 1:3
dXu1 = sqrt((X(:,1) - u1(1)).^2 + (X(:,2) - u1(2)).^2);
dXu2 = sqrt((X(:,1) - u2(1)).^2 + (X(:,2) - u2(2)).^2);
dXu3 = sqrt((X(:,1) - u3(1)).^2 + (X(:,2) - u3(2)).^2);
for i = 1:length(X)
    if (dXu1(i) < dXu2(i)) && (dXu1(i) < dXu3(i))
        Xassign(i) = 1;
    elseif (dXu2(i) < dXu1(i)) && (dXu2(i) < dXu3(i))
        Xassign(i) = 2;
    else
        Xassign(i) = 3;
    end
end
u1 = mean(X(Xassign == 1, :), 1)
u2 = mean(X(Xassign == 2, :), 1)
u3 = mean(X(Xassign == 3, :), 1)
end
scatter(X(:,1), X(:,2)) 
hold on
scatter(u1(1), u1(2), 'MarkerFaceColor', 'red')
hold on
scatter(u2(1), u2(2), 'MarkerFaceColor', 'green')
hold on
scatter(u3(1), u3(2), 'MarkerFaceColor', 'blue')