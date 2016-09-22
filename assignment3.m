%%KINE6803 - Assignment 3: Tic - Tac - Toe
%
%Submitted by: Jessica Lynn 
%Due Sept 27, 2016
%{
Requirements:
1.) Comment section at the top with your name, date and a short description of
what your code does.
2.) Welcome message for the user.
3.) Show game board.
4.) Prompt user for move.
5.) Display updated game board.
6.) Generate computer move.
7.) Keep going until there is a winner or no more available moves.
8.) Show final prompt with game result and a finishing message.
sum the columns, rows and leading and reverse-leading diagonals:
if the answer to any is 0 or 3 then you declare the winner to be player 0 or 1.

10.) Once a space is taken, another player cannot move to that spot.
%}
clear all 
close all
% welcome statement 
% sprintf 'Welcome to tic - tac - toe! \n'
% sprintf 'using the cross hairs select the box you would like to move \n'
% sprintf ' normal rules apply; no cheating - good luck human \n'
%initialize board
axis([0 1.5 0 1.5])
grid on
%Identify ranges of each row and column
sq1 = [1.5 1.0;0.0 0.5];   
sq2 = [1.5 1.0;0.5 1.0];  
sq3 = [1.5 1.0;1.0 1.5];  
sq4 = [1.0 0.5;0.0 0.5];  
sq5 = [1.0 0.5;0.5 1.0];
sq6 = [1.0 0.5;1.0 1.5];
sq7 = [0.5 0.0;0.0 0.5];
sq8 = [0.5 0.0;0.5 1.0];
sq9 = [0.5 0.0;1.0 1.5];
%Initialize squares
sqr1 = 10;
sqr2 = 10;
sqr3 = 10;
sqr4 = 10;
sqr5 = 10;
sqr6 = 10;
sqr7 = 10;
sqr8 = 10;
sqr9 = 10;
%Initialize row/column counter for homo
R1_Homo = 0; % RowOne = [1.5 1];
R2_Homo = 0; % RowTwo = [1 0.5];
R3_Homo = 0; % RowThr = [0.5 0];
C1_Homo = 0; % ColOne = [0 0.5];
C2_Homo = 0; % ColTwo = [0.5 1];
C3_Homo = 0; % ColThr = [1 1.5];
%Initialize row/column counter for AI
R1_AI = 0; % RowOne = [1.5 1];
R2_AI = 0; % RowTwo = [1 0.5];
R3_AI = 0; % RowThr = [0.5 0];
C1_AI = 0; % ColOne = [0 0.5];
C2_AI = 0; % ColTwo = [0.5 1];
C3_AI = 0; % ColThr = [1 1.5];

%%MOVE ONE(1)
M1 = ginput (1);
hold on 
scatter (M1(1,1),M1(1,2),500,[0 0 1],'filled');
%Determine Column
if (M1(1,1) >= sq1(2,1)) && (M1(1,1) <= sq1(2,2));
    C1_Homo = C1_Homo + 1;
elseif (M1(1,1) >= sq2(2,1)) && (M1(1,1) <= sq2 (2,2));
    C2_Homo = C2_Homo + 1;
elseif (M1(1,1) >= sq3(2,1)) && (M1(1,1) <= sq3 (2,2));
    C3_Homo = C3_Homo + 1;
end
%Determine Row
if (M1(1,2) >= sq7(1,2)) && (M1(1,2) <= sq7(1,1));
    R3_Homo = R3_Homo + 1;
elseif (M1(1,2) >= sq4(1,2)) && (M1(1,2) <= sq4(1,1));
    R2_Homo = R2_Homo + 1;
elseif (M1(1,2) >= sq1(1,2)) && (M1(1,2) <= sq1(1,1));
    R1_Homo = R1_Homo + 1;
end
%Id Square
if M1(1,1) >= sq9 (2,1) && M1(1,2) <= sq9(1,1);
    sqr9 = -1;
elseif M1(1,1) >= sq8 (2,1) && M1(1,2) <= sq8(1,1);
    sqr8 = -1;
