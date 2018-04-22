%Script to plot a spline function

xi = [0,1,3,4,5,6,7,9,10];
m = length(xi);
x = linspace(0,10,100);
p = 3;
n = m-p-1; 
Coeff = [1,2,1,4,2];
Bmatrix = zeros(n,100);
for j = 1:n
    Bmatrix(j,:) = Bspl(x,xi,j,p);
end
sx = Coeff*Bmatrix;
plot(x,sx);
