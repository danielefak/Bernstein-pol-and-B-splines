%Bezier Curve Points
%P = matrix such that the i-th column is the i-1th control point  
%par = number of points for discretization

function Points = BezierCurve(P,par)
t = linspace(0,1,par);
[~,cols] = size(P);
p = cols-1;
B = zeros(cols,par);
for j = 0:p
    B(j+1,:) = Bern(j,p,t);
end
Points = P*B;