elseif M1(1,1) >= sq7 (2,1) && M1(1,2) <= sq7(1,1);
    sqr7 = -1;
elseif M1(1,1) >= sq6 (2,1) && M1(1,2) <= sq6(1,1);
    sqr6 = -1;
elseif M1(1,1) >= sq5 (2,1) && M1(1,2) <= sq5(1,1);
    sqr5 = -1;
elseif M1(1,1) >= sq4 (2,1) && M1(1,2) <= sq4(1,1);
    sqr4 = -1;
elseif M1(1,1) >= sq3 (2,1) && M1(1,2) <= sq3(1,1);
    sqr3 = -1;
elseif M1(1,1) >= sq2 (2,1) && M1(1,2) <= sq2(1,1);
    sqr2 = -1;
elseif M1(1,1) >= sq1 (2,1) && M1(1,2) <= sq1(1,1);
    sqr1 = -1;
end
%%MOVE TWO(2)
if sqr1 > 0;
    M2_row = mean(sq1(1,:));
    M2_col = mean(sq1(2,:));
    M2 = [M2_row M2_col];
    scatter (M2(1,2),M2(1,1),500,[0 0 0],'filled');
elseif sqr2 > 0;
    M2_row = mean(sq2(1,:));
    M2_col = mean(sq2(2,:));
    M2 = [M2_row M2_col];
    scatter (M2(1,2),M2(1,1),500,[0 0 0],'filled');
end
%Determine Column
if (M2(1,2) >= sq1(2,1)) && (M2(1,2) <= sq1(2,2)); %row1
    C1_AI = C1_AI + 1;
elseif (M2(1,2) >= sq2(2,1)) && (M2(1,2) <= sq2 (2,2)); %row2
    C2_AI = C2_AI + 1;
elseif (M2(1,2) >= sq3(2,1)) && (M2(1,2) <= sq3 (2,2)); %row3
    C3_AI = C3_AI + 1;
end
%Determine Row
if (M2(1,1) <= sq1(1,1)) && (M2(1,1) >= sq1(1,2));
    R1_AI = R1_AI + 1;
elseif(M2(1,1) <= sq4(1,2)) && (M2(1,1) >= sq4(1,2));
    R2_AI = R2_AI + 1;
elseif(M2(1,1) <= sq7(1,2)) && (M2(1,1) >= sq7(1,2));
    R3_AI = R3_AI + 1;
end
%Id Square
if M2(1,2) >= sq9 (2,1) && M2(1,1) <= sq9(1,1);
    sqr9 = -1;
elseif M2(1,2) >= sq8 (2,1) && M2(1,1) <= sq8(1,1);
    sqr8 = -1;
elseif M2(1,2) >= sq7 (2,1) && M2(1,1) <= sq7(1,1);
    sqr7 = -1;
elseif M2(1,2) >= sq6 (2,1) && M2(1,1) <= sq6(1,1);
    sqr6 = -1;
elseif M2(1,2) >= sq5 (2,1) && M2(1,1) <= sq5(1,1);
    sqr5 = -1;
elseif M2(1,2) >= sq4 (2,1) && M2(1,1) <= sq4(1,1);
    sqr4 = -1;
elseif M2(1,2) >= sq3 (2,1) && M2(1,1) <= sq3(1,1);
    sqr3 = -1;
elseif M2(1,2) >= sq2 (2,1) && M2(1,1) <= sq2(1,1);
    sqr2 = -1;
elseif M2(1,2) >= sq1 (2,1) && M2(1,1) <= sq1(1,1);
    sqr1 = -1;
end

%%MOVE THREE(3)
M3 = ginput(1);
scatter (M3(1,1),M3(1,2),500,[0 0 1],'filled');
%Determine Column
if (M3(1,1) >= sq1(2,1)) && (M3(1,1) <= sq1(2,2)); %row1
    C1_Homo = C1_Homo + 1;
elseif (M3(1,1) >= sq2(2,1)) && (M3(1,1) <= sq2 (2,2)); %row2
    C2_Homo = C2_Homo + 1;
