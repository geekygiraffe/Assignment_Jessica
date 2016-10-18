%%KINE6803 - Assignment 4: Tic - Tac - Toe Part II

%Tic Tac Toe loop
%{
Requirements:
2.) Use at least one while loop
3.) Use at least one for loop.
4.) Use at least one break statement.
5.) The program should begin with a welcome message and a prompt asking the
user if they would like to play a game.
6.)At the completion of each game, the program should ask if the user would
like to play again. This should continue until the user says no
7.) Program gives a farewell message.
%}
%Submitted by: Jessica Lynn 
%Due Oct 6, 2016
    clear all 
    close all
    choice = menu('Would you like to play Tic Tac Toe?: Press yes no','Yes','No');
    if choice == 2
    disp(Finished)
    return
    end
 while choice == 1
    clear all 
    close all
%%initialize game
axis([0 1.5 0 1.5])
grid on
hold on
%%initialize game
axis([0 1.5 0 1.5])
grid on
hold on
%% Initialize
UWin = {'Yay you win'};
IWin = {'You lose'};
Tie = {'Tie Game - No Winner'};
Finished = {'thanks for playing'};
moves = 9;

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

%% game loop
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
    %for i = 1:9
    if M1(1,1) >= sq9(2,1) && M1(1,2) <= sq9(1,1);
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
    if M5(1,1) >= sq9 (2,1) && M5(1,2) <= sq9(1,1);
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
    for i = 1:2:9
    if sum(C1_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin,'Color','red' ,'FontSize', 20);
        continue
    elseif sum(C2_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(C3_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(R1_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(R2_Homo) ==3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(R3_Homo) ==3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -3
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -3
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
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
        text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(C2_AI) == 3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan' ,'FontSize', 20);
        continue
    elseif sum(C3_AI) == 3;
        text(M6(1,1),M6(1,2),IWin, 'Color','cyan','FontSize', 20);
        continue
    elseif sum(R1_AI) == 3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R2_AI) ==3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R3_AI) ==3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan' ,'FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -6
        text(M6(1,1),M6(1,2),IWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -6
        text(M6(1,1),M6(1,2),IWin, 'Color','red','FontSize', 20);
        continue
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
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C2_Homo) == 3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C3_Homo) == 3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R1_Homo) == 3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R2_Homo) ==3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R3_Homo) ==3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -3
        text(M7(1,1),M7(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -3
        text(M7(1,1),M7(1,2),UWin, 'Color','red','FontSize', 20);
        continue
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
    if (M8(1,2) >= sq1(2,1)) && (M8(1,2) <= sq1(2,2));
        C1_AI = C1_AI + 1;
    elseif (M8(1,2) >= sq2(2,1)) && (M8(1,2) <= sq2 (2,2));
        C2_AI = C2_AI + 1;
    elseif (M8(1,2) >= sq3(2,1)) && (M8(1,2) <= sq3 (2,2));
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
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(C2_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(C3_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R1_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R2_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R3_AI) ==3;
        text(M8(1,1),M8(1,2),IWin,'Color','cyan','FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -6
        text(M8(1,1),M8(1,2),IWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -6
        text(M8(1,1),M8(1,2),IWin, 'Color','red','FontSize', 20);
        continue
    end
    
    %%MOVE NINE(9)
    M9 = ginput(1);
    scatter (M9(1,1),M9(1,2),500,[0 0 1],'filled');
    %Determine Column
    if (M9(1,1) >= sq1(2,1)) && (M9(1,1) <= sq1(2,2));
        C1_Homo = C1_Homo + 1;
    elseif (M9(1,1) >= sq2(2,1)) && (M9(1,1) <= sq2 (2,2));
        C2_Homo = C2_Homo + 1;
    elseif (M9(1,1) >= sq3(2,1)) && (M9(1,1) <= sq3 (2,2));
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
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C2_Homo) == 3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C3_Homo) == 3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R1_Homo) == 3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R2_Homo) ==3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R3_Homo) ==3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R3_Homo) ~= 3;
        text(sq5(1,1),sq5(1,2), Tie, 'FontSize', 20);
    elseif sum(sqr1 + sqr5 + sqr9) == -3
        text(M9(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -3
        text(M9(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    end
    end

%% play again?
    choice = menu('Would you like to play again? Press yes no','Yes','No');
    if choice == 2
    disp(Finished)
    return
    end
 end
    
    while choice == 1
    clear all 
    close all
%%initialize game
axis([0 1.5 0 1.5])
grid on
hold on
%% Initialize
UWin = {'Yay you win'};
IWin = {'You lose'};
Tie = {'Tie Game - No Winner'};
Finished = {'thanks for playing'};
moves = 9;

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

%% game loop
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
for i = 1:9;
    M1 = ginput (1);
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
    if M5(1,1) >= sq9 (2,1) && M5(1,2) <= sq9(1,1);
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
    for i = 1:2:9
    if sum(C1_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin,'Color','red' ,'FontSize', 20);
        continue
    elseif sum(C2_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(C3_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(R1_Homo) == 3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(R2_Homo) ==3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(R3_Homo) ==3;
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -3
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -3
        text(M5(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
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
        text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(C2_AI) == 3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan' ,'FontSize', 20);
        continue
    elseif sum(C3_AI) == 3;
        text(M6(1,1),M6(1,2),IWin, 'Color','cyan','FontSize', 20);
        continue
    elseif sum(R1_AI) == 3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R2_AI) ==3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R3_AI) ==3;
        text(M6(1,1),M6(1,2),IWin,'Color','cyan' ,'FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -6
        text(M6(1,1),M6(1,2),IWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -6
        text(M6(1,1),M6(1,2),IWin, 'Color','red','FontSize', 20);
        continue
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
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C2_Homo) == 3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C3_Homo) == 3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R1_Homo) == 3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R2_Homo) ==3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R3_Homo) ==3;
        text(M7(1,1),M7(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -3
        text(M7(1,1),M7(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -3
        text(M7(1,1),M7(1,2),UWin, 'Color','red','FontSize', 20);
        continue
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
    if (M8(1,2) >= sq1(2,1)) && (M8(1,2) <= sq1(2,2));
        C1_AI = C1_AI + 1;
    elseif (M8(1,2) >= sq2(2,1)) && (M8(1,2) <= sq2 (2,2));
        C2_AI = C2_AI + 1;
    elseif (M8(1,2) >= sq3(2,1)) && (M8(1,2) <= sq3 (2,2));
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
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(C2_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(C3_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R1_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R2_AI) == 3;
        text(M8(1,1),M8(1,2), IWin,'Color','cyan', 'FontSize', 20);
        continue
    elseif sum(R3_AI) ==3;
        text(M8(1,1),M8(1,2),IWin,'Color','cyan','FontSize', 20);
        continue
    elseif sum(sqr1 + sqr5 + sqr9) == -6
        text(M8(1,1),M8(1,2),IWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -6
        text(M8(1,1),M8(1,2),IWin, 'Color','red','FontSize', 20);
        continue
    end
    
    %%MOVE NINE(9)
    M9 = ginput(1);
    scatter (M9(1,1),M9(1,2),500,[0 0 1],'filled');
    %Determine Column
    if (M9(1,1) >= sq1(2,1)) && (M9(1,1) <= sq1(2,2));
        C1_Homo = C1_Homo + 1;
    elseif (M9(1,1) >= sq2(2,1)) && (M9(1,1) <= sq2 (2,2));
        C2_Homo = C2_Homo + 1;
    elseif (M9(1,1) >= sq3(2,1)) && (M9(1,1) <= sq3 (2,2));
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
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C2_Homo) == 3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(C3_Homo) == 3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R1_Homo) == 3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R2_Homo) ==3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R3_Homo) ==3;
        text(M9(1,1),M9(1,2),UWin,'Color','red', 'FontSize', 20);
        continue
    elseif sum(R3_Homo) ~= 3;
        text(sq5(1,1),sq5(1,2), Tie, 'FontSize', 20);
    elseif sum(sqr1 + sqr5 + sqr9) == -3
        text(M9(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    elseif sum(sqr3 + sqr5 + sqr7) == -3
        text(M9(1,1),M5(1,2),UWin, 'Color','red','FontSize', 20);
        continue
    end
    end
end
    end
