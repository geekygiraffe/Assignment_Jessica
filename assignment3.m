%%KINE6803 - Assignment 3: Tic - Tac - Toe

%Submitted by: Jessica Lynn 
%Due Sept 27, 2016

clear all 
close all
% welcome statement 
axis([0 2 0 1.5])
Welcome = {'Welcome to tic - tac - toe!'};
Direction = {'Use the cross hairs to select your move'};
Rules = {'Normal rules apply; no cheating'};
Luck = {'Good luck human :) '};
text(0.4,1.15, Welcome,'Color','blue','FontSize', 25)
text(0.2,0.85, Direction,'Color','magenta','FontSize', 20)
text(0.2,0.65, Rules,'Color','magenta','FontSize', 20)
text(0.2,0.45, Luck,'Color','magenta','FontSize', 20)
%initialize board
UWin = {'Yay you win'};
IWin = {'You lose'};
Tie = {'Tie Game - No Winner'};
axis([0 1.5 0 1.5])
grid on
%Identify ranges of each row and col.2umn
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
close all
axis([0 1.5 0 1.5])
grid on
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
    sqr9 = -2;
elseif M2(1,2) >= sq8 (2,1) && M2(1,1) <= sq8(1,1);
    sqr8 = -2;
elseif M2(1,2) >= sq7 (2,1) && M2(1,1) <= sq7(1,1);
    sqr7 = -2;
elseif M2(1,2) >= sq6 (2,1) && M2(1,1) <= sq6(1,1);
    sqr6 = -2;
elseif M2(1,2) >= sq5 (2,1) && M2(1,1) <= sq5(1,1);
    sqr5 = -2;
elseif M2(1,2) >= sq4 (2,1) && M2(1,1) <= sq4(1,1);
    sqr4 = -2;
elseif M2(1,2) >= sq3 (2,1) && M2(1,1) <= sq3(1,1);
    sqr3 = -2;
elseif M2(1,2) >= sq2 (2,1) && M2(1,1) <= sq2(1,1);
    sqr2 = -2;
elseif M2(1,2) >= sq1 (2,1) && M2(1,1) <= sq1(1,1);
    sqr1 = -2;
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
    sqr9 = -2;
elseif M4(1,2) >= sq8 (2,1) && M4(1,1) <= sq8(1,1);
    sqr8 = -2;
elseif M4(1,2) >= sq7 (2,1) && M4(1,1) <= sq7(1,1);
    sqr7 = -2;
elseif M4(1,2) >= sq6 (2,1) && M4(1,1) <= sq6(1,1);
    sqr6 = -2;
elseif M4(1,2) >= sq5 (2,1) && M4(1,1) <= sq5(1,1);
    sqr5 = -2;
elseif M4(1,2) >= sq4 (2,1) && M4(1,1) <= sq4(1,1);
    sqr4 = -2;
elseif M4(1,2) >= sq3 (2,1) && M4(1,1) <= sq3(1,1);
    sqr3 = -2;
elseif M4(1,2) >= sq2 (2,1) && M4(1,1) <= sq2(1,1);
    sqr2 = -2;
elseif M4(1,2) >= sq1 (2,1) && M4(1,1) <= sq1(1,1);
    sqr1 = -2;
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
if sum(C1_Homo) == 3;
text(M5(1,1),M5(1,2),UWin,'Color','red' ,'FontSize', 20);
    return
elseif sum(C2_Homo) == 3;
text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return   
elseif sum(C3_Homo) == 3;
text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return
elseif sum(R1_Homo) == 3;
text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return
elseif sum(R2_Homo) ==3;
text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20)
    return
elseif sum(R3_Homo) ==3;
text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return
elseif sum(sqr1 + sqr5 + sqr9) == -3
    text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return
elseif sum(sqr3 + sqr5 + sqr7) == -3
    text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return
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
    sqr9 = -2;
elseif M6(1,2) >= sq8 (2,1) && M6(1,1) <= sq8(1,1);
    sqr8 = -2;
elseif M6(1,2) >= sq7 (2,1) && M6(1,1) <= sq7(1,1);
    sqr7 = -2;
elseif M6(1,2) >= sq6 (2,1) && M6(1,1) <= sq6(1,1);
    sqr6 = -2;
elseif M6(1,2) >= sq5 (2,1) && M6(1,1) <= sq5(1,1);
    sqr5 = -2;
elseif M6(1,2) >= sq4 (2,1) && M6(1,1) <= sq4(1,1);
    sqr4 = -2;
elseif M6(1,2) >= sq3 (2,1) && M6(1,1) <= sq3(1,1);
    sqr3 = -2;
elseif M6(1,2) >= sq2 (2,1) && M6(1,1) <= sq2(1,1);
    sqr2 = -2;
elseif M6(1,2) >= sq1 (2,1) && M6(1,1) <= sq1(1,1);
    sqr1 = -2;
end
%winner
if sum(C1_AI) == 3;
text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(C2_AI) == 3;
text(M6(1,1),M6(1,2),IWin,'Color','cyan' ,'FontSize', 20)
    return
elseif sum(C3_AI) == 3;
text(M6(1,1),M6(1,2),IWin, 'Color','cyan','FontSize', 20)
    return
elseif sum(R1_AI) == 3;
text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(R2_AI) ==3;
text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(R3_AI) ==3;
text(M6(1,1),M6(1,2),IWin,'Color','cyan' ,'FontSize', 20)
    return
elseif sum(sqr1 + sqr5 + sqr9) == -6
    text(M6(1,1),M6(1,2),IWin, 'Color','red','FontSize', 20);
    return
elseif sum(sqr3 + sqr5 + sqr7) == -6
    text(M6(1,1),M6(1,2),IWin, 'Color','red','FontSize', 20);
    return
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
if sum(C1_Homo) == 3;
text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(C2_Homo) == 3;
text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(C3_Homo) == 3;
text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(R1_Homo) == 3;
text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(R2_Homo) ==3;
text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(R3_Homo) ==3;
text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(sqr1 + sqr5 + sqr9) == -3
    text(M7(1,1),M7(1,2),UWin, 'Color','red','FontSize', 20);
    return
elseif sum(sqr3 + sqr5 + sqr7) == -3
    text(M7(1,1),M7(1,2),UWin, 'Color','red','FontSize', 20);
    return
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
    sqr9 = -2;
elseif M8(1,2) >= sq8 (2,1) && M8(1,1) <= sq8(1,1);
    sqr8 = -2;
elseif M8(1,2) >= sq7 (2,1) && M8(1,1) <= sq7(1,1);
    sqr7 = -2;
elseif M8(1,2) >= sq6 (2,1) && M8(1,1) <= sq6(1,1);
    sqr6 = -2;
elseif M8(1,2) >= sq5 (2,1) && M8(1,1) <= sq5(1,1);
    sqr5 = -2;
elseif M8(1,2) >= sq4 (2,1) && M8(1,1) <= sq4(1,1);
    sqr4 = -2;
elseif M8(1,2) >= sq3 (2,1) && M8(1,1) <= sq3(1,1);
    sqr3 = -2;
elseif M8(1,2) >= sq2 (2,1) && M8(1,1) <= sq2(1,1);
    sqr2 = -2;
elseif M8(1,2) >= sq1 (2,1) && M8(1,1) <= sq1(1,1);
    sqr1 = -2;
end

%winner
if sum(C1_AI) == 3;
text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(C2_AI) == 3;
text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(C3_AI) == 3;
text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(R1_AI) == 3;
text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(R2_AI) == 3;
text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20)
    return
elseif sum(R3_AI) ==3;
text(M8(1,1),M8(1,2),IWin,'Color','cyan','FontSize', 20)
    return
elseif sum(sqr1 + sqr5 + sqr9) == -6
    text(M8(1,1),M8(1,2),IWin, 'Color','red','FontSize', 20);
    return
elseif sum(sqr3 + sqr5 + sqr7) == -6
    text(M8(1,1),M8(1,2),IWin, 'Color','red','FontSize', 20);
    return
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
if sum(C1_Homo) == 3;
text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(C2_Homo) == 3;
text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(C3_Homo) == 3;
text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(R1_Homo) == 3;
text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(R2_Homo) ==3;
text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(R3_Homo) ==3;
text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20)
    return
elseif sum(R3_Homo) ~= 3;
    text(sq5(1,1),sq5(1,2), Tie, 'FontSize', 20)
elseif sum(sqr1 + sqr5 + sqr9) == -3
    text(M9(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return
elseif sum(sqr3 + sqr5 + sqr7) == -3
    text(M9(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
    return
end 