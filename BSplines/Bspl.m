%Evaluation of the j-th  B_spline of degree p
%in a given vector of points x and a knot sequence xi.
function Bx = Bspl(x,xi,j,p,close)
if nargin < 5
   close = true;
end
n = length(xi) - p - 1;
Bx = zeros(size(x));
if j >= 1 && j <= n
   if xi(j) < xi(j+p+1)
      if p == 0
         Bx(x >= xi(j) & x < xi(j+1)) = 1; 
         if close && xi(j+1) == xi(end)
            Bx(x == xi(j+1)) = 1;
         end
      else
         interval = xi(j+p) - xi(j);
         if interval > 0
            Bx = Bx + (x - xi(j)) / interval...
                          .* Bspl(x, xi, j,p-1, close);
         end
         interval = xi(j+p+1) - xi(j+1);
         if interval > 0
            Bx = Bx + (xi(j+p+1) - x) / interval ...
                        .* Bspl(x, xi,j+1, p-1, close);
         end
      end
   end
else
   warning('Index of B-spline is not valid');
end
end