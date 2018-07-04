function xxxx=timinge1(vect1,vect)

switch vect1
    case 1    
       if vect<=0.18
            xxxx=8;
        else if  vect<=0.4
               xxxx=9;
            else if vect<=0.77
                    xxxx=10;
                else xxxx=11;
                end
            end
       end
   case 2    
       if vect<=0.18
            xxxx=10;
        else if  vect<=0.37
               xxxx=11;
            else if vect<=0.72
                    xxxx=12;
                else xxxx=13;
                end
            end
       end
    otherwise  
        if vect<=0.15
            xxxx=12;
        else if  vect<=0.37
               xxxx=13;
            else if vect<=0.74
                    xxxx=14;
                else xxxx=15;
                end
            end
       end
end