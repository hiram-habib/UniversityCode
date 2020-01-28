function [clusters] = AssignToClusters(A,means)
%AssignToClusters.m assigns each point (pixel) in an image to a cluster,
%based on which mean that point is closest to.
%Inputs:
%       A = a 3D image array
%       seedMeans = a 3D array, containing k rows, 1 column and 3 layers,
%                    representing a list of k points from the image
%Outputs:
%       clusters = 2D array with m rows and n columns, that contains the
%                  corresponding cluster number for each pixel in the image
%Author: Hiram Habib

%Retrieves the dimensions of the image
[rows,cols,~]=size(A);

%Retrieves the cluster number
[k,~,~]=size(means);

%Preallocates the squaredDistances array
squaredDistances=zeros(rows,cols,k);

%For each cluster, calculate the square distance from each
%mean and input it into each layer of the squaredDistances array.
for i =1:k
    squaredDistances(:,:,i)=sum((A-means(i,1,:)).^2,3);
end

%When using min, the index number will be the position it was taken
%from, in this case the layer number. It will put this number into the
%clusters array.
[~,clusters]=min(squaredDistances,[],3);
end