%Degree raising algorithm. Given the matrix of control points,
%the function returns a new matrix with one extra column
function NP = BezierControlPointsRaising(P)
[rows,cols] = size(P);
p = cols-1;
u = zeros(rows,1);
PP = [u P u];
NP = zeros(rows,cols+1);
for j = 1:cols+1
  NP(:,j) = ((p+1-(j-1))/(p+1))*PP(:,j+1)+((j-1)/(p+1))*PP(:,j);
end