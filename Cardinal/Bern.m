%Bernstein polynomial
function y = Bern(j,p,x)
y = nchoosek(p,j)*x.^j.*(1-x).^(p-j); 
end

