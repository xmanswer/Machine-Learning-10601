clear all
Xlabeled = [1 1 1 1 0 0 0 0 0 0 0;
    0 1 0 0 1 1 0 0 0 0 0;
    0 1 1 0 0 0 0 0 1 0 1;
    0 0 0 0 0 0 1 1 0 1 0
    0 0 0 0 0 0 1 0 0 1 0;
    0 1 1 0 0 0 0 0 0 0 1];

YlabelT = [1 0 1 0 1/5 9/10]';
YlabelF = [0 1 0 1 4/5 1/10]';

theta1 = (Xlabeled' * YlabelT + 1) / (sum(YlabelT) + 2);
theta0 = (Xlabeled' * YlabelF + 1) / (sum(YlabelF) + 2);
theta = [theta0 theta1]
sum(YlabelT)/(sum(YlabelT) + sum(YlabelF))

(0.7647*0.2353*0.5167)/(0.7647*0.2353*0.5167 + 0.2245*0.5714*0.4833)