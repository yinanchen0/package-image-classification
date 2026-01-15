function evaluateModel(xgbModel, cnnModel, testData)
    predictions = classify(cnnModel, testData);
    accuracy = mean(predictions == testData.Labels);

    fid = fopen('results/accuracy.txt','w');
    fprintf(fid, 'CNN Accuracy: %.2f%%\n', accuracy*100);
    fclose(fid);
end
