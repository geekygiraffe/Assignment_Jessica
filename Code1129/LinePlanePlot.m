function [] = LinePlanePlot (segmentp1, segmentp2, segmentp3)

%find equation from plane through three points 
p1 = trunkP1(1,:);
p2 = trunkP2(1,:);
p3 = trunkP3(1,:);
%take cross product of three points to define normal vector
normalVector = cross(segmentp1-segmentp2, segmentp1-segmentp3);

%declare symbolic variables with components reprsenting the vector from P1
%to a typical point on the plane & compute th edot product of this vecot
%with our normal
syms x y z
Plane = [x,y,z];
definePlane = dot(normalVector, Plane - p1);

% p4 = trunkP1(7,:);
% p5 = trunkP2(9,:);

syms t
%line = p4 + t*(p5 - p4);
line = p3 + t*(p3 - p2);

%line  gives the coordinates of a typical point on our line in terms of the parameter t.
%can now evaluate planefunction at such a point by substituting line for P.

NewPlane = subs(definePlane, Plane, line);

%solve newfunction = 0 for t, and substitute the result in line to obtain our desired point, and check our answer.
t0 = solve(NewPlane);
point = subs(line,t,t0);
subs(definePlane, Plane, point);
%command solve(newfunction) automatically sets the function to zero, recognizes the independent variable, and solves for it.


zplane = solve(definePlane,z);

% ezplot3(line(1), line(2), line(3), [-1,3]), hold on
% ezmesh(zplane, [2, 8, 2, 8]), hold off
% %axis([2, 8, 2, 8, 0, 6]), title ''
fplot(line(1),line(2),line(3),[)
hold on
fmesh(zplane)
hold off