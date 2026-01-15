% main.m
% Entry point for delivery image classification

[dataTrain, dataTest] = splitDataset('data/');

featuresTrain = extractFeatures(dataTrain);
featuresTest  = extractFeatures(dataTest);

xgbModel = trainXGBoost(featuresTrain, dataTrain.Labels);
cnnModel = trainCNN(dataTrain);

evaluateModel(xgbModel, cnnModel, dataTest);
