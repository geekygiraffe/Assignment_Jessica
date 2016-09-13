%%KINE6803 - Assignment 2: Chapter 1:3
%
%Submitted by: Jessica Lynn 
%Due Sept 15, 2016

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%Chapter 1 Exercises 1:6 11:15 22 24:27

%1.)
amuCU = 63.55;
%2.) 
myage = 27;
myage - 2 + 1;
%3.)
namelengthmax
%4.)
Wlbs = 1;
Woz = 16;
who;
whos;
%Wlbs = 1;
Woz = 16;
who;
whos;
%5.)
intmin ('uint32');
intmin ('uint64');
intmax ('uint32');
intmax ('uint64');
%6.)
xdbl = 1.2;
Xint32 = int32(xdbl);
%11.)
pounds = 1;
kilos = 2.2 * (pounds);
%12.)
ftemp = -40;
ctemp = (ftemp - 32) * (5/9);
%13.)
kcal = 1;
Joule = 4184 * kcal;
%14.)
sind(90);
sin(1.5708);
%15.)
R1 = 1/10;
R2 = 1/20;
R3 = 1/30;
Rt = 1/(R1+R2+ R3);
%16.)
%fix(3.5) = floor(3.5)
%fix(3.4) > fix(-3.4)
%fix(3.2) = floor (3.3)
%fix(-3.2) > floor(-3.2)
%fix(-3.2) = ceil(-3.2)
%22.)upper case comes first
%24.) 
a = 'b'>='c'-1;
b = 3==2+1;
c = (3==2)+1;
d = xor(5 < 6, 8 > 4);
%25.)
x = 6;
y = 10;
z = (x > 5) & (y == 10);
%26.) 
True = 3*10^5 == 3e5;
%27.)
logTen = log10(10000);

%%Chapter 2 Exercises 1:4 6:10 12 23 26 30 31

%1.)
2:7;
1.1000:0.2:1.7000;
8:-2:2;
%2.)
vec = linspace(0, 2*pi, 50);
%3.)
linspace(2.0000,3.0000,6);
%4.)
A = (-5:-1);
a = linspace(-5, -1, 5);
B = (5:2:9);
b = linspace(5,9,3);
C = 8:-2:4;
c = linspace(8,4,3);
%6.)
six = (-1:.5:1)';
%7.)
blah = rand(5);
oddblah = blah(1:2:end);
%8.)
eight = [7:10;12:-2:6];
    eight(1,3);
    eight(2,:);
    eight(:,1:2);
%9.)
mat = rand(2,4);
%10.)
mat = rand (2,4);
    mat(1,:) = 1:4;
    mat(2,3) =  3;
%12,)
rows = randi([1,5],1,1);
cols = randi([1,5],1,1);
    zeros (rows,cols);
%23.)
3+5+7+9+11;
%26.)
numerator = [3 5 7 9];
denominator = [1 2 3 4];
    numerator + denominator;
%30.)
Thirty = randi ([-10,10],1,5);
    Thirty - 3;
    pos = Thirty > 0;
        sum(pos);
    abs(Thirty);
    max(Thirty);
%31.)
ThirtyOne = rand (3,5);
    max(ThirtyOne);
    max(ThirtyOne,[],2);

%%Chapter 3 Exercises 1 4 6 8 13
%1.)
Ri = 2; %inner radius
Ro = 4; %outer radius
Volume = ((4*pi)/3)*((Ro^3)-(Ri^3)); %volume of hollow sphere
%4.)
UserMatrix = input('enter desired matrix - ie [1:4;5:8]: '); %in command window user enters maxtrix
%Question Six 
%fprintf puts a newline character at the end of every string printed so that the next output or the prompt appears on the line below.
    %d integer (it stands for decimal integer) %f float (real number) %c single character %s string
fnum = 12345.6789;
fprintf('%10.4f\n',fnum);
fprintf('%10.2\n',fnum);
fprintf('%6.4\n',fnum);
fprintf('%2.4\n',fnum);
%8.)
flowrate = input ('Enter the flow in m^3/s: ');
FlowRateFeetPerSecondEquivalence = flowrate / (0.028);
%13.)
x = input ('enter value for x: ');
y = input('enter value for y: ');
z = input('enter value for z: ');
UnitVector = ([x,y,z] / (sqrt(x^2)+(y^2)+(z^2)));

