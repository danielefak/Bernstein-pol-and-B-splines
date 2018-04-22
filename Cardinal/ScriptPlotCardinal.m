%Script to plot cardinal B-spline functions for p = 1,2,3,4 
x = linspace(0,5,100);
figure
hold on

for p = 1:4
    xi = linspace(0,p+1,p+2);
    Bx = Bspl(x,xi,1,p);
    plot(x,Bx)
end