%% %Vector Math

%created by Jessica McDonnell December 1, 2016

%Step One: define line between two points on a segment
%Step Two: define second line perpendicular to first 
%   Define local coordinate system
%Step Three: compare matrix between segments to get angles
%   compare two coordinates between segements to get angles

%% import file from motion moniter
P1SensorExport = MMfile('P1_SensorExport.txt', 10, 1209);

%%
%seperate joint segments
% arrange the four marker data vectors from each segment plate in one cell per segment with all the plane (x,y,z) averages

%not a function because export function in MM variable based on data
%collected. will need to make more versatile.

trunkX = P1SensorExport(:,2:5);
trunkY = P1SensorExport(:,30:33);
trunkZ = P1SensorExport(:,58:61);

rArmX = P1SensorExport(:,6:9);
rArmY = P1SensorExport(:,34:37);
rArmZ = P1SensorExport(:,62:65);

rHandX = P1SensorExport(:,10:13);
rHandY = P1SensorExport(:,38:41);
rHandZ = P1SensorExport(:,66:69);

rForearmX = P1SensorExport(:,14:17);
rForearmY = P1SensorExport(:,42:45);
rForearmZ = P1SensorExport(:,70:73);

lArmX = P1SensorExport(:,18:21);
lArmY = P1SensorExport(:,46:49);
lArmZ = P1SensorExport(:,74:77);

lHandX = P1SensorExport(:,22:25);
lHandY = P1SensorExport(:,50:53);
lHandZ = P1SensorExport(:,78:81);

lForearmX = P1SensorExport(:,26:29);
lForearmY = P1SensorExport(:,54:57);
lForearmZ = P1SensorExport(:,82:85);

%% Local coordinate system - using trunk

[trunkP1, trunkP2, trunkP3] = xyz2mat (trunkX, trunkY, trunkZ);
% % % [rArmP1, rArmP2, rArmP3] = xyz2mat (rArmX, rArmY, rArmZ);
% % % [rHandP1, rHandP2, rHandP3] = xyz2mat (rHandX, rHandY, rHandZ);
% % % [rForearmP1, rForearmP2, rForearmP3] = xyz2mat (rForearmX, rForearmY, rForearmZ);
% % % [lArmP1, lArmP2, lArmP3] = xyz2mat (lArmX, lArmY, lArmZ);
% % % [lHandP1, lHandP2, lHandP3] = xyz2mat (lHandX, lHandY, lHandZ);
% % % [lForearmP1, lForearmP2, lForearmP3] = xyz2mat (lForearmX, lForearmY, lForearmZ);

%find equation from plane through three points on each segment
for i = 1: length(trunkP1)
[line(i,:), xPlane(i,:), yPlane(i,:), zPlane(i,:)] = threePointPlane (trunkP1(i,:), trunkP2(i,:), trunkP3(i,:));
%end
%%%%%%[line, xPlane, yPlane, zPlane] = threePointPlane (trunkP1, trunkP2, trunkP3);
% [normalVector_rArm, line_rArm, Plane_rArm, xPlane_rArm, yPlane_rArm, zPlane_rArm] = threePointPlane (rArmP1, rArmP2, rArmP3);
% [normalVector_rHand, line_rHand, Plane_rHand, xPlane_rHand, yPlane_rHand, zPlane_rHand] = threePointPlane (rHandP1, rHandP2, rHandP3);
% [normalVector_rForearm, line_rForearm, Plane_rForearm, xPlane_rForearm, yPlane_rForearm, zPlane_rForearm] = threePointPlane (rForearmP1, rForearmP2, rForearmP3);
% [normalVector_lArm, line_lArm, Plane_lArm, xPlane_lArm, yPlane_lArm, zPlane_lArm] = threePointPlane (lArmP1, lArmP2, lArmP3);
% [normalVector_lHand, line_lHand, Plane_lHand, xPlane_lHand, yPlane_lHand, zPlane_lHand] = threePointPlane (lHandP1, lHandP2, lHandP3);
% [normalVector_lForearm, line_lForearm, Plane_lForearm, xPlane_lForearm, yPlane_lForearm, zPlane_lForearm] = threePointPlane (lForearmP1, lForearmP2, lForearmP3);
 i = 1: length(trunkP1);
fplot3(line(i,1),line(i,2),line(i,3))
hold on
fmesh(zPlane(i,:))
fmesh(xPlane(i,:))
fmesh(yPlane(i,:))
hold off
end



%% 2D line
%call y= mx+b function

[slope, yint, lineP1trunk, parallelLineP1trunk] = twoDline(trunkP1(:,1), trunkP1(:,2), trunkP2(:,1), trunkP2(:,2), trunkP1);
plot(lineP1trunk)
hold on
[slope, yint, lineP2trunk, parallelLineP2trunk] = twoDline(trunkP2(:,1), trunkP2(:,2), trunkP3(:,1), trunkP3(:,2), trunkP2);
plot(lineP2trunk)
[slope, yint, lineP3trunk, parallelLineP3trunk] = twoDline(trunkP1(:,1), trunkP1(:,2), trunkP3(:,1), trunkP3(:,2), trunkP3);
plot(lineP3trunk)
title('Linear Trunk Line');
xlabel('X axis');
ylabel('Y axis');
legend('Point 1','Point 2','Point3');
hold off


%%BUG CHECK fucntion
%{

select three points
gui? plot

%}






