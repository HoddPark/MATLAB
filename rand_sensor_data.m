clc; clear;


for i = 1:1:10
    temp(i) = i*10 + randi([1 10],1);
end
%temp = 10*rand(10,1) + temp;
R = getR(temp);
R_dist = getR_dist(R,1) + rand([10 10]);


figure
hold on
for i=1:1:10
    scatter(temp(i),R_dist(:,i))
end
plot(temp, R)

function R = getR(temp)
 R = 100*(1 + 0.00392*temp);
end

function R_dist = getR_dist(R,dis)
R_dist = dis*randn(10,1) + R;
end
