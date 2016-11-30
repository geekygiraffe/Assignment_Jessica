%{
pone = [1,-1,3];%blue
ptwo = [2,3,4];%orange
pthree = [-5,6,7];%yellow
 
normal = cross(pone-ptwo, pone-pthree);

syms x y z
P = [x,y,z];
planefunction = dot(normal, P-pone)

pfour = [1,2,-1]%purple
pfive = [3,3,3]%green

 syms t
 line = pfour + t*(pfive - pfour);
 
 %line  gives the coordinates of a typical point on our line in terms of the parameter t. 
 %can now evaluate planefunction at such a point by substituting line for P. 
 
 newfun = subs(planefunction, P, line);

 %solve newfunction = 0 for t, and substitute the result in line to obtain our desired point, and check our answer. 
 t0 = solve(newfun);
 point = subs(line,t,t0);
 subs(planefunction, P, point);
 
 
 %command solve(newfunction) automatically sets the function to zero, recognizes the independent variable, and solves for it. 
 
 zplane = solve(planefunction,z);
 
ezplot3(line(1), line(2), line(3), [-1,3]), hold on
ezmesh(zplane, [2, 8, 2, 8]), hold off
%axis([2, 8, 2, 8, 0, 6]), title ''
% plot(pone)  
% hold on
% plot(ptwo) 
% plot(pthree)
% plot(pfour)
% plot(pfive)

%}
% p1 = ones(size(trunkP1));
% p2 = zeros(size(trunkP2));
% p3 = zeros(size(trunkP3));

%find equation from plane through three points 
p1 = trunkP1(1,:);
p2 = trunkP2(1,:);
p3 = trunkP3(1,:);

%take cross product of three points to define normal vector
normalVector(i) = cross(p1(i)-p2(i), p1(i)-p3(i));

%declare symbolic variables with components reprsenting the vector from P1
%to a typical point on the plane & compute th edot product of this vecot
%with our normal
syms x y z
tempPlane = [x,y,z];
definePlane(i) = dot(normalVector(i), tempPlane - p1(i));

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