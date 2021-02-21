clc; clear;
net = alexnet;

cam = webcam(1);
sz = net.Layers(1).InputSize;
figure
hold on

while(1)
    img = snapshot(cam);
    img = img(1:sz(1), 1:sz(2), 1:sz(3));
    [label, err] = classify(net,img)

    imshow(img)
    text(10,20,char(label),'Color','red')
end
