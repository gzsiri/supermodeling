function NumSIM
clear all
clc

load net32 net

ptest1=[0 1 0 1 1 0 0 1 0 0 1 0 1 1 1;
    1 1 1 0 0 1 1 1 1 1 0 0 1 1 1;
    1 1 1 0 0 1 1 1 1 0 0 1 1 1 1
    1 0 1 1 0 1 1 1 1 0 0 1 0 0 1]';

ptest2=[0 1 1 1 0 1 1 1 1 0 0 1 0 0 1;
    1 1 1 0 0 1 0 1 0 1 0 0 1 1 1]';

a1=sim(net,ptest1)
a2=sim(net,ptest2)