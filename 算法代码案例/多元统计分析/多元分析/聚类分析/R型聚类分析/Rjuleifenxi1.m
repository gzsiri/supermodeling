load gj.txt   %把原始数据保存在纯文本文件 gj.txt中 
r=corrcoef(gj)  %计算相关系数矩阵 
d=1-r;  %进行数据变换,把相关系数转化为距离 
d=tril(d);       %取出矩阵 d 的下三角元素 
d=nonzeros(d);  %取出非零元素 
d=d'; %化成行向量 
z=linkage(d,'average');  %按类平均法聚类 
dendrogram(z);  %画聚类图 
T=cluster(z,'maxclust',6)  %把变量划分成 6 类 
for i=1:6 
    tm=find(T==i);  %求第 i 类的对象 
    tm=reshape(tm,1,length(tm)); %变成行向量 
    fprintf('第%d 类的有%s\n',i,int2str(tm)); %显示分类结果 
end 