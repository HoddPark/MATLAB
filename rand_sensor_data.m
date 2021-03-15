clc; clear; close all;


for i = 1:1:10
    temp(i) = (i-1)*10 + randi([0 9],1);
end
%temp = 10*rand(10,1) + temp;
R = getR(temp);
temp_dist = getR_dist(temp,0.1) + rand([10 10]);
R_dist = getR_dist(R,0.1) + rand([10 10]);

figure
hold on
scatter(temp_dist, R_dist)
plot(temp,R)


%data save as table
temp_dist = temp_dist';
R_dist = R_dist';
for i=1:1:10
    R_temp_table(2*i-1,:) = temp_dist(i,:);
    R_temp_table(2*i,:) = R_dist(i,:);
end




function R = getR(temp)
    R = 100*(1 + 0.00392*temp);
end

function R_dist = getR_dist(R,dis)
    R_dist = dis*randn(10,1) + R;
end
