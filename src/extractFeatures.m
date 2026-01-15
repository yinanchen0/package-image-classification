% Purpose: Feature extraction using pretrained CNNs

function features = extractFeatures(imds)
    net = vgg16;
    layer = 'fc7';
    features = activations(net, imds, layer, 'OutputAs', 'rows');
end
