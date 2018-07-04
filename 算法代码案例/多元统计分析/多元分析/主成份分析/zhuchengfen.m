clc,clear 
load sn.txt  %把原始的x1,x2,x3,x4,y的数据保存在纯文本文件sn.txt中 
[m,n]=size(sn); 
x0=sn(:,1:n-1);y0=sn(:,n);  
r=corrcoef(x0)  %计算相关系数矩阵 
xb=zscore(x0);  %对设计矩阵进行标准化处理 
yb=zscore(y0);  %对y0进行标准化处理 
%以下命令利用设计矩阵进行主成分分析，返回值c的列向量对应着主成分的系数 
%返回值s对应着式（26）中的Z矩阵，t返回的是特征值 
[c,s,t]=princomp(xb) 
contr=cumsum(t)/sum(t)  %计算累积贡献率，第i个分量表示前i个主成分的贡献率 
num=input('请选项主成分的个数:')   %通过累积贡献率交互式选择主成分的个数 
hg1=[ones(m,1),x0]\y0;   %计算普通最小二乘法回归系数 
hg1=hg1' 
%下面显示普通最小二乘法回归结果 
fprintf('y=%f',hg1(1)); 
for i=1:n-1 
    fprintf('+%f*x%d',hg1(i+1),i); 
end 
fprintf('\n') 
hg=s(:,1:num)\yb;  %主成分变量的回归系数 
hg=c(:,1:num)*hg;  %标准化变量的回归方程系数 
%下面计算原始变量回归方程的系数 
hg2=[mean(y0)-std(y0)*mean(x0)./std(x0)*hg, std(y0)*hg'./std(x0)]  
%下面显示主成分回归结果 
fprintf('y=%f',hg2(1)); 
for i=1:n-1 
    fprintf('+%f*x%d',hg2(i+1),i); 
    end 
fprintf('\n') 
%下面计算两种回归分析的剩余标准差 
rmse1=sqrt(sum((x0*hg1(2:end)'+hg1(1)-y0).^2)/(m-n)) 
rmse2=sqrt(sum((x0*hg2(2:end)'+hg2(1)-y0).^2)/(m-num-1)) 