%Cardinal B-spline of degree p function 

function Mx = Cardinal(p,x)
Mx=zeros(1,length(x));
if p == 0
   Mx(x >= 0 & x <1 )= 1; 
else
    Mx = (x/p).*Cardinal(p-1,x)  +...
        ((p+1-x)/p).*Cardinal(p-1, x-1);
end
end