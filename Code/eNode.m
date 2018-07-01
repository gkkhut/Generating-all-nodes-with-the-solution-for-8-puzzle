% Expand cnode to possible nnodes
function [niSet, nNodeSet] = eNode(cNode, nInfo)    
    nNodeSet = []; 
    niSet =[];     
    count = 0;           
    NodeNo = nInfo(1);  
    % add left move node to nNodeSet if l_status is true
    [l_status, lnode] = ml(cNode);
    if (l_status == true) 
        count = count + 1;                  % add 1 for count
        NodeNo = NodeNo + 1;                  % add 1 for node number
        nNodeSet(:,:,count) = lnode;     % update nNodeSet
        ln_info = [NodeNo, nInfo(1), 0];  % info of Move left
        niSet(:,:, count) = ln_info;   % update nInfoSet
    end    
    % add right move node to nNodeSet if r_status is true
    [r_status, rnode] = mr(cNode);
    if (r_status == true) 
        count = count + 1;                  % add 1 for count
        NodeNo = NodeNo + 1;                  % add 1 for node number
        nNodeSet(:,:,count) = rnode;    % update nNodeSet
        rn_info = [NodeNo, nInfo(1), 0];    % info of Move right
        niSet(:,:,count) = rn_info;   % update niSet
    end    
    % add up move node to nnodeSet if u_status is true
    [u_status, unode] = mu(cNode);
    if (u_status == true) 
        count = count + 1;                  % add 1 for count
        NodeNo = NodeNo + 1;                  % add 1 for node number
        nNodeSet(:,:,count) = unode;       % update nNodeSet
        un_info = [NodeNo, nInfo(1), 0];   % Info of Move up
        niSet(:,:,count) = un_info;   % update nInfoSet
    end    
    % add up move node to nNodeSet if d_status is true
    [d_status, dnode] = md(cNode);
    if (d_status == true) 
        count = count + 1;                  % add 1 for count
        NodeNo = NodeNo + 1;                  % add 1 for node number
        nNodeSet(:,:,count) = dnode;     % update nNodeSet
        dn_info = [NodeNo, nInfo(1), 0];  % Info of Move Down
        niSet(:,:,count) = dn_info;   % update nInfoSet
    end    
end