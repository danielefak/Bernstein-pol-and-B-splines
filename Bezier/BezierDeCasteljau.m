%The Bezier's curve points calculated by de Casteljau 
%algorithm. Recalling the de Casteljau function,
%calculate points of the curve in -par- number of 
%points (in wich we havediscretize our parametric domain).
%P = matrix such that the i-th column is the i-th control point  

function [x,y] = BezierDeCasteljau(P,par)
x = zeros(1,par);
y = zeros(1,par);
t = linspace(0,1,par);
for i = 1:par
    Point = deCasteljau(P,t(i));
    x(i) = Point(1,1);
    y(i) = Point(2,1);
end
