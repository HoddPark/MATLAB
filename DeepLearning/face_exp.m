clc; clear; close all;
filedir = '/Users/hoddor/Documents/MATLAB/DeepLearning/data/faceexp-comparison-data-test-public.csv';
M = readmatrix(filedir,'OutputType','string');
A = M(:,1);
add = split(A,',');
%%
i_add = add(:,1);

for i = 1:1000
    
    img = imread(i_add(i));
    Fdetector = vision.CascadeObjectDetector;
    Face = step(Fdetector,img);
    imgFace = (img(Face(1,2):Face(1,2)+Face(1,4),Face(1,1):Face(1,1)+Face(1,3),:));

    re_img = imresize(imgFace,[224 224]);
    figure
    imshow(re_img)
    figure
    imshow(img)
    keypressed = getkey;
    while keypressed ~= 13
        disp('enter next, q exit')
        keypressed = getkey;
    end

    
end


%%