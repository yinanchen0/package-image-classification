function [imdsTrain, imdsTest] = splitDataset(dataPath)
% splitDataset  Split image dataset into training and test sets
%
% Input:
%   dataPath - Path to image dataset directory
%
% Output:
%   imdsTrain - Training imageDatastore
%   imdsTest  - Testing imageDatastore

    % Load dataset (expects subfolders as class labels)
    imds = imageDatastore(dataPath, ...
        'IncludeSubfolders', true, ...
        'LabelSource', 'foldernames');

    % Split dataset: 80% training, 20% testing
    [imdsTrain, imdsTest] = splitEachLabel(imds, 0.8, 'randomized');

    fprintf('Training images: %d\n', numel(imdsTrain.Files));
    fprintf('Testing images: %d\n', numel(imdsTest.Files));
end
