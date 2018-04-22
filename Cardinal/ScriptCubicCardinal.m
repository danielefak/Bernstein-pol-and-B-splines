%Script to plot cubic cardinal B-spline in 3 different ways:
%using function Cardinal, function Bspl and the calculation 
%explicit calculations as a piecewise polynomial

x = linspace(0,4,400);
xi=[0,1,2,3,4];

figure
plot(x,Cardinal(3,x))

figure
plot(x,Bspl(x,xi,1,3));

figure
Mx=zeros(1,length(x));
int=(x>=0 & x<=1);
Mx(int) = (x(int).^3)/6;
int=(x>=1 & x<2);
Mx(int) = (-3*x(int).^3 + 12*x(int).^2 -12*x(int) + 4)/6;
int=(x>=2 & x<3);
Mx(int) = ( 3*x(int).^3 -24*x(int).^2 +60*x(int) - 44 )/6; 
int=(x>=3 & x<4) ;
Mx(int) = (- x(int).^3 + 12*x(int).^2 -48*x(int) + 64 )/6;
plot(x,Mx)