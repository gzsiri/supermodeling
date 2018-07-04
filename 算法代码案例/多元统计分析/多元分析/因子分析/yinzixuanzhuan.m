clc,clear 
r=[1 -1/3 2/3;-1/3 1 0;2/3 0 1]; 
%下面利用相关系数矩阵求主成分解，val的列为r的特征向量，即主成分的系数 
[vec,val,con]=pcacov(r) %val为r的特征值，con为各个主成分的贡献率 
f1=repmat(sign(sum(vec)),size(vec,1),1); %构造与vec同维数的元素为±1的矩阵 
vec=vec.*f1; %修改特征向量的正负号，每个特征向量乘以所有分量和的符号函数值 
f2=repmat(sqrt(val)',size(vec,1),1); 
a=vec.*f2    %构造全部因子的载荷矩阵，见（40）式  
num=2;  %选择两个主因子 
[b,t]=rotatefactors(a(:,1:num),'method', 'varimax')  %对载荷矩阵进行旋转 
%其中b为旋转载荷矩阵，t为变换的正交矩阵 
 