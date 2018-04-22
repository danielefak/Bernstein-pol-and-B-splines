%Script de Casteljau plot:

P = [1,2,3,4,5 6,7; 1,4,5,6,4,2,0]; %Control points
[x,y] = BezierDeCasteljau(P,100);
hold on
plot(x,y)  %Plots the curve
plot(P(1,:),P(2,:));  %Plots control polygon
