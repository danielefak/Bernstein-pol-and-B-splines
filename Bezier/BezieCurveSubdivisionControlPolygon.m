%Plot of control points after recursive  subdivision (n times)

function BezieCurveSubdivisionControlPolygon(P,n)
hold on
if n == 1
   plot(P(1,:),P(2,:));
else
    [C,D] = BezierSubdivision(P,1/2);
    BezieCurveSubdivisionControlPolygon(C,n-1);
    BezieCurveSubdivisionControlPolygon(D,n-1);
end
end