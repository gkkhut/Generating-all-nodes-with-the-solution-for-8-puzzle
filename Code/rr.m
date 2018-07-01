% This function is to remove the matrix which has ocurred in cSet
function [niSet, nNodeSet] = rr(InfoSet, nSet, cSet)    
    cSet_Size = size(cSet, 3);    
    nSet_Size = size(nSet, 3);    
    count = 0;    
    if cSet_Size == 0
        niSet = InfoSet;
        nNodeSet = nSet;        
    else
        for  J = 1 : nSet_Size
            isSame = same(nSet(:,:,J), cSet);     % check Repeat node
              if  isSame == false
                  count  = count + 1;
                  nNodeSet(:,:,count) = nSet(:,:,J);
                  niSet(:,:,count) = InfoSet(:,:,J);
              end
        end
    end                        
end