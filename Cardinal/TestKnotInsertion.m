%Script cubic knot insertion
P = [2,4,1,5];
[D1,D2] = BezierExtraction(P);
x = linspace(-3,4,100);
%plot initial cubic cardinal spline
Cx = P(1)*Cardinal(3,x+3) + P(2)*Cardinal(3,x+2) +...
    P(3)*Cardinal(3,x+1) + P(4)*Cardinal(3,x);
plot(x,Cx);

%plot spline after knot insertion
figure
xi = [-3,-2,-1,0,0,0,0,1,1,1,1,2,3,4];
Bmatrix = zeros(10,100);
for j = 1:10
    Bmatrix(j,:) = Bspl(x,xi,j,3);
end
Sx = (D1')*Bmatrix;
plot(x,Sx);