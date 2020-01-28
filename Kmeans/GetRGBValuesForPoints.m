function [seedMeans] = GetRGBValuesForPoints(A,points)
%GetRGBValuesForPoints.m is a function that returns the RGB
%colour values from a specified list of points
%Inputs:
%        A = A 3D image Array to fetch RGB values from
%        points = A 2D array made up of specific points
%Outputs:
%        seedMeans = a 3D array, containing k rows, 1 column and 3 layers,
%                    representing a list of k points from the image
%Author: Hiram Habib

%Retrieves the number of rows(value of k) from the points array
[rows,~]=size(points);

%Creates an array called Means which is k x 1 x 3
seedMeans=zeros(rows,1,3);

%The loop cycles through the points array and takes the corresponding
%RGB values from the image array and puts it into the seedMeans array
for i = 1:rows %Cycles through rows
    for j=1:3 %Cycles through layers
        %Takes the RGB value from A
        seedMeans(i,1,j) = A(points(i,1),points(i,2),j);
    end
end

end