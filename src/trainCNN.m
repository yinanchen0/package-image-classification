function net = trainCNN(imds)
    layers = [
        imageInputLayer([224 224 3])
        convolution2dLayer(3,32,'Padding','same')
        reluLayer
        maxPooling2dLayer(2,'Stride',2)
        fullyConnectedLayer(numel(categories(imds.Labels)))
        softmaxLayer
        classificationLayer
    ];

    options = trainingOptions('adam','MaxEpochs',20);
    net = trainNetwork(imds, layers, options);
end
