function [face1,face2,face3,face4,face5]=personcreat(vect)

if vect==0
     face1 = annotation('ellipse',[0.4625 0.1786 0.0982 0.1381],'FaceColor',[0.6824 0.4667 0],'EdgeColor',[0.6824 0.4667 0]);
else face1 = annotation('ellipse',[0.4625 0.1786 0.0982 0.1381],'FaceColor',[0.4 0.6 0],'EdgeColor',[0.6824 0.4667 0]);%[0.2096 0.6881 0.09821 0.1381]
end
    face2 = annotation('line',[0.4875 0.5018],[0.2667 0.2667],'LineWidth',3);
    face3 = annotation('line',[0.5214 0.5339],[0.2667 0.2667],'LineWidth',3);
    face4 = annotation('line',[0.5125 0.5125],[0.25 0.2309],'LineWidth',3);
    face5 = annotation('line',[0.4968 0.525],[0.2081 0.2072],'LineWidth',3);