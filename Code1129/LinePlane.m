function [] = LinePlane (p1, p2, p3)

pone = [1,-1,3];%blue
ptwo = [2,3,4];%orange
pthree = [-5,6,7];%yellow
pfour = [1,2,-1]%purple
pfive = [3,3,3]%green

p1 = trunkP1(1,:);
p2 = trunkP2(1,:);
p3 = trunkP3(1,:);
p4 = trunkP1(7,:);
p5 = trunkP2(9,:);

%take cross product of three points
normalVector = cross(p1-p2, p1-p3);

syms x y z
Plane = [x,y,z];
definePlane = dot(normalVector, Plane - p1);

syms t
line = p4 + t*(p5 - p4);

%line  gives the coordinates of a typical point on our line in terms of the parameter t.
%can now evaluate planefunction at such a point by substituting line for P.

NewPlane = subs(definePlane, Plane, line);

%solve newfunction = 0 for t, and substitute the result in line to obtain our desired point, and check our answer.
t0 = solve(NewPlane);
point = subs(line,t,t0);
subs(definePlane, Plane, point);


%command solve(newfunction) automatically sets the function to zero, recognizes the independent variable, and solves for it.


zplane = solve(definePlane,z);

ezplot3(line(1), line(2), line(3), [-1,3]), hold on
ezmesh(zplane, [2, 8, 2, 8]), hold off
axis([2, 8, 2, 8, 0, 6]), title ''
