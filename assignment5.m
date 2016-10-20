% assignment5
%{
Requirements:
1.) Create a new script and save it as assignment5.m. This will be your master script in which
will run your analysis. This is the only file you should have to run. You will create several
functions for certain tasks that you will call from this file.
2.) Create a function to import your data. (You can use the import data tool if you wish). Name
this function importfile.m
3.) Using your import function, import each column as a separate vector and use the column
headers as the variable names.
4.) Create a function (name it genderIsoCalc.m) that returns four outputs. The first set of outputs
(one for males and one for females) should return a matrix with individual mean isometric
strength values across all 3 days of lifting for the appropriate group. The second set of
outputs will return the single mean value for each group (mean of subject means). Call this
function in your main script and store the results with variable names maleIsoIndMeans,
femaleIsoIndMeans, maleGroupIsoMean and femaleGroupIsoMean. These data should not be
normalized.
5.) Create a function (name it dayComparator.m) that takes the subject ids and two days as
inputs and returns a matrix with the subject IDs of the subjects who had an increase from the
first day to the second day (it should also work for the second day to the third day). Run this
function in your main script twice (be sure to update your inputs when you call the function
the second time) and store the outputs as day1toDay2 and day2toDay3.
%%
6.) Weight normalize the isokinetic data and calculate the group means for each day. Store these
values with the names normDay1mean, normDay2mean, normDay3mean. You do not need to
write a function for this, but if you?d like to feel free.
7.) Export your results to a csvfile using an appropriate built-in function. Name the file
iso_results.csv. (You do not need to submit this file because your script should create this file
when I run your code.)
%}
%created by Jessica McDonnell
%Due Oct 20
clear all
close all

% import each column as a separate vector and use the column headers as the variable names.
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile ('isok_data_6803.csv', 2, 26);

% individual Female /male mean isometric strength values across 3 days of lifting & single mean value for Female /Males
[femaleIsoIndMeans, maleIsoIndMeans, femaleGroupIsoMean, maleGroupIsoMean] = genderIsoCalc (Day1, Day2, Day3, Gender);

%subjects who had an increasebetween subsequent days
[day1toDay2] = dayComparator (Day1, Day2);
[day2toDay3] = dayComparator (Day2, Day3);

% Weight normalized isokinetic data and group means for each day
for i = 1:25
    normDay1(i) = (Day1(i) / Weight(i));
    normDay1mean = mean (normDay1);
    normDay2(i) = (Day2(i) / Weight(i));
    normDay2mean = mean (normDay2);
    normDay3(i) = (Day3(i) / Weight(i));
    normDay3mean = mean (normDay3);
end

%% export to *.csv
allsubjectdata = [SubjectID, maleIsoIndMeans, femaleIsoIndMeans, day1toDay2, day2toDay3];
meansubjectdata = [maleGroupIsoMean, femaleGroupIsoMean, normDay1mean, normDay2mean, normDay3mean];
meandata = array2table(meansubjectdata,'VariableNames',{'maleGroupIsoMean' 'femaleGroupIsoMean' 'normDay1mean' 'normDay2mean' 'normDay3mean'});
subjectdata = array2table(allsubjectdata,'VariableNames',{'SubjectID' 'maleIsoIndMeans' 'femaleIsoIndMeans' 'day1toDay2' 'day2toDay3'});


% call export function 
iso_results (subjectdata,meandata)



