figure(1); clf;
num = 500;
xi = [0,0,0,0,1,2,2,2,2];
x = linspace(0,2,num);
p = 3;
Coeff = [1,1,1,1,1;...
    1,2,2,2,1;...
    1,2,2,2,1;...
    1,2,2,2,1;...
    1,1,1,1,1];
SX = TensorSpline(x,x,xi,xi,Coeff);
[X,Y] = meshgrid(x);
surf(X,Y,SX);
shading interp; 

hold on
%alpha(0.4);
a=[0,1/3,1,5/3,2];  %Greville points
[X,Y] = meshgrid(a);
mesh(X,Y,Coeff, 'FaceColor','none', 'EdgeColor','black','LineWidth',1.5);
%alpha(0.4)
axis off

view(-90,90)
print -djpeg -r600 'MESH8.jpg'