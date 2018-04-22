%Script to plot Bernstein polynomials as special B-splines

x = linspace(0,1,100);

for p = [1,2,3,10]
    xi = [zeros(1,p+1) ones(1,p+1)];
    n = 2*p+2 - p-1;
    figure
    hold on
    for j = 1:n
        Bx = Bspl(x,xi,j,p);
        plot(x,Bx)
    end
end