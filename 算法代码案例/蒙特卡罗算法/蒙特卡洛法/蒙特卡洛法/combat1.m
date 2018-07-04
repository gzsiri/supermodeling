clear all
close all


tim0=720;%需要模拟的时间
[num,pass]=computing(tim0);%计算模拟数据

%动画制作
envirment    %场景
title1= annotation('textbox', 'Position',[0.3377 0.8712 0.3348 0.07885],...
  'EdgeColor','none','FitHeightToText','off', 'FontName','Arial','FontSize',16,...
  'FontWeight','bold','String',{'理发店忙闲情况分析'});
time1 = annotation('textbox','Position',[0.02754 0.1019 0.0942 0.06538],...
  'EdgeColor','none','FitHeightToText','off','FontSize',14,'FontWeight','bold',...
  'String',{'时间'});
hour1 = annotation('textbox','Position',[0.1072 0.1038 0.07536 0.06346],...
  'EdgeColor','none','FitHeightToText','off','FontSize',14,...
  'FontWeight','bold','String',{'08：'});
minute1 = annotation('textbox','Position',[0.1493 0.1038 0.07246 0.06538],...
  'EdgeColor','none','FitHeightToText','off', 'FontSize',14,...
  'FontWeight','bold','String',{'10'});
counter1=1;  %时间计数
temp1=1;     %顾客计数
counter=1;
counterxy=zeros(7,2);
tempa=0;
tempb=0;
tempc=0;
tempd=0;
tempe=0;
tempf=0;
tempg=0;
global man1 mana1 mana2 mana3 mana4 mana5
global manb1 manb2 manb3 manb4 manb5
global manc1 manc2 manc3 manc4 manc5
global mand1 mand2 mand3 mand4 mand5
global mane1 mane2 mane3 mane4 mane5
    man1(1,:)=[0.4625 0.1786 0.0982 0.1381];  %[x0 y0 x1 y1]
    man1(2,:)=[0.4875 0.2667 0.5018 0.2667];  %[x0 y0 x1 y1]
    man1(3,:)=[0.5214 0.2667 0.5339 0.2667];  %[x0 y0 x1 y1]
    man1(4,:)=[0.5125 0.25 0.5125 0.23];      %[x0 y0 x1 y1]
    man1(5,:)=[0.4968 0.2081 0.525 0.2072];   %[x0 y0 x1 y1]
axis off    

while  counter1<=100  %时间计数
    %显示时间
    minutex=rem(counter1,60);
    hourx=8+(counter1-minutex)/60;
    set(hour1,'String',{hourx})
    set(minute1,'String',{minutex})
  
    if temp1<=num
        
        %离开与删除人脸对象
        if tempa ~= 0
           if  pass(tempa,6) == counter1
               leaveflash(1,counterxy(1,1),counterxy(1,2))
               tempa=0;
               delete(mana1,mana2,mana3,mana4,mana5);
           end
        end
        if tempb~=0
           if  pass(tempb,6) == counter1
               leaveflash(2,counterxy(2,1),counterxy(2,2))
               tempb=0;
               delete(manb1,manb2,manb3,manb4,manb5);
           end
        end
        if tempc~=0            
           if  pass(tempc,6) == counter1
               leaveflash(3,counterxy(3,1),counterxy(3,2))
               tempc=0;
               delete(manc1,manc2,manc3,manc4,manc5);
           end
        end
        if tempd~=0
           if  pass(tempd,6) == counter1
               leaveflash(4,counterxy(4,1),counterxy(4,2))
               tempd=0;
               delete(mand1,mand2,mand3,mand4,mand5);
           end
        end
        if tempe~=0
           if  pass(tempe,6) == counter1
               leaveflash(5,counterxy(5,1),counterxy(5,2))
               tempe=0;
               delete(mane1,mane2,mane3,mane4,mane5);
           end
        end
        if tempf~=0
           if  pass(tempf,6) == counter1
               leaveflash(6,counterxy(6,1),counterxy(6,2))
               tempf=0;
               delete(manf1,manf2,manf3,manf4,manf5);
           end
        end
        if tempg~=0
           if  pass(tempg,6) == counter1
               leaveflash(7,counterxy(7,1),counterxy(7,2))
               tempg=0;
               delete(mang1,mang2,mang3,mang4,mang5);
           end
        end
         
        %产生人脸
        if pass(temp1,2)==counter1
            if tempa==0
               [mana1,mana2,mana3,mana4,mana5]=personcreat(pass(temp1,3))
               tempa=temp1;
               if pass(temp1,5)==1
                   counterxy(1,:)=[-0.027 0.055];
               end
               if pass(temp1,5)==2
                   counterxy(1,:)=[0 0.055];
               end
               if pass(temp1,5)==3
                   counterxy(1,:)=[0.027 0.055];
               end
               temp1=temp1+1;            
            else
                if tempb==0
                    [manb1,manb2,manb3,manb4,manb5]=personcreat(pass(temp1,3))
                    tempb=temp1;
                    if pass(temp1,5)==1
                        counterxy(2,:)=[-0.027 0.055];
                    end
                    if pass(temp1,5)==2
                        counterxy(2,:)=[0 0.055];
                    end
                    if pass(temp1,5)==3
                        counterxy(3,:)=[0.027 0.055];
                    end
                    temp1=temp1+1;
                else
                    if tempc==0
                        [manc1,manc2,manc3,manc4,manc5]=personcreat(pass(temp1,3))
                        tempc=temp1;
                        if pass(temp1,5)==1
                            counterxy(3,:)=[-0.027 0.055];
                        end
                        if pass(temp1,5)==2
                            counterxy(3,:)=[0 0.055];
                        end
                        if pass(temp1,5)==3
                            counterxy(3,:)=[0.027 0.055];
                        end
                        temp1=temp1+1;
                    else
                        if tempd==0
                            [mand1,mand2,mand3,mand4,mand5]=personcreat(pass(temp1,3))
                            tempd=temp1;
                            if pass(temp1,5)==1
                                counterxy(4,:)=[-0.027 0.055];
                            end
                            if pass(temp1,5)==2
                                counterxy(4,:)=[0 0.055];
                            end
                            if pass(temp1,5)==3
                                counterxy(4,:)=[0.027 0.055];
                            end
                            temp1=temp1+1;
                        else
                            if tempe==0
                                [mane1,mane2,mane3,mane4,mane5]=personcreat(pass(temp1,3))
                                tempe=temp1;  
                                if pass(temp1,5)==1
                                    counterxy(5,:)=[-0.027 0.055];
                                end
                                if pass(temp1,5)==2
                                    counterxy(5,:)=[0 0.055];
                                end
                                if pass(temp1,5)==3
                                    counterxy(5,:)=[0.027 0.055];
                                end
                                temp1=temp1+1;
                            else
                                if tempf==0
                                    [manf1,manf2,manf3,manf4,manf5]=personcreat(pass(temp1,3))
                                    tempf=temp1;  
                                    if pass(temp1,5)==1
                                        counterxy(6,:)=[-0.027 0.055];
                                    end
                                    if pass(temp1,5)==2
                                        counterxy(6,:)=[0 0.055];
                                    end
                                    if pass(temp1,5)==3
                                        counterxy(6,:)=[0.027 0.055];
                                    end
                                    temp1=temp1+1;
                                else
                                    if tempg==0
                                        [mang1,mang2,mang3,mang4,mang5]=personcreat(pass(temp1,3))
                                        tempg=temp1;  
                                        if pass(temp1,5)==1
                                            counterxy(7,:)=[-0.027 0.055];
                                        end
                                        if pass(temp1,5)==2
                                            counterxy(7,:)=[0 0.055];
                                        end
                                        if pass(temp1,5)==3
                                            counterxy(7,:)=[0.027 0.055];
                                        end
                                        temp1=temp1+1;
                                    end
                                end                                
                            end
                        end
                    end
                end
            end
        end
        
        %开始服务
         if tempa~=0
             if  pass(tempa,2)+pass(tempa,7) == counter1
                 serveflash(1,counterxy(1,1),counterxy(1,2))
             end
         end
         if tempb~=0
             if  pass(tempb,2)+pass(tempb,7) == counter1
                 serveflash(2,counterxy(2,1),counterxy(2,2))
             end
         end
         if tempc~=0
             if  pass(tempc,2)+pass(tempc,7) == counter1
                 serveflash(3,counterxy(3,1),counterxy(3,2))
             end
         end
         if tempd~=0
             if  pass(tempd,2)+pass(tempd,7) == counter1
                 serveflash(4,counterxy(4,1),counterxy(4,2))
             end
         end
         if tempe~=0
             if  pass(tempe,2)+pass(tempe,7) == counter1
                 serveflash(5,counterxy(5,1),counterxy(5,2))
             end
         end
         if tempf~=0
             if  pass(tempf,2)+pass(tempf,7) == counter1
                 serveflash(6,counterxy(6,1),counterxy(6,2))
             end
         end
         if tempg~=0
             if  pass(tempg,2)+pass(tempg,7) == counter1
                 serveflash(7,counterxy(7,1),counterxy(7,2))
             end
         end
    end   
    counter1=counter1+1;
end

iiii=1;
sumtime=0;
sumtimea=0;
sumtimeb=0;
sumtimec=0;
numa=0;
numb=0;
numc=0;
while iiii<num
    sumtime=sumtime+pass(iiii,3)+pass(iiii,4);
    if pass(iiii,5)==1
        sumtimea=sumtimea+pass(iiii,3)+pass(iiii,4);
        numa=numa+1;
    end
    if pass(iiii,5)==2
        sumtimeb=sumtimeb+pass(iiii,3)+pass(iiii,4);
        numb=numb+1;
    end
    if pass(iiii,5)==3
        sumtimec=sumtimec+pass(iiii,3)+pass(iiii,4);
        numc=numc+1;
    end
iiii=iiii+1;
end

num=num-1;
freetimea=720-sumtimea;
freetimeb=720-sumtimeb;
freetimec=720-sumtimec;
freetime=freetimea+freetimeb+freetimec;
avetimea=round(1000*sumtimea/numa)/1000;
avetimeb=round(1000*sumtimeb/numb)/1000;
avetimec=round(1000*sumtimec/numc)/1000;

scaleaa=freetimea/720;
scaleab=freetimeb/720;
scaleac=freetimec/720;

dispdata(1,:)=[numa numb numc];
dispdata(2,:)=[sumtimea sumtimeb sumtimec];
dispdata(3,:)=[avetimea avetimeb avetimec];
dispdata(4,:)=[freetimea freetimeb freetimec];
dispdata(5,:)=[freetimea/720 freetimeb/720 freetimec/720];

figure(2)
subplot(2,2,1)
bar(dispdata(1,:))
title('服务顾客数')
subplot(2,2,2)
bar(dispdata(2,:))
title('服务时间')
subplot(2,2,3)
bar(dispdata(3,:))
title('平均服务时间')
subplot(2,2,4)
pie(dispdata(5,:))
title('空闲比例')




        