function [dP, absDp, orthogonal, dotProduct,] = vectorPositioning (v1, v2) %(tolerance, theta)
%evaluate vector1 & vector2 for orthogonal cos(90) or parallel cos(0)
%positioning
dP = v1 .* v2;
absDp = abs(dP);
%parallelity test
dotProduct = dot(v1,v2)/(length(v1)*length(v2)); %<= -1 + tolerance;
    %dP == abs(v1) .* abs(v2) cos(theta) && dP == 0
    % vectorsAre =  fprintf ('vectors are Parallel');
%or orthogonal
orthogonal = abs(dot(v1,v2)/(length(v1)*length(v2)));
    %dP == abs(v1) .* abs(v2) cos(theta) && dP == 1
    % vectorsAre =  fprintf ('vectors are orthogonal');
crossProduct = cross(v1, v2);
end


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


 = lineP2trunk .* lineP3trunk;
 = abs(lineP2trunk) .* abs(lineP3trunk) cos(theta);
a = abs(lineP2trunk) .* abs(lineP3trunk);
b = dot ./ a;
%}

%%3d vectors cross product
%crossProduct=cross(v1, v2)

%....
%vectorPosition fucntion checks two vectors position relative
%{
% to each other (orthagonal theata = 90) %     a .* b = 0
% (parallel angle = 0) %     a .* b  = |a| |b|
[dP, absDp, orthogonal, dotProduct] = vectorPosition (lineP2trunk, lineP3trunk);
%{
%abs(lineP2trunk) .* abs(lineP3trunk) cos(theta)

% if dP == abs(v1) .* abs(lineP2trunk) cos(90) && dP == 1
%     vectorsAre =  fprintf ('vectors are Parallel');
%     
% elseif dP == abs(v1) .* abs(v2) cos(theta) && dP == 0
%    vectorsAre =  fprintf ('vectors are orthogonal');
% end
% end
%cosineAngle_v1v2 = abs(v1) .* abs(v2) cos(theta)

%     orthagonal theata = 90
%     v1 .* v2 = 0
% elseif parallel angle = 0
%     a .* b  = |a| |b|
% % [orthogonal, dotproduct] = parallelVector (lineP1trunk, lineP3trunk);
% % [orthogonal, dotproduct] = parallelVector (lineP1trunk, lineP2trunk);
% a .* b = |a| |b| cos(theta)
% if dotproduct > tolerance %!% WHAT I AM CHECKING? %!%
%     fprintf ('vectors not parallel')
%     return
% end
%}
%{
%equation of a line (a,b,c) * (x,y,z) = d
%dLine = (trunkP1) .* (trunkP2);

%cross-product of two vectors parallel to the plane to find normal vector to plane
%trunkNormVector = cross(trunkP1 - trunkP2, trunkP1 - trunkP3);
%}
%}
