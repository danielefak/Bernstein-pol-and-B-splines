%Script plot an istance of tensor product bi-cubic spline 
%on different knot sequences with n1 = 5,  n2 = 3  

num = 120;
xi1 = [0,1,3,4,5,6,7,9,10];
xi2 = [3,4,5,6,7,9,9];
x1 = linspace(0,10,num);
x2 = linspace(3,9,num);
Coeff = [4,-2,10; 4,2,1; -13,2,1; 4,2,7; 6,4,1];

Z = TensorSpline(x1,x2,xi1,xi2,Coeff);

%Plot surface with some fancy properties
surf(Z);
camlight
colormap cool;
shading interp
material dull

%Plot as the union of univariate B-spline functions
figure
hold on
for i = 1:num
    sx = Z(i,:);
    y = repmat(x1(i),1,num);
    plot3(x1,y,sx)
end