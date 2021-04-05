clc; clear; close all;

Va = 6.15:-0.15:4.9;
Vb = 4.95:0.15:6.15;

Va_dist = getR_dist(Va, 0.03);
Vb_dist = getR_dist(Vb, 0.03);

Va_dist = round(Va_dist,2);
Vb_dist = round(Vb_dist,2);


for i=1:1:10
    Vab_table(2*i-1,:) = Va_dist(i,:);
    Vab_table(2*i,:) = Vb_dist(i,:);
end


function R_dist = getR_dist(R,dis)
    R_dist = dis*randn(10,1) + R;
end