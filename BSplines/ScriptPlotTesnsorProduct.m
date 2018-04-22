%Script to prlot a spline tensor product
num=100;
xi = [0,1,3,4,5,6,7,9,10];
x = linspace(0,10,num);
m = length(xi);
p = 3;
n = m-p-1;
Coeff = [4,2,10,4,2;...
    4,2,1,4,2;...
    -13,2,1,4,1;...
    4,2,7,4,3;...
    4,2,1,8,6];
SX=zeros(num);

figure
hold on

d = zeros(n,num);
for j1 = 1:n
    Bmatrix = zeros(n,num);
    for j2 =1:n
        Bmatrix(j2,:) = Bspl(x,xi,j2,p);
    end
    d(j1,:) = Coeff(j1,:)*Bmatrix;
end

Z = zeros(num,num);
for i = 1:num
    Bmat = zeros(n,num);
    for j = 1:n
        Bmat(j,:) = Bspl(x,xi,j,p);
    end
    sx = d(:,i)'*Bmat;
    Z(i,:) = sx;
    y=repmat(x(i),num);
    plot3(x,y,sx);
    view(3);
end

figure
surf(Z);
camlight
colormap cool;
shading interp
material dull
view(3);
