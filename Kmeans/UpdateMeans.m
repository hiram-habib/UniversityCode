function [means] = UpdateMeans(A,k,clusters)
%UpdateMeans.m retrieves corresponding values for each of the clusters
%and calculates a new mean.
%Inputs:
%       A = A 3D image array
%       k = number of clusters
%       clusters = A 2D array specifying which cluster a pixel belongs to
%Outputs:
%       means =  a 3D array containing k rows, 1 column and 3 layers,
%                containing the mean values for each cluster.
%Author: Hiram Habib

%Creates the k x 1 x 3 array for the new means to be placed into
means=zeros(k,1,3);


for i=1:k%Cycles through rows
    for j=1:3%Cycles through layers
        %Retrieves the jth layer for A
        Layers=A(:,:,j);
        
        %Checks which values are equal to i, then puts
        %them in an array
        ColourValues=Layers(clusters==i);
        
        %Calculates the mean, then inputs it into the means array
        means(i,1,j)=mean(ColourValues);
    end
end
end