% This function is to check whether node has same matrix in closeSet
function status = same(Node, cSet)
    Size_cSet = size(cSet, 3);
    if Size_cSet == 0
        status = false;
        return
    end    
    % if there is one of closeSet same to Node, status = true and return
    for K = 1 : Size_cSet
        if isequal(Node, cSet(:,:,K))
            status = true;
            return;
        else
            status = false;
        end
    end
end