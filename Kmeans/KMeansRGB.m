
function [clusters,means] = KMeansRGB(A,seedMeans,maxIterations)
%KMeansRGB.m is a function that partitions pixels into
%clusters depending on the mean they are closest to. It then
%updates the means depending on the other nearby points. It
%carries on with these two steps until convergence or max
%iterations is reached
%Inputs:
%       A = A 3D image array
%       seedMeans = A 3D array containing the initial colour means
%       maxIterations = maximum number of iterations to perform
%Outputs:
%       clusters = A 2D array specifying which pixel is closest
%                  to which cluster
%       means = A 3D array with updated mean colour values
%Author: Hiram Habib

%Set means equal to inputted seedMeans
means=seedMeans;
%Find the cluster number from the size of means array
[k,~,~]=size(means);
%Setting up a variable for the while loop
stop=0;
%Setting up a variable for the while loop
counter=0;

%This while loop will keep looping until stop doesn't equal 0
%or max iterations is reached
while (stop==0) && (counter<maxIterations)
    %prevMeans is used to compare against means
    prevMeans=means;
    
    %Run the means through the AssignToClusters function
    clusters=AssignToClusters(A,prevMeans);
    %Run the clusters through the UpdateMeans function
    means=UpdateMeans(A,k,clusters);
    
    %set stop=1 if the previous means equal the new means
    if prevMeans==means
        stop=1;
    end
    %Add one to the counter
    counter=counter+1;
end

%If the loop stopped because of the counter<=maxIterations condition,
%it lets the user know it hit the maximum number of iterations before
%convergence was reached
if counter==maxIterations
    disp(['Maximum number of iterations reached before convergence'...
        ' was achieved']);
end

end
