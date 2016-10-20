function [PositiveGains] = dayComparator (day1of2, day2of2)
%{
takes the subject ids and two days as inputs and returns a matrix with the subject IDs of the subjects who had an increase from the
first day to the second day (it should also work for the second day to the third day). Run this
function in your main script twice (be sure to update your inputs when you call the function
the second time) and store the outputs as day1toDay2 and day2toDay3.
%}
PositiveGains = zeros(25,1);
for i= 1:25;
     Gains(i) = day2of2(i) - day1of2(i);
     if Gains(i) > 0;
         PositiveGains(i) = Gains(i);
     elseif Gains(i) <= 0;
         NoGains(i) = Gains(i);
     end
end