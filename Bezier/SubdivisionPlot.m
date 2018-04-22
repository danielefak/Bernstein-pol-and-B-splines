%Script de Casteljau subdivision plot:
P = [2,1,2,5,7,6; 1,3,5,5.5,3,1.5]; %Control points

hold on
[C,D] = BezierSubdivision(P,1/2);
plot(C(1,:),C(2,:));
plot(D(1,:),D(2,:));

Pnt = BezierCurve(C,100);
plot(Pnt(1,:),Pnt(2,:));

Pnt = BezierCurve(D,100);
plot(Pnt(1,:),Pnt(2,:));

