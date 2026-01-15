function img = preprocessImage(img)
    img = imresize(img, [224 224]);
end
