function [orthogonal, dotProduct, crossProduct] = parallelVector (v1, v2, tolerance)
%For vectors v1 and v2 check if they are orthogonal (statisitically
%independent, 90 degrees)
orthogonal = abs(dot(v1,v2)/(length(v1)*length(v2)));
%parallelity test
dotProduct = dot(v1,v2)/(length(v1)*length(v2)); %<= -1 + tolerance;
%3d vectors cross product
%crossProduct=cross(v1, v2)

%{
Dot Product: algebraic operation that takes two equal-length sequences of numbers (usually coordinate vectors) and returns a single number. 
This operation can be defined either algebraically or geometrically. 
%Algebraically, it is the sum of the products of the corresponding entries of the two sequences of numbers. 
%Geometrically, it is the product of the Euclidean magnitudes of the two vectors and the cosine of the angle between them. 
In three-dimensional space, the dot product contrasts with the cross product of two vectors, which produces a pseudovector as the result. 

Euclidean vector is a geometrical object that possesses both a magnitude and a direction. 
A vector pictured as an arrow with magnitude as length, and its direction is the direction that the arrow points. 
The magnitude of a vector 'a' is denoted by |a|
The dot product is directly related to the cosine of the angle between two vectors in Euclidean space of any number of dimensions:
 a .* b = |a| |b| cos(theta) when theta is the angle between a and b

if orthagonal theata = 90
    a .* b = 0
elseif parallel angle = 0
    a .* b  = |a| |b|

dot product of vector 'a' by itself is the euclidean length of a vector: 
(a .* a = |a|^2 && \a\ = sqrt(a .* a)) 


dot = lineP2trunk .* lineP3trunk;
dot = abs(lineP2trunk) .* abs(lineP3trunk) cos(theta);
a = abs(lineP2trunk) .* abs(lineP3trunk);
b = dot ./ a;
%}