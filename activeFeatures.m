clc
clear
close all;
net=alexnet;
addpath('Database')
im=imread('.\adl-01-cam0-rgb-035.png');
imgSize = size(im);
imgSize = imgSize(1:2);
act1 = activations(net,im,'conv1');
sz = size(act1);
act1 = reshape(act1,[sz(1) sz(2) 1 sz(3)]);
I = imtile(mat2gray(act1),'GridSize',[8 12]);
imshow(I)
