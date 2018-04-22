%Bezier Extraction matrix 
function [KnotIns,BExtr] = BezierExtraction(C)
A = [1 0 0 0; 1/3,2/3,0,0; 1/6,2/3,1/6,0; 1/6,2/3,1/6,0;...
    0,2/3,1/3,0;0,1/3,2/3,0;0,1/6,2/3,1/6;0,1/6,2/3,1/6;...
    0,0,2/3,1/3;0,0,0,1];

KnotIns = A*C';
BExtr = KnotIns([4,5,6,7]);
end