elseif (M3(1,1) >= sq3(2,1)) && (M3(1,1) <= sq3 (2,2)); %row3
    C3_Homo = C3_Homo + 1;
end
%Determine Row
if (M3(1,2) >= sq7(1,2)) && (M3(1,2) <= sq7(1,1));
    R3_Homo = R3_Homo + 1;
elseif (M3(1,2) >= sq4(1,2)) && (M3(1,2) <= sq4(1,1));
    R2_Homo = R2_Homo + 1;
elseif (M3(1,2) >= sq1(1,2)) && (M3(1,2) <= sq1(1,1));
    R1_Homo = R1_Homo + 1;
end
%Id Square
if M3(1,1) >= sq9 (2,1) && M3(1,2) <= sq9(1,1);
    sqr9 = -1;
elseif M3(1,1) >= sq8 (2,1) && M3(1,2) <= sq8(1,1);
    sqr8 = -1;
elseif M3(1,1) >= sq7 (2,1) && M3(1,2) <= sq7(1,1);
    sqr7 = -1;
elseif M3(1,1) >= sq6 (2,1) && M3(1,2) <= sq6(1,1);
    sqr6 = -1;
elseif M3(1,1) >= sq5 (2,1) && M3(1,2) <= sq5(1,1);
    sqr5 = -1;
elseif M3(1,1) >= sq4 (2,1) && M3(1,2) <= sq4(1,1);
    sqr4 = -1;
elseif M3(1,1) >= sq3 (2,1) && M3(1,2) <= sq3(1,1);
    sqr3 = -1;
elseif M3(1,1) >= sq2 (2,1) && M3(1,2) <= sq2(1,1);
    sqr2 = -1;
elseif M3(1,1) >= sq1 (2,1) && M3(1,2) <= sq1(1,1);
    sqr1 = -1;
end

%%MOVE FOUR(4)
if sqr1 > 0;
    M4_row = mean(sq1(1,:));
    M4_col = mean(sq1(2,:));
    M4 = [M4_row M4_col];
    scatter (M4(1,2),M4(1,1),500,[0 0 0],'filled');
elseif sqr2 > 0;
    M4_row = mean(sq2(1,:));
    M4_col = mean(sq2(2,:));
    M4 = [M4_row M4_col];
    scatter (M4(1,2),M4(1,1),500,[0 0 0],'filled');
elseif sqr3 > 0;
    M4_row = mean(sq3(1,:));
    M4_col = mean(sq3(2,:));
    M4 = [M4_row M4_col];
    scatter (M4(1,2),M4(1,1),500,[0 0 0],'filled');
elseif sqr4 > 0;
    M4_row = mean(sq4(1,:));
    M4_col = mean(sq4(2,:));
    M4 = [M4_row M4_col];
    scatter (M4(1,2),M4(1,1),500,[0 0 0],'filled');
end
%Determine Column
if (M4(1,2) >= sq1(2,1)) && (M4(1,2) <= sq1(2,2)); %row1
    C1_AI = C1_AI + 1;
elseif (M4(1,2) >= sq2(2,1)) && (M4(1,2) <= sq2 (2,2)); %row2
    C2_AI = C2_AI + 1;
elseif (M4(1,2) >= sq3(2,1)) && (M4(1,2) <= sq3 (2,2)); %row3
    C3_AI = C3_AI + 1;
end
%Determine Row
if (M4(1,1) <= sq1(1,1)) && (M4(1,1) >= sq1(1,2));
    R1_AI = R1_AI + 1;
elseif(M4(1,1) <= sq4(1,2)) && (M4(1,1) >= sq4(1,2));
    R2_AI = R2_AI + 1;
elseif(M4(1,1) <= sq7(1,2)) && (M4(1,1) >= sq7(1,2));
    R3_AI = R3_AI + 1;
end
%Id Square
if M4(1,2) >= sq9 (2,1) && M4(1,1) <= sq9(1,1);
    sqr9 = -1;
