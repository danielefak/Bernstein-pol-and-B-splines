%Bezier curve subdivision in a point u in [0,1] fixed point
%P = matrix control points; p = cols-1.
function [C,D] = BezierSubdivision(P,u)
[rows,cols] = size(P);
P_prec = P;
C = zeros(rows,cols);
D = zeros(rows,cols);
C(:,1) = P(:,1);
D(:,1) = P(:,cols);
for j = 1:cols-1
    P_succ = DeCastOneIteration(P_prec,u);
    P_prec = P_succ;
    C(:,j+1) = P_succ(:,1);
    D(:,j+1) = P_succ(:,cols-j);
end
end

function P_succ = DeCastOneIteration(P_prec,t)
[~,cols] = size(P_prec);
P1 = P_prec(:,1:cols-1);
P2 = P_prec(:,2:cols);
P_succ = (1-t)*P1 +t*P2;
end