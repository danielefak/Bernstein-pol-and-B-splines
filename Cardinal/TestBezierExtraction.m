%Script Bezier extraction
P = [2,4,1,5];
[D1,D2] = BezierExtraction(P);
x = linspace(0,1,100);

%plot initial cubic cardinal spline
Cx = P(1)*Cardinal(3,x+3) + P(2)*Cardinal(3,x+2) +...
    P(3)*Cardinal(3,x+1) + P(4)*Cardinal(3,x);
plot(x,Cx);

%plot Bernstein
figure
BernM = [Bern(0,3,x)',Bern(1,3,x)', Bern(2,3,x)', Bern(3,3,x)'];
Bx = (D2')*BernM';
plot(x,Bx);