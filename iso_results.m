function [] = iso_results (IndvData,Groupdata)
%{
7.) Export your results to a csvfile using an appropriate built-in function. Name the file
iso_results.csv. (You do not need to submit this file because your script should create this file
when I run your code.)
%}
writetable(IndvData,'iso_results.xlsx');
writetable(Groupdata,'iso_results.xlsx', 'Range', 'A28');
end