% function Move 0 down
function [Status, nNode] = md(cNode)
     [X0, Y0] = z(cNode);
     if X0 == 3
        Status = false;        
     else
        tX = X0 + 1;
        tY = Y0;        
        lz = (Y0 - 1) * 3 + X0;
        lt = (tY - 1) * 3 + tX;        
        cNode([lz lt])...
            = cNode([lt lz]);        
        Status = true;        
    end    
    nNode = cNode;
end