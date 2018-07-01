clc;
clear;
Nodes = [];
nInfo = [];
Nodes(:,:,1) = [2 8 3;1 6 4;7 0 5];
nInfo(:,:,1) = [1,0,0];
nSet.Nodes = Nodes;
nSet.nInfo = nInfo;
[nInfoSet, nNodeSet] = eNode(Nodes(:,:,1),nInfo(:,:,1));
oSet = [];               
cSet.Nodes = [];        
cSet.nInfo = [];
% Breath first search;
oSet.Nodes = Nodes;
oSet.nInfo = nInfo;
while size(cSet.Nodes, 3)<=100000 
    cNode = oSet.Nodes(:,:,1);
    cNodeInfo = oSet.nInfo(:,:,1);
    oSet.Nodes(:,:,1) = [];
    oSet.nInfo(:,:,1) = [];   
    % expand cNode and cNodeInfo
    [nnodeinfoSet, nNodeSet] = eNode(cNode, cNodeInfo);    
    % remove the repeat node in cSet
    [nnodeinfoSet, nNodeSet] = rr(nnodeinfoSet, nNodeSet, cSet);    
    % add cNode to cSet
    cSet.Nodes = cat(3, cSet.Nodes, cNode);
    cSet.nInfo = cat(3, cSet.nInfo, cNodeInfo);    
    % add nNodeInfoSet and nNodeSet to openSet
    oSet.Nodes = cat(3, oSet.Nodes, nNodeSet);
    oSet.nInfo = cat(3, oSet.nInfo, nnodeinfoSet);
end