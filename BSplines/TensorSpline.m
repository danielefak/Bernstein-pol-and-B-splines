%Spline function tensor product evaluation

function SX = TensorSpline(x1,x2,xi1,xi2,Coeff)
[n1,n2] = size(Coeff);
m1 = length(xi1);
m2 = length(xi2);
p1 = m1-n1-1;
p2 = m2-n2-1;
num1 = length(x1);
num2 = length(x2);
if p1<0 || p2 <0
     warning('Knot sequences length and')
     warning('Coeff matrix are not consistent');
end

Bmatrix = zeros(n2,num2);
for j2 =1:n2
    Bmatrix(j2,:) = Bspl(x2,xi2,j2,p2);
end
d = Coeff*Bmatrix;

Bmat = zeros(n1,num1);
for j1 = 1:n1
    Bmat(j1,:) = Bspl(x1,xi1,j1,p1);
end
SX = d'*Bmat;
end