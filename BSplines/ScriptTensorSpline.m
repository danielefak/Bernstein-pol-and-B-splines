%Script to plot an istance of tensor product spline 
%on the same knot sequence: xi1 = xi2 = xi,  n1 = n2 = 5

num=60;
xi = [0,1,3,4,5,6,7,9,10];
x = linspace(0,10,num);
Coeff =...
  [4,2,10,4,2; 8,2,1,4,2;-13,2,1,4,6;-4,2,7,4,-3;4,2,1,8,6];

Z = TensorSpline(x,x,xi,xi,Coeff);
surf(Z); %plots surface
camlight