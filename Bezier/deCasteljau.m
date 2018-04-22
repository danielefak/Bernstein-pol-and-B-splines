%De Casteljau Algorithm 
%P_p = P^[p]
%t = point on the parametric domain

function P_0 = deCasteljau(P_p,t)
[~,cols] = size(P_p);
p = cols-1;
P_prec = P_p;
for j = 1:p
    P_succ = DeCastOneIteration(P_prec,t);
    P_prec = P_succ;
end
P_0 = P_succ;
end

function P_succ = DeCastOneIteration(P_prec,t)
[~,cols] = size(P_prec);
P1 = P_prec(:,1:cols-1);
P2 = P_prec(:,2:cols);
P_succ = (1-t)*P1 + t*P2;
end


