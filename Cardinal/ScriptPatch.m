V = [0 0 0; 1 0 1; 2 0 2; 3 0 3;... 
     0 1 0; 1 1 1; 2 1 2; 3 1 3;...
     0 2 0; 1 2 1; 2 2 2; 3 2 3;...
     0 3 0; 1 3 1; 2 3 2; 3 3 3];
%  
%  V = [0 0 0;  0 1 1;  0 2 2;  0 3 3;... 
%      1 0  0; 1 1 1; 1 2  2; 1 3  3;...
%      2 0 0;  2 1 1; 2 2 2;  2 3 3;...
%      3 0 0;  3 1 1; 3 2 2; 3 3 3];
%  
%  V = [0 0 0; 0.5 0 1; 1 0 2; 0 0 3;... 
%      0 1 0; 0.5 1 1; 1 1 2; 0 1 3;...
%      0 2 0; 0.5 2 1; 1 2 2; 0 2 3;...
%      0 3 0; 0.5 3 1; 1 3 2; 0 3 3];
%  
 FV= [1 2 6 5; 2 3 7 6; 3 4 8 7; 5 6 10 9; 6 7 11 10; 7 8 12 11; ...
     9 10 14 13; 10 11 15 14; 11 12 16 15];
 hold on
 patch('vertices',V,'faces',FV,'facecolor','w')
 
%  for i=0:3
%      for j=0:3
%         text(i,j+0.2,i+0.2, "P"+num2str(i)+num2str(j));
%      end
%  end
 
  for i=0:3
        text(V(i+1,1),V(i+1,2)+0.2,V(i+1,3)+0.2, "P_{"+num2str(0)+","+num2str(i)+"}");
  end
  for i=4:7
        text(V(i+1,1),V(i+1,2)+0.2,V(i+1,3)+0.2, "P_{"+num2str(1)+","+num2str(i-4)+"}");
  end
  for i=8:11
        text(V(i+1,1),V(i+1,2)+0.2,V(i+1,3)+0.2, "P_{"+num2str(2)+","+num2str(i-8)+"}");
  end
  for i=12:15
        text(V(i+1,1),V(i+1,2)+0.2,V(i+1,3)+0.2, "P_{"+num2str(3)+","+num2str(i-12)+"}");
  end
  
 view(-78,48)

 for j=1:9
 BFs= BFacePoints(V,FV,j);
 for i=1:4
     if (i-1 == 2 && j == 1)|| (i-1 == 3 && j == 2) ||(i-1 == 2 && j == 2)...
        ||(i-1 == 3 && j == 3)|| (i-1 == 1 && j == 4) ||(i-1 == 0 && j == 5)...
        ||(i-1 == 1 && j == 5)|| (i-1 == 0 && j == 6) ||(i-1 == 2 && j == 4)...
        ||(i-1 == 3 && j == 5)|| (i-1 == 2 && j == 5) ||(i-1 == 3 && j == 6)...
        ||(i-1 == 1 && j == 7)|| (i-1 == 0 && j == 8) ||(i-1 == 1 && j == 8)...
        ||(i-1 == 0 && j == 9)
 plot3(BFs(i,1),BFs(i,2),BFs(i,3),'O',...
     'LineWidth',2,...
     'MarkerSize',5,...
     'MarkerEdgeColor','r',...
     'MarkerFaceColor','r');
 text(BFs(i,1),BFs(i,2)+0.25,BFs(i,3)+0.25, "D_{"+num2str(i-1)+","+num2str(j)+"}");
     else
       plot3(BFs(i,1),BFs(i,2),BFs(i,3),'O',...
     'LineWidth',2,...
     'MarkerSize',5,...
     'MarkerEdgeColor','b',...
     'MarkerFaceColor','b');   
  %text(BFs(i,1),BFs(i,2)+0.25,BFs(i,3)+0.25, "D_{"+num2str(i-1)+","+num2str(j)+"}");
     end
 end
 end
 view(-77,46)
function [BFs]=BFacePoints(V,F,i)
a=4/9; b=2/9; c=1/9;
M= V(F(i,:),:);
BFs=[a,b,c,b ; b,a,b,c ;c,b,a,b; b,c,b,a ]*M;
end


% %FacePoints
% t=9;
% Q33=mean(V(FV(t,:),:));
% S=Q33;
% plot3(S(1),S(2),S(3),'r*');
% text(S(1),S(2)+0.2,S(3)+0.2, "Q"+num2str(3)+num2str(3));
% 
% t=8;
% Q13=mean(V(FV(t,:),:));
% S=Q13;
% plot3(S(1),S(2),S(3),'r*');
% text(S(1),S(2)+0.2,S(3)+0.2, "Q"+num2str(1)+num2str(3));
% 
% t=6;
% Q31=mean(V(FV(t,:),:));
% S=Q31;
% plot3(S(1),S(2),S(3),'r*');
% text(S(1),S(2)+0.2,S(3)+0.2, "Q"+num2str(3)+num2str(1));
% 
% t=5;
% Q11=mean(V(FV(t,:),:));
% S=Q11;
% plot3(S(1),S(2),S(3),'r*');
% text(S(1),S(2)+0.2,S(3)+0.2, "Q"+num2str(1)+num2str(1));
% 
% %Edgepoints
% Q23=(Q33 + Q13  +V(15,:)+V(11,:))/4;
% P1=Q23;
% plot3(P1(1),P1(2),P1(3),'*',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor','b');
% text(P1(1),P1(2)+0.2,P1(3)+0.2, "Q"+num2str(2)+num2str(3));
% 
% 
% Q12=( Q13+ Q11 +V(10,:)+V(11,:))/4;
% P1=Q12;
% plot3(P1(1),P1(2),P1(3),'*',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor','b');
% text(P1(1),P1(2)+0.2,P1(3)+0.2, "Q"+num2str(1)+num2str(2));
% 
% 
% Q21=( Q31+ Q11 +V(7,:)+V(11,:))/4;
% P1=Q21;
% plot3(P1(1),P1(2),P1(3),'*',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor','b');
% text(P1(1),P1(2)+0.2,P1(3)+0.2, "Q"+num2str(2)+num2str(1));
% 
% Q32=(Q33+Q31 +V(12,:)+V(11,:))/4;
% P1=Q32;
% plot3(P1(1),P1(2),P1(3),'*',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor','b');
% text(P1(1),P1(2)+0.2,P1(3)+0.2, "Q"+num2str(3)+num2str(2));
% 
% %Vertex Point
% F=(Q11+Q31+Q33+Q13)/4;
% R=(V(12,:) +V(10,:)+V(15,:) +V(7,:) + 4*V(11,:))/8;
% P=V(11,:);
% Q22 = (F +2*R + P)/4;
% plot3(Q22(1),Q22(2),Q22(3),'O',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','g',...
%     'MarkerFaceColor','g');
% text(Q22(1)-0.2,Q22(2),Q22(3), "Q"+num2str(2)+num2str(2));
