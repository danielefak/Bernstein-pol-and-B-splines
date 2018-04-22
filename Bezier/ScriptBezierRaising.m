%Plot new control polygon after degre raising
P = [2,1,2,5,7,6; 1,3,5,5.5,3,1.5]; %Control points
[x,y] = BezierDeCasteljau(P,100);
hold on
plot(x,y)  %Plots the curve
plot(P(1,:),P(2,:));  %Plot control polygon

for t=1:2
    NP = BezierControlPointsRaising(P);
    P = NP;
    plot(P(1,:),P(2,:));
end
