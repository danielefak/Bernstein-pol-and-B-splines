%Script to plot B-spline functions for p = 1,2,3,4 

xi = [0,1,3,4,5,6,7,9,10];
m = length(xi);
x = linspace(0,10,1000);

for p = 4:4
    n = m-p-1;
    figure
    hold on
    for j = 1:n
        Bx = Bspl(x,xi,j,p);
        plot(x,Bx)
    end
end