function [segmentXYZ] = DefinePlane (segmentX, segmnetY, segmentZ);
 
% for i = 1:4
% P1 = [segmentX(:,i),TrunkY(:,1),TrunkZ(:,1)]

P1xyz = [segmentX(:,1),segmentY(:,1),segmentZ(:,1)];
segmentP1 = cell2mat(P1xyz);
P2xyz = [segmentX(:,2),segmentY(:,2),segmentZ(:,2)];
segmentP2 = cell2mat(segmentP2xyz);
P3xyz = [segmentX(:,3),segmentY(:,3),segmentZ(:,3)];
segmentP3 = cell2mat(P3xyz);

%equation of line (a,b,c) * (x,y,z) = d
segmentLine = (segmentP1) .* (segmentP2);

%cross-product of two vectors parallel to the plane to find normal vector to plane
segmentNormVector = cross(segmentP1 - segmentP2, segmentP1 - segmentP3);

%example
%{
trunkP1xyz = [TrunkX(:,1),TrunkY(:,1),TrunkZ(:,1)];
trunkP1 = cell2mat(trunkP1xyz);
trunkP2xyz = [TrunkX(:,2),TrunkY(:,2),TrunkZ(:,2)];
trunkP2 = cell2mat(trunkP2xyz);
trunkP3xyz = [TrunkX(:,3),TrunkY(:,3),TrunkZ(:,3)];
trunkP3 = cell2mat(trunkP3xyz);

%equation of a line (a,b,c) * (x,y,z) = d

dLine = (trunkP1) .* (trunkP2);

%cross-product of two vectors parallel to the plane to find normal vector to plane
trunkNormVector = cross(trunkP1 - trunkP2, trunkP1 - trunkP3);
%}