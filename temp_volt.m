clc; clear; close all;

for i = 1:1:10
    temp(i) = (i-1)*10 + randi([0 9],1);
end

vol = temp*0.1 + 2.55;
temp_dist = get_dist(temp, 0.1) + rand([10 10]);
vol_dist = get_dist(vol, 0.1) + 0.1*rand([10 10]);

figure
hold on
scatter(temp_dist, vol_dist)
plot(temp,vol)

%data save as table
temp_dist = temp_dist';
vol_dist = vol_dist';
for i=1:1:10
    vol_temp_table(2*i-1,:) = temp_dist(i,:);
    vol_temp_table(2*i,:) = vol_dist(i,:);
end



function value_dist = get_dist(value,dis)
    value_dist = dis*randn(10,1) + value;
end