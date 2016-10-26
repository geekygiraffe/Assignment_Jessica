function [femaleIsoIndMeans, maleIsoIndMeans, femaleGroupIsoMean, maleGroupIsoMean] = genderIsoCalc (Day1, Day2, Day3, Gender)
% 4.) Create a function (name it genderIsoCalc.m) that returns four outputs. The first set of outputs
% (one for males and one for females) should return a matrix with individual mean isometric
% strength values across all 3 days of lifting for the appropriate group. The second set of
% outputs will return the single mean value for each group (mean of subject means). Call this
% function in your main script and store the results with variable names maleIsoIndMeans,
% femaleIsoIndMeans, maleGroupIsoMean and femaleGroupIsoMean. These data should not be
% normalized.
%%
%initialize variables
ThreeDayAvg = zeros(25,1);
femaleIsoIndMeans = zeros(25,1);
maleIsoIndMeans = zeros (25,1);
for i = 1:25;
    ThreeDayAvg(i) = ((Day1(i) + Day2(i) + Day3(i))/3); % average the 3 days of data for each subject
    Female = strfind (Gender, 'F','ForceCellOutput', true); %determine which subject is female
    Male = strfind (Gender, 'M','ForceCellOutput', true); %or male
     if Female{i,1} == 1;
        femaleIsoIndMeans(i) = ThreeDayAvg(i,1); %put the female / male averages in seperate array 0 replace opposite gender data
     elseif Male{i,1} == 1;
         maleIsoIndMeans(i) = ThreeDayAvg(i,1);
     end
     Ladies = cell2mat(Female); %convert to cell for easy summing...
     Gentlemen = cell2mat(Male);
     femaleGroupIsoMean = sum(femaleIsoIndMeans)/(sum(Ladies));%average the females and males group data
     maleGroupIsoMean = sum(maleIsoIndMeans)/(sum(Gentlemen));
     end