function [segmentAvg] = avgsegment_position (data, segment);
%function takes the 4 markers per segments and avergaes each row (time
%point) to get 1 representation per plane of movement per segment.
for i = 1:length(data);
    markers = cellfun(@mean,segment(i,:));
    segmentAvg(i) = mean(markers);
end

%% example loop
% for i = 1:length(P1SensorExport);
%     markers=cellfun(@mean,TrunkX(i,:));
%     segmentAvg(i) = mean(markers);
% end

%
% [trunkAvgX] = avgsegment_position (P1SensorExport, TrunkX)';
% [trunkAvgY] = avgsegment_position (P1SensorExport, TrunkY)';
% [trunkAvgZ] = avgsegment_position (P1SensorExport, TrunkZ)';
% TRUNK = {trunkAvgX trunkAvgY trunkAvgZ};

% [rArmAvgX] = avgsegment_position (P1SensorExport, R_ArmX)';
% [rArmAvgY] = avgsegment_position (P1SensorExport, R_ArmY)';
% [rArmAvgZ] = avgsegment_position (P1SensorExport, R_ArmZ)';
% R_ARM = {rArmAvgX rArmAvgY rArmAvgZ};

% [rHandAvgX] = avgsegment_position (P1SensorExport, R_HandX)';
% [rHandAvgY] = avgsegment_position (P1SensorExport, R_HandY)';
% [rHandAvgZ] = avgsegment_position (P1SensorExport, R_HandZ)';
% R_HAND = {rHandAvgX rHandAvgY rHandAvgZ};

% [rForearmAvgX] = avgsegment_position (P1SensorExport, R_ForearmX)';
% [rForearmAvgY] = avgsegment_position (P1SensorExport, R_ForearmY)';
% [rForearmAvgZ] = avgsegment_position (P1SensorExport, R_ForearmZ)';
% R_FOREARM = {rForearmAvgX rForearmAvgY rForearmAvgZ};

% [lArmAvgX] = avgsegment_position (P1SensorExport, L_ArmX)';
% [lArmAvgY] = avgsegment_position (P1SensorExport, L_ArmY)';
% [lArmAvgZ] = avgsegment_position (P1SensorExport, L_ArmZ)';
% L_ARM = {lArmAvgX lArmAvgY lArmAvgZ};

% [lHandAvgX] = avgsegment_position (P1SensorExport, L_HandX)';
% [lHandAvgY] = avgsegment_position (P1SensorExport, L_HandY)';
% [lHandAvgZ] = avgsegment_position (P1SensorExport, L_HandZ)';
% L_HAND = {lHandAvgX lHandAvgY lHandAvgZ};

% [lForearmAvgX] = avgsegment_position (P1SensorExport, L_ForearmX)';
% [lForearmAvgY] = avgsegment_position (P1SensorExport, L_ForearmY)';
% [lForearmAvgZ] = avgsegment_position (P1SensorExport, L_ForearmZ)';
% L_FOREARM = {lForearmAvgX lForearmAvgY lForearmAvgZ};