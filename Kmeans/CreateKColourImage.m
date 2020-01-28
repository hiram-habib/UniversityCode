function [newImage] = CreateKColourImage(clusters,means)
%CreateKColourImage.m is a function that creates a k-colour image for an image
%that has had its pixels divided into k clusters.All pixels in a given cluster
%will be recoloured using the mean colour values for that cluster.
%Inputs:
%       cluster = A 2D array specifying which cluster
%                 each pixel belongs to
%       means = a 3D array where each row contains the mean colour values
%               for the cluster corresponding to that row number
%Outputs:
%       newImage = a 3D array representing an RGB image
%Author: Hiram Habib

%Retrieves the dimensions of the clusters array
[rows,cols]=size(clusters);

%Retrieves the number of clusters
[k,~,~]=size(means);

%Rounds the mean colour values to the nearest integer
means=round(means);

%Sets up the new image array that is uint8
newImage=zeros(rows,cols,3,'uint8');

for i = 1:rows %Cycles through rows
    for j=1:cols %Cycles through columns
        for p=1:k
            %Checks if the cluster values are equal and
            %assigns the mean cluster value to that point in
            %the image
            if clusters(i,j)==p
                newImage(i,j,:)=means(p,:,:);
            end
        end
    end
end

end