elseif M4(1,2) >= sq8 (2,1) && M4(1,1) <= sq8(1,1);
    sqr8 = -1;
elseif M4(1,2) >= sq7 (2,1) && M4(1,1) <= sq7(1,1);
    sqr7 = -1;
elseif M4(1,2) >= sq6 (2,1) && M4(1,1) <= sq6(1,1);
    sqr6 = -1;
elseif M4(1,2) >= sq5 (2,1) && M4(1,1) <= sq5(1,1);
    sqr5 = -1;
elseif M4(1,2) >= sq4 (2,1) && M4(1,1) <= sq4(1,1);
    sqr4 = -1;
elseif M4(1,2) >= sq3 (2,1) && M4(1,1) <= sq3(1,1);
    sqr3 = -1;
elseif M4(1,2) >= sq2 (2,1) && M4(1,1) <= sq2(1,1);
    sqr2 = -1;
elseif M4(1,2) >= sq1 (2,1) && M4(1,1) <= sq1(1,1);
    sqr1 = -1;
end

%%MOVE FIVE (5)
M5 = ginput(1);
scatter (M5(1,1),M5(1,2),500,[0 0 1],'filled');
%Determine Column
if (M5(1,1) >= sq1(2,1)) && (M5(1,1) <= sq1(2,2)); %row1
    C1_Homo = C1_Homo + 1;
elseif (M5(1,1) >= sq2(2,1)) && (M5(1,1) <= sq2 (2,2)); %row2
    C2_Homo = C2_Homo + 1;
elseif (M5(1,1) >= sq3(2,1)) && (M5(1,1) <= sq3 (2,2)); %row3
    C3_Homo = C3_Homo + 1;
end
%Determine Row
if (M5(1,2) >= sq7(1,2)) && (M5(1,2) <= sq7(1,1));
    R3_Homo = R3_Homo + 1;
elseif (M5(1,2) >= sq4(1,2)) && (M5(1,2) <= sq4(1,1));
    R2_Homo = R2_Homo + 1;
elseif (M5(1,2) >= sq1(1,2)) && (M5(1,2) <= sq1(1,1));
    R1_Homo = R1_Homo + 1;
end
%ID Square
if M5(1,1) >= sq9 (2,1) && M5(1,1) <= sq9(1,1);
    sqr9 = -1;
elseif M5(1,1) >= sq8 (2,1) && M5(1,2) <= sq8(1,1);
    sqr8 = -1;
elseif M5(1,1) >= sq7 (2,1) && M5(1,2) <= sq7(1,1);
    sqr7 = -1;
elseif M5(1,1) >= sq6 (2,1) && M5(1,2) <= sq6(1,1);
    sqr6 = -1;
elseif M5(1,1) >= sq5 (2,1) && M5(1,2) <= sq5(1,1);
    sqr5 = -1;
elseif M5(1,1) >= sq4 (2,1) && M5(1,2) <= sq4(1,1);
    sqr4 = -1;
elseif M5(1,1) >= sq3 (2,1) && M5(1,2) <= sq3(1,1);
    sqr3 = -1;
elseif M5(1,1) >= sq2 (2,1) && M5(1,2) <= sq2(1,1);
    sqr2 = -1;
elseif M5(1,1) >= sq1 (2,1) && M5(1,2) <= sq1(1,1);
    sqr1 = -1;
end

%winner?
C1 = sum(C1_Homo);
C2 = sum(C2_Homo);
C3 = sum(C3_Homo);
R1 = sum(R1_Homo);
R2 = sum(R2_Homo);
R3 = sum(R3_Homo);
if C1 == 3;
    sprintf ('winner');
elseif C2 == 3;
    sprintf ('winner');
elseif C3 == 3;
    sprintf ('winner');
elseif R1 == 3;
    sprintf ('winner');
elseif R2 == 3;
    sprintf ('winner');
elseif R3 == 3;
    sprintf ('winner');
end
    
%%MOVE SIX(6)
if sqr1 > 0;
    M6_row = mean(sq1(1,:));
    M6_col = mean(sq1(2,:));
    M6 = [M6_row M6_col];
    scatter (M6(1,2),M6(1,1),500,[0 0 0],'filled');
elseif sqr2 > 0;
    M6_row = mean(sq2(1,:));
    M6_col = mean(sq2(2,:));
    M6 = [M6_row M6_col];
    scatter (M6(1,2),M6(1,1),500,[0 0 0],'filled');
elseif sqr3 > 0;
    M6_row = mean(sq3(1,:));
    M6_col = mean(sq3(2,:));
    M6 = [M6_row M6_col];
    scatter (M6(1,2),M6(1,1),500,[0 0 0],'filled');
elseif sqr4 > 0;
    M6_row = mean(sq4(1,:));
    M6_col = mean(sq4(2,:));
    M6 = [M6_row M6_col];
    scatter (M6(1,2),M6(1,1),500,[0 0 0],'filled');
elseif sqr5 > 0;
    M6_row = mean(sq5(1,:));
    M6_col = mean(sq5(2,:));
    M6 = [M6_row M6_col];
    scatter (M6(1,2),M6(1,1),500,[0 0 0],'filled');
elseif sqr6 > 0;
    M6_row = mean(sq6(1,:));
    M6_col = mean(sq6(2,:));
    M6 = [M6_row M6_col];
    scatter (M6(1,2),M6(1,1),500,[0 0 0],'filled');
end
%Determine Column
if (M6(1,2) >= sq1(2,1)) && (M6(1,2) <= sq1(2,2));
    C1_AI = C1_AI + 1;
elseif (M6(1,2) >= sq2(2,1)) && (M6(1,2) <= sq2 (2,2));
    C2_AI = C2_AI + 1;
elseif (M6(1,2) >= sq3(2,1)) && (M6(1,2) <= sq3 (2,2));
    C3_AI = C3_AI + 1;
end
%Determine Row
if (M6(1,1) <= sq1(1,1)) && (M6(1,1) >= sq1(1,2));
    R1_AI = R1_AI + 1;
elseif(M6(1,1) <= sq4(1,1)) && (M6(1,1) >= sq4(1,2));
    R2_AI = R2_AI + 1;
elseif(M6(1,1) <= sq7(1,1)) && (M6(1,1) >= sq7(1,2));
    R3_AI = R3_AI + 1;
end
%ID Square
if M6(1,2) >= sq9 (2,1) && M6(1,1) <= sq9(1,1);
    sqr9 = -1;
elseif M6(1,2) >= sq8 (2,1) && M6(1,1) <= sq8(1,1);
    sqr8 = -1;
elseif M6(1,2) >= sq7 (2,1) && M6(1,1) <= sq7(1,1);
    sqr7 = -1;
elseif M6(1,2) >= sq6 (2,1) && M6(1,1) <= sq6(1,1);
    sqr6 = -1;
elseif M6(1,2) >= sq5 (2,1) && M6(1,1) <= sq5(1,1);
    sqr5 = -1;
elseif M6(1,2) >= sq4 (2,1) && M6(1,1) <= sq4(1,1);
    sqr4 = -1;
elseif M6(1,2) >= sq3 (2,1) && M6(1,1) <= sq3(1,1);
    sqr3 = -1;
elseif M6(1,2) >= sq2 (2,1) && M6(1,1) <= sq2(1,1);
    sqr2 = -1;
elseif M6(1,2) >= sq1 (2,1) && M6(1,1) <= sq1(1,1);
    sqr1 = -1;
end

%%MOVE SEVEN(7)
M7 = ginput(1);
scatter (M7(1,1),M7(1,2),500,[0 0 1],'filled');
%Determine Column
if (M7(1,1) >= sq1(2,1)) && (M7(1,1) <= sq1(2,2)); %row1
    C1_Homo = C1_Homo + 1;
elseif (M7(1,1) >= sq2(2,1)) && (M7(1,1) <= sq2 (2,2)); %row2
    C2_Homo = C2_Homo + 1;
elseif (M7(1,1) >= sq3(2,1)) && (M7(1,1) <= sq3 (2,2)); %row3
    C3_Homo = C3_Homo + 1;
end
%Determine Row
if (M7(1,2) >= sq7(1,2)) && (M7(1,2) <= sq7(1,1));
    R3_Homo = R3_Homo + 1;
elseif (M7(1,2) >= sq4(1,2)) && (M7(1,2) <= sq4(1,1));
    R2_Homo = R2_Homo + 1;
elseif (M7(1,2) >= sq1(1,2)) && (M7(1,2) <= sq1(1,1));
    R1_Homo = R1_Homo + 1;
end
%ID Square
if M7(1,1) >= sq9 (2,1) && M7(1,2) <= sq9(1,1);
    sqr9 = -1;
elseif M7(1,1) >= sq8 (2,1) && M7(1,2) <= sq8(1,1);
    sqr8 = -1;
elseif M7(1,1) >= sq7 (2,1) && M7(1,2) <= sq7(1,1);
    sqr7 = -1;
elseif M7(1,1) >= sq6 (2,1) && M7(1,2) <= sq6(1,1);
    sqr6 = -1;
elseif M7(1,1) >= sq5 (2,1) && M7(1,2) <= sq5(1,1);
    sqr5 = -1;
elseif M7(1,1) >= sq4 (2,1) && M7(1,2) <= sq4(1,1);
    sqr4 = -1;
elseif M7(1,1) >= sq3 (2,1) && M7(1,2) <= sq3(1,1);
    sqr3 = -1;
elseif M7(1,1) >= sq2 (2,1) && M7(1,2) <= sq2(1,1);
    sqr2 = -1;
elseif M7(1,1) >= sq1 (2,1) && M7(1,2) <= sq1(1,1);
    sqr1 = -1;
end
%winner?
if C1 == 3;
    sprintf ('winner');
elseif C2 == 3;
    sprintf ('winner');
elseif C3 == 3;
    sprintf ('winner');
elseif R1 == 3;
    sprintf ('winner');
elseif R2 == 3;
    sprintf ('winner');
elseif R3 == 3;
    sprintf ('winner');
end

%%MOVE EIGHT(8)
if sqr1 > 0;
    M8_row = mean(sq1(1,:));
    M8_col = mean(sq1(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
elseif sqr2 > 0;
    M8_row = mean(sq2(1,:));
    M8_col = mean(sq2(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
elseif sqr3 > 0;
    M8_row = mean(sq3(1,:));
    M8_col = mean(sq3(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
elseif sqr4 > 0;
    M8_row = mean(sq4(1,:));
    M8_col = mean(sq4(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
elseif sqr5 > 0;
    M8_row = mean(sq5(1,:));
    M8_col = mean(sq5(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
elseif sqr6 > 0;
    M8_row = mean(sq6(1,:));
    M8_col = mean(sq6(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
elseif sqr7 > 0;
    M8_row = mean(sq7(1,:));
    M8_col = mean(sq7(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
elseif sqr8 > 0;
    M8_row = mean(sq8(1,:));
    M8_col = mean(sq8(2,:));
    M8 = [M8_row M8_col];
    scatter (M8(1,2),M8(1,1),500,[0 0 0],'filled');
end
%Determine Column
if (M8(1,2) >= sq1(2,1)) && (M8(1,2) <= sq1(2,2)); %row1
    C1_AI = C1_AI + 1;
elseif (M8(1,2) >= sq2(2,1)) && (M8(1,2) <= sq2 (2,2)); %row2
    C2_AI = C2_AI + 1;
elseif (M8(1,2) >= sq3(2,1)) && (M8(1,2) <= sq3 (2,2)); %row3
    C3_AI = C3_AI + 1;
end
%Determine Row
if (M8(1,1) <= sq1(1,1)) && (M8(1,1) >= sq1(1,2));
    R1_AI = R1_AI + 1;
elseif(M8(1,1) <= sq4(1,1)) && (M8(1,1) >= sq4(1,2));
    R2_AI = R2_AI + 1;
elseif(M8(1,1) <= sq7(1,1)) && (M8(1,1) >= sq7(1,2));
    R3_AI = R3_AI + 1;
end
%ID Square
if M8(1,2) >= sq9 (2,1) && M8(1,1) <= sq9(1,1);
    sqr9 = -1;
elseif M8(1,2) >= sq8 (2,1) && M8(1,1) <= sq8(1,1);
    sqr8 = -1;
elseif M8(1,2) >= sq7 (2,1) && M8(1,1) <= sq7(1,1);
    sqr7 = -1;
elseif M8(1,2) >= sq6 (2,1) && M8(1,1) <= sq6(1,1);
    sqr6 = -1;
elseif M8(1,2) >= sq5 (2,1) && M8(1,1) <= sq5(1,1);
    sqr5 = -1;
elseif M8(1,2) >= sq4 (2,1) && M8(1,1) <= sq4(1,1);
    sqr4 = -1;
elseif M8(1,2) >= sq3 (2,1) && M8(1,1) <= sq3(1,1);
    sqr3 = -1;
elseif M8(1,2) >= sq2 (2,1) && M8(1,1) <= sq2(1,1);
    sqr2 = -1;
elseif M8(1,2) >= sq1 (2,1) && M8(1,1) <= sq1(1,1);
    sqr1 = -1;
end

%%MOVE NINE(9)
M9 = ginput(1);
scatter (M9(1,1),M9(1,2),500,[0 0 1],'filled');
%Determine Column
if (M9(1,1) >= sq1(2,1)) && (M9(1,1) <= sq1(2,2)); %row1
    C1_Homo = C1_Homo + 1;
elseif (M9(1,1) >= sq2(2,1)) && (M9(1,1) <= sq2 (2,2)); %row2
    C2_Homo = C2_Homo + 1;
elseif (M9(1,1) >= sq3(2,1)) && (M9(1,1) <= sq3 (2,2)); %row3
    C3_Homo = C3_Homo + 1;
end
%Determine Row
if (M9(1,2) >= sq7(1,2)) && (M9(1,2) <= sq7(1,1));
    R3_Homo = R3_Homo + 1;
elseif (M9(1,2) >= sq4(1,2)) && (M9(1,2) <= sq4(1,1));
    R2_Homo = R2_Homo + 1;
elseif (M9(1,2) >= sq1(1,2)) && (M9(1,2) <= sq1(1,1));
    R1_Homo = R1_Homo + 1;
end
%ID Square
if M9(1,1) >= sq9 (2,1) && M9(1,2) <= sq9(1,1);
    sqr9 = -1;
elseif M9(1,1) >= sq8 (2,1) && M9(1,2) <= sq8(1,1);
    sqr8 = -1;
elseif M9(1,1) >= sq7 (2,1) && M9(1,2) <= sq7(1,1);
    sqr7 = -1;
elseif M9(1,1) >= sq6 (2,1) && M9(1,2) <= sq6(1,1);
    sqr6 = -1;
elseif M9(1,1) >= sq5 (2,1) && M9(1,2) <= sq5(1,1);
    sqr5 = -1;
elseif M9(1,1) >= sq4 (2,1) && M9(1,2) <= sq4(1,1);
    sqr4 = -1;
elseif M9(1,1) >= sq3 (2,1) && M9(1,2) <= sq3(1,1);
    sqr3 = -1;
elseif M9(1,1) >= sq2 (2,1) && M9(1,2) <= sq2(1,1);
    sqr2 = -1;
elseif M9(1,1) >= sq1 (2,1) && M9(1,2) <= sq1(1,1);
    sqr1 = -1;
end
%winner?
if C1 == 3;
    sprintf ('winner');
elseif C2 == 3;
    sprintf ('winner');
elseif C3 == 3;
    sprintf ('winner');
elseif R1 == 3;
    sprintf ('winner');
elseif R2 == 3;
    sprintf ('winner');
elseif R3 == 3;
    sprintf ('winner');
end