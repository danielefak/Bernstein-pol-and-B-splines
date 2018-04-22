%Script Bezier curve plot
P = [2,1,2,5,7,6; 1,3,5,5.5,3,1.5]; 
Points = BezierCurve(P,100);
hold on
plot(Points(1,:),Points(2,:)); %Plots the curve
plot(P(1,:),P(2,:));           %Plots control polygon
