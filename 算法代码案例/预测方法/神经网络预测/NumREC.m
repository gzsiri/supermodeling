function NumREC
clear all
clc

pr=[0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1;0 1];
net=newp(pr,4);

p=[0 1 0 1 1 0 0 1 0 0 1 0 1 1 1;
    1 1 1 0 0 1 1 1 1 1 0 0 1 1 1;
    1 1 1 0 0 1 1 1 1 0 0 1 1 1 1
    1 0 1 1 0 1 1 1 1 0 0 1 0 0 1]';

t=eye(4);

[net,tr]=train(net,p,t);
iw1=net.IW{1}    %输出权值
b1=net.b{1}      %输出阈值
epoch1=tr.epoch  %输出训练过程经过的步长
perf1=tr.perf    %输出每一步训练结果的误差

save net32 net