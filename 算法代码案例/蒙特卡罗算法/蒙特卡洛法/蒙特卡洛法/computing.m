function [num,pass]=computing(tim0)

seat=[0 0 0];%服务员属性
pass=rand(1,4);%序号、到达时间、特殊要求时间、正常理发时间
pass(5)=0;%服务员
pass(6)=0;%离开时间
pass(7)=0;%等待时间
num=1;%服务人数
tim=0;%时间计数器
temp=0;%

while tim<=tim0 
    pass(num,1)=num;  %装入序号
    pass(num,2)=rand;
    pass(num,3)=rand;
    pass(num,4)=rand;
    
    %计算顾客到达时间
    if pass(num,2)<=0.07
       temp=4;
    else if  pass(num,2)<=0.17
            temp=5;
        else if  pass(num,2)<=0.69
            temp=6;
            else if  pass(num,2)<=0.89
            temp=7;
                else temp=8;
                end
            end
        end
    end
    tim=tim+temp;   %装入顾客到达时间
    pass(num,2)=tim;
    if pass(num,3)<=0.1 
        pass(num,3)=4;  %装入需要特殊服务的时间
    else pass(num,3)=0;
    end
    num=num+1;
end
num=num-1;

for i=1:num
    
    %计算顾客的理发席位
    if seat(1)<=pass(i,2)+pass(i,7)
        pass(i,5)=1; %由1号服务员理发
        temp1=timinge1(1,pass(i,4));
        seat(1)=pass(i,2)+pass(i,3)+temp1;
        pass(i,4)=temp1;  %装入正常理发所需时间
    else if seat(2)<=pass(i,2)+pass(i,7)
            pass(i,5)=2;  %由2号服务员理发
            temp1=timinge1(2,pass(i,4));
            seat(2)=pass(i,2)+pass(i,3)+temp1;
            pass(i,4)=temp1; %装入正常理发所需时间
        else if seat(3)<=pass(i,2)+pass(i,7)
                pass(i,5)=3; %由2号服务员理发
                temp1=timinge1(3,pass(i,4));
                seat(3)=pass(i,2)+pass(i,3)+temp1;
                pass(i,4)=temp1;                
            else               %计算等待时间
                x=seat(1);
                y=1; 
                if x>seat(2)
                    x=seat(2);
                    y=2;
                end
                if x>seat(3)
                    x=seat(3);
                    y=3;
                end
                pass(i,5)=y;
                temp1=timinge1(y,pass(i,4));
                pass(i,7)=seat(y)-pass(i,2);
                seat(y)=seat(y)+temp1+pass(i,3);
                pass(i,4)=temp1;
            end
        end
    end
pass(i,6)=pass(i,2)+pass(i,3)+pass(i,4);
end