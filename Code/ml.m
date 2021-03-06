% function Move 0 left
function [Status, nNode] = ml(cNode)
     [X0, Y0] = z(cNode);
     if Y0 == 1
        Status = false;       
     else
        tX = X0;
        tY = Y0 - 1;        
        lz = (Y0 - 1) * 3 + X0;
        lt = (tY - 1) * 3 + tX;        
        cNode([lz lt])...
            = cNode([lt lz]);        
        Status = true;       
    end    
    nNode = cNode;
end