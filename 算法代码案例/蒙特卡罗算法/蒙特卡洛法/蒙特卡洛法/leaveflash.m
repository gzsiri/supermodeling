function leaveflash(xx,yy,zz)

global man1 mana1 mana2 mana3 mana4 mana5
global manb1 manb2 manb3 manb4 manb5
global manc1 manc2 manc3 manc4 manc5
global mand1 mand2 mand3 mand4 mand5
global mane1 mane2 mane3 mane4 mane5
    
    switch xx
    case 1
          for ii = 10:-1:1
               face(:,1)=man1(:,1)+yy*(ii-1);
               face(:,3)=man1(:,3)+yy*(ii-1); 
               face(:,2)=man1(:,2)+zz*(ii-1);
               face(:,4)=man1(:,4)+zz*(ii-1);
               face(1,3)=0.0982;
               face(1,4)=0.1381;
               set(mana1,'position',[face(1,1) face(1,2)  face(1,3) face(1,4)]);
               set(mana2,'X',[face(2,1);face(2,3)],'Y',[face(2,2);face(2,4)]);
               set(mana3,'X',[face(3,1);face(3,3)],'Y',[face(3,2);face(3,4)]);
               set(mana4,'X',[face(4,1);face(4,3)],'Y',[face(4,2);face(4,4)]);
               set(mana5,'X',[face(5,1);face(5,3)],'Y',[face(5,2);face(5,4)]);
               MM(ii)=getframe;
          end          
    case 2
           for ii = 10:-1:1
               face(:,1)=man1(:,1)+yy*(ii-1);
               face(:,3)=man1(:,3)+yy*(ii-1);
               face(:,2)=man1(:,2)+zz*(ii-1);
               face(:,4)=man1(:,4)+zz*(ii-1);
               face(1,3)=0.0982;
               face(1,4)=0.1381;
               set(manb1,'position',[face(1,1) face(1,2)  face(1,3) face(1,4)]);
               set(manb2,'X',[face(2,1);face(2,3)],'Y',[face(2,2);face(2,4)]);
               set(manb3,'X',[face(3,1);face(3,3)],'Y',[face(3,2);face(3,4)]);
               set(manb4,'X',[face(4,1);face(4,3)],'Y',[face(4,2);face(4,4)]);
               set(manb5,'X',[face(5,1);face(5,3)],'Y',[face(5,2);face(5,4)]);
               MM(ii)=getframe;
            end
    case 3
           for ii = 10:-1:1
               face(:,1)=man1(:,1)+yy*(ii-1);
               face(:,3)=man1(:,3)+yy*(ii-1); 
               face(:,2)=man1(:,2)+zz*(ii-1);
               face(:,4)=man1(:,4)+zz*(ii-1);
               face(1,3)=0.0982;
               face(1,4)=0.1381;
               set(manc1,'position',[face(1,1) face(1,2)  face(1,3) face(1,4)]);
               set(manc2,'X',[face(2,1);face(2,3)],'Y',[face(2,2);face(2,4)]);
               set(manc3,'X',[face(3,1);face(3,3)],'Y',[face(3,2);face(3,4)]);
               set(manc4,'X',[face(4,1);face(4,3)],'Y',[face(4,2);face(4,4)]);
               set(manc5,'X',[face(5,1);face(5,3)],'Y',[face(5,2);face(5,4)]);
               MM(ii)=getframe;
           end
    case 4
           for ii = 10:-1:1
               face(:,1)=man1(:,1)+yy*(ii-1);
               face(:,3)=man1(:,3)+yy*(ii-1); 
               face(:,2)=man1(:,2)+zz*(ii-1);
               face(:,4)=man1(:,4)+zz*(ii-1);
               face(1,3)=0.0982;
               face(1,4)=0.1381;
               set(mand1,'position',[face(1,1) face(1,2)  face(1,3) face(1,4)]);
               set(mand2,'X',[face(2,1);face(2,3)],'Y',[face(2,2);face(2,4)]);
               set(mand3,'X',[face(3,1);face(3,3)],'Y',[face(3,2);face(3,4)]);
               set(mand4,'X',[face(4,1);face(4,3)],'Y',[face(4,2);face(4,4)]);
               set(mand5,'X',[face(5,1);face(5,3)],'Y',[face(5,2);face(5,4)]);
               MM(ii)=getframe;
           end
     case 5
           for ii = 10:-1:1
               face(:,1)=man1(:,1)+yy*(ii-1);
               face(:,3)=man1(:,3)+yy*(ii-1); 
               face(:,2)=man1(:,2)+zz*(ii-1);
               face(:,4)=man1(:,4)+zz*(ii-1);
               face(1,3)=0.0982;
               face(1,4)=0.1381;
               set(mane1,'position',[face(1,1) face(1,2)  face(1,3) face(1,4)]);
               set(mane2,'X',[face(2,1);face(2,3)],'Y',[face(2,2);face(2,4)]);
               set(mane3,'X',[face(3,1);face(3,3)],'Y',[face(3,2);face(3,4)]);
               set(mane4,'X',[face(4,1);face(4,3)],'Y',[face(4,2);face(4,4)]);
               set(mane5,'X',[face(5,1);face(5,3)],'Y',[face(5,2);face(5,4)]);
               MM(ii)=getframe;
           end
     case 6
           for ii = 10:-1:1
               face(:,1)=man1(:,1)+yy*(ii-1);
               face(:,3)=man1(:,3)+yy*(ii-1); 
               face(:,2)=man1(:,2)+zz*(ii-1);
               face(:,4)=man1(:,4)+zz*(ii-1);
               face(1,3)=0.0982;
               face(1,4)=0.1381;
               set(manf1,'position',[face(1,1) face(1,2)  face(1,3) face(1,4)]);
               set(manf2,'X',[face(2,1);face(2,3)],'Y',[face(2,2);face(2,4)]);
               set(manf3,'X',[face(3,1);face(3,3)],'Y',[face(3,2);face(3,4)]);
               set(manf4,'X',[face(4,1);face(4,3)],'Y',[face(4,2);face(4,4)]);
               set(manf5,'X',[face(5,1);face(5,3)],'Y',[face(5,2);face(5,4)]);
               MM(ii)=getframe;
           end
     case 7
           for ii = 10:-1:1
               face(:,1)=man1(:,1)+yy*(ii-1);
               face(:,3)=man1(:,3)+yy*(ii-1); 
               face(:,2)=man1(:,2)+zz*(ii-1);
               face(:,4)=man1(:,4)+zz*(ii-1);
               face(1,3)=0.0982;
               face(1,4)=0.1381;
               set(mang1,'position',[face(1,1) face(1,2)  face(1,3) face(1,4)]);
               set(mang2,'X',[face(2,1);face(2,3)],'Y',[face(2,2);face(2,4)]);
               set(mang3,'X',[face(3,1);face(3,3)],'Y',[face(3,2);face(3,4)]);
               set(mang4,'X',[face(4,1);face(4,3)],'Y',[face(4,2);face(4,4)]);
               set(mang5,'X',[face(5,1);face(5,3)],'Y',[face(5,2);face(5,4)]);
               MM(ii)=getframe;
           end 
end