function guessThatNumber()  % *** WARNING: CONTAINS 12 INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME:
%
%         DUE: October 27
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains 12 bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it,
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

%% begin game
beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;     % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)%%range is said to be 1-highest later in the code : found by reading and comparing with fprint range
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)%%range is said to be 1-highest later in the code : found by reading and comparing with fprint range

level = input('Enter level (1-3): ');

while level ~= beginner && level ~= moderate && level ~= advanced %%changed 'or' to 'and' : found because could not enter valid number
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner  %%'==' corrected, found by reading
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
elseif level == advanced  %%if corrected to 'elseif'found by reading 
    highest = advancedHighest; %%variable named wrong found by highlighting variables and making sure all were selected %%assigned level to advaced
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand()+rand() * highest); %%was only generating 10,100,1000 for secret number replaced +1 with + rand

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    while userGuess < 1 || userGuess >= highest
        
        fprintf('Sorry, that is not a valid guess.\n Re-enter a guess (1-%d): ', highest);
        
        userGuess = input('');
        
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    numOfTries = numOfTries + 1;
    
%     report whether the user's guess was high, low, or correct        

    if userGuess < secretNumber %%replaced '>' with '<'
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 2 %%changed to 2 becuase initial counter added one so Number of Tries would never == 1
       fprintf('\nLucky You!  You got it on your first try!\n\n');
    elseif userGuess == secretNumber
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
            secretNumber, (numOfTries - 1)); %% added the second '%d' was not outputting the number of tries, needed to also subtract 1 to normalize the count
        fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
        
    end  % of guessing while loop
    %%added 'end' found becuase couldn't collapse the loop
end % end of game