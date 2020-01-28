function [points] = SelectKRandomPoints(A,k)
%SelectKRandomPoints.m is a function generates a list of k randomly
%selected pixels from an image. All of these points are unique.
%Inputs:
%       A = a 3D image array
%       k = Number of points to randomly select
%Outputs:
%       points = A 2D array representing k randomly selected points
%Authors: Hiram Habib

%Retrieves the dimensions of the image (without colours)
[rows,cols,~]=size(A);

%Gets a linear index of k random numbers
randomNumbers=randperm(rows*cols,k);

%Gets the subscript indices
[r,c]=ind2sub([rows,cols],randomNumbers);

%Concatenates the rows and cols into a k x 2 array
points=[r',c'];

end

