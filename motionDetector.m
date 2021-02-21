clc;
clear;

vidDevice = imaq.VideoDevice('macvideo', 1, 'YCbCr422_1280x720', ...
    'ReturnedColorSpace', 'rgb');

opticFlow = opticalFlowHS;

nFrames = 0;

while (nFrames<1000)
    frameRGB = vidDevice();
    
    %flow = estimateFlow(opticFlow, rgb2gray(frameRGB));
    
    imshow(frameRGB)
    %hold on 
    %plot(flow, 'DecimationFactor', [5 5], 'ScaleFactor', 25)
    %hold off
    
    nFrames = nFrames + 1
    
end
fprintf("fin")
release(vidDevice);