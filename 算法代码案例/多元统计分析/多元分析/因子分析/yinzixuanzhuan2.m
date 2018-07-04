clc,clear 
load r.txt  %把原始的相关系数矩阵保存在纯文本文件r.txt中 
[vec,val,con]=pcacov(r) 
f1=repmat(sign(sum(vec)),size(vec,1),1); 
vec=vec.*f1;     %特征向量正负号转换 
f2=repmat(sqrt(val)',size(vec,1),1); 
a=vec.*f2   %计算全部因子的载荷矩阵，见（40）式 
num=2; %num为因子的个数 
a1=a(:,[1:num])   %提出两个因子的载荷矩阵 
tcha=diag(r-a1*a1')   %因子的特殊方差 
ccha=r-a1*a1'-diag(tcha)  %求残差矩阵 
gong=cumsum(con(1:num))     %求累积贡献率 
[mat,sv]=factoran(r,2,'xtype','cov','rotate','varimax') 
%返回值mat为旋转因子载荷矩阵，sv为特殊方差 
 