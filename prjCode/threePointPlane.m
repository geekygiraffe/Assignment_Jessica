function [line, xPlane, yPlane, zPlane] = threePointPlane (segmentP1, segmentP2, segmentP3)
%define and solve equation of plane through three points in 3D space

%3 points (x,y,z components) from segment defined as p1:3 
p1 = segmentP1(1,:);
p2 = segmentP2(1,:);
p3 = segmentP3(1,:);

%cross product of three points to define normal vector
normalVector = cross(p1-p2, p1-p3);

%declare symbolic variables with components reprsenting the vector from P1
%to a typical point on the plane & compute the dot product of this vector
%with previously defined normal vector

syms x y z
tempPlane = [x,y,z]; %tempory plane - basically preallocating it in the x y z fields
definePlane = dot(normalVector, tempPlane - p1); %calculate plane via dot product using built in function dot

syms t %3d line equation R = Rinitial + t(vector) 
%line = p2 + t*(p2 - p1); %[ (27363871335903*t)/9007199254740992 - 2683677003551569/4503599627370496, 5380099194048597/9007199254740992 - (16417872441579*t)/2251799813685248, (1483737918834975*t)/36028797018963968 + 8469685632015069/36028797018963968]
line = p3 + t*(p3 - p2); %[ (684961474526033*t)/9007199254740992 - 10397/20000, 1336684132002259/2251799813685248 - (33362666039561*t)/9007199254740992, 842042525929089/4503599627370496 - (4811*t)/100000]
%line = p3 + t*(p3 - p1); %[ (44520334116371*t)/562949953421312 - 10397/20000, 1336684132002259/2251799813685248 - (99034155805877*t)/9007199254740992, 842042525929089/4503599627370496 - (433*t)/62500]

%line  gives the coordinates of a typical point on our line in terms of the parameter t.
%can now evaluate planefunction at such a point by substituting line for P.

% % subs   Symbolic substitution.
% %     subs(S,OLD,NEW) replaces OLD with NEW in the symbolic expression S.
% %     OLD is a symbolic variable, a string representing a variable name, or
% %     a string (quoted) expression. NEW is a symbolic or numeric variable
% %     or expression.

Plane = subs(definePlane, tempPlane, line);

%solve: sets equal to 0  t, and substitute the result in line to obtain our desired point, and check our answer.
%%command solve(newfunction) automatically sets the function to zero, recognizes the independent variable, and solves for it.

t0 = solve(Plane);
%solve  Symbolic solution of algebraic equations.
%     The eqns are symbolic expressions, equations, or inequalities.  The
%     vars are symbolic variables specifying the unknown variables.
%     If the expressions are not equations or inequalities, 
%     solve seeks zeros of the expressions.
%     Otherwise solve seeks solutions.
point = subs(line,t,t0);
subs(definePlane, tempPlane, point);


xPlane = solve(definePlane,x);
yPlane = solve(definePlane,y);
zPlane = solve(definePlane,z);
end

% subplot(3,1,1)
% plot3(line(1),line(2),line(3),[-1,1]);
% hold on
% fmesh(zPlane);
% subplot(3,1,2)
% fmesh(xPlane);
% subplot(3,1,3)
% fmesh(yPlane);
% hold off
%trunk example
%{
p1 = trunkP1(1,:);
p2 = trunkP2(1,:);
p3 = trunkP3(1,:);
%take cross product of three points to define normal vector
normalVector = cross(p1-p2, p1-p3);

%declare symbolic variables with components reprsenting the vector from P1
%to a typical point on the plane & compute th edot product of this vecot
%with our normal
syms x y z
tempPlane = [x,y,z];
definePlane = dot(normalVector, tempPlane - p1);
% p4 = trunkP1(7,:);
% p5 = trunkP2(9,:);

syms t
%line = p2 + t*(p2 - p1); %[ (27363871335903*t)/9007199254740992 - 2683677003551569/4503599627370496, 5380099194048597/9007199254740992 - (16417872441579*t)/2251799813685248, (1483737918834975*t)/36028797018963968 + 8469685632015069/36028797018963968]
%line = p3 + t*(p3 - p2); %[ (684961474526033*t)/9007199254740992 - 10397/20000, 1336684132002259/2251799813685248 - (33362666039561*t)/9007199254740992, 842042525929089/4503599627370496 - (4811*t)/100000]
line = p3 + t*(p3 - p1); %[ (44520334116371*t)/562949953421312 - 10397/20000, 1336684132002259/2251799813685248 - (99034155805877*t)/9007199254740992, 842042525929089/4503599627370496 - (433*t)/62500]

%line  gives the coordinates of a typical point on our line in terms of the parameter t.
%can now evaluate planefunction at such a point by substituting line for P.

% % subs   Symbolic substitution.
% %     subs(S,OLD,NEW) replaces OLD with NEW in the symbolic expression S.
% %     OLD is a symbolic variable, a string representing a variable name, or
% %     a string (quoted) expression. NEW is a symbolic or numeric variable
% %     or expression.

Plane = subs(definePlane, tempPlane, line);

%solve newfunction = 0 for t, and substitute the result in line to obtain our desired point, and check our answer.
t0 = solve(Plane);
%solve  Symbolic solution of algebraic equations.
%     The eqns are symbolic expressions, equations, or inequalities.  The
%     vars are symbolic variables specifying the unknown variables.
%     If the expressions are not equations or inequalities, 
%     solve seeks zeros of the expressions.
%     Otherwise solve seeks solutions.
point = subs(line,t,t0);
subs(definePlane, tempPlane, point);

%command solve(newfunction) automatically sets the function to zero, recognizes the independent variable, and solves for it.
xPlane = solve(definePlane,x);
yPlane = solve(definePlane,y);
zPlane = solve(definePlane,z);
%}