function [squaredDistance] = SquaredDistance(P1,P2)
%SquaredDistance.m is a function that calculates the square of the
%distance between two points in 3D space given two points in 3D space
%Inputs: P1= An array containing 3 elements representing
%                 a point in 3D space
%        P2= An array containing 3 elements representing
%                a second point in 3D space
%Output: Distance = the squared distance between two points
%Author: Hiram Habib

%Calculates the squared distance between two points in 3D space
%using pythagoras
squaredDistance =(P1(1)-P2(1))^2+(P1(2)- P2(2))^2+(P1(3)-P2(3))^2;

end

