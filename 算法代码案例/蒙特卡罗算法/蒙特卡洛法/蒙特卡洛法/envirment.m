function envirment
%场景设置
    pict=figure('color',[0.75 0.75 0.75],'position',[50 50 690 520]);

    door = annotation('rectangle',[0.4214 0.1405 0.1946 0.03333],'FaceColor',[0 1 0],'EdgeColor',[0 1 0]);
    word1 = annotation('textbox','Position',[0.3393 0.1143 0.0875 0.07619],'EdgeColor','none','FitHeightToText','off','FontSize',12,'String',{'门口'});
    
    seata1= annotation('rectangle',[0.2054 0.8214 0.1107 0.02857],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    seata2 = annotation('rectangle',[0.2071 0.7476 0.01429 0.1024],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    seata3 = annotation('rectangle',[0.3021 0.7419 0.01429 0.1024],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    word2 = annotation('textbox','Position',[0.1607 0.65 0.1107 0.06667],'EdgeColor','none','FitHeightToText','off','String',{'Seat A'});
    
    seatb1 = annotation('rectangle',[0.4579 0.8171 0.1107 0.02857],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    seatb2 = annotation('rectangle',[0.4579 0.7386 0.01429 0.1024],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    seatb3 = annotation('rectangle',[0.5564 0.7448 0.01429 0.1024],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    word3 = annotation('textbox','Position',[0.3768 0.6381 0.1036 0.07381],'EdgeColor','none','FitHeightToText','off','String',{'Seat B'});
    
    seatc1 = annotation('rectangle',[0.6986 0.8157 0.1107 0.02857],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    seatc2 = annotation('rectangle',[0.6996 0.7343 0.01429 0.1024],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    seatc3 = annotation('rectangle',[0.7964 0.7333 0.01429 0.1024],'FaceColor',[0.8471 0.1608 0],'EdgeColor',[0.8471 0.1608 0]);
    word4 = annotation('textbox','Position',[0.6429 0.6286 0.1018 0.07619],'EdgeColor','none','FitHeightToText','off','String',{'Seat C'});
    
    watierplace = annotation('rectangle',[0.8214 0.1762 0.01964 0.3857],'FaceColor',[0 1 1],'EdgeColor',[0 1 1]);
    word5 = annotation('textbox','Position',[0.7107 0.2 0.1179 0.0619],'EdgeColor','none','FitHeightToText','off','String',{'等待席'});