# Delivery Pickup Image Classification

This project implements an **image-based classification system for automated delivery
pickup scenarios**. Camera images captured during the pickup process are analyzed to
determine whether the pickup is **successful**, **damaged**, or **incorrect**.

The system is designed to support delivery automation by detecting pickup failures
such as **package damage** or **accidental multi-item pickup**.

---

## Objective
To train and evaluate image classification models capable of identifying pickup
conditions in delivery systems using camera images captured at the pickup stage.

---

## Classification Categories
> Note: Some images in the dataset may be blurred due to motion or capture conditions.  
> The example images shown below are randomly selected.

- **Normal Pickup** – a single, undamaged item is correctly picked
  
  ![Defective package example](example-image/normal.jpg)
  
- **Damaged Package** – visible damage on the package
  
  ![Defective package example](example-image/defect.jpg)
  
- **Multiple Items Picked** – more than one item is picked unintentionally
  
  ![Defective package example](example-image/multi-pick.jpg)
  
---

## Approach
- Camera images are preprocessed and resized for model compatibility
- Deep features are extracted using pretrained convolutional neural networks
- Multiple models are evaluated, including:
  - Transfer learning with pretrained CNN feature extraction
  - XGBoost-based classifiers
  - Custom convolutional neural networks
- Models are compared based on classification accuracy and training efficiency

---

## Code Structure
src/

├── main.m # Entry point for training and evaluation

├── extractFeatures.m # CNN-based feature extraction

├── trainXGBoost.m # XGBoost classifier training

├── trainCNN.m # Custom CNN training

├── evaluateModel.m # Model evaluation and metrics

└── utils/

├── preprocessImage.m # Image preprocessing utilities

└── splitDataset.m # Dataset splitting

## How to Run
1. Organize the dataset as follows:

data/

├── normal/

├── damaged/

└── multiple/

3. Run `src/main.m`
## Model Architecture and Comparison

### Self-Built CNN Structure
A lightweight custom convolutional neural network was designed and trained from scratch
to match the delivery pickup classification task. The network follows a simple and
efficient structure:

- Input layer: RGB images resized to 224 × 224
- Convolutional layers with ReLU activation for feature extraction
- Max pooling layers for spatial downsampling
- Fully connected layer for classification
- Softmax output layer for multi-class prediction

This architecture prioritizes **simplicity, faster training**, and **reduced risk of
overfitting** on a limited dataset.

---

### Model Comparison and Advantages

**1. Transfer Learning (Pretrained CNN + XGBoost)**
- Uses pretrained CNNs to extract high-level visual features
- Achieves the **highest classification accuracy**
- Performs well with limited training data
- Suitable when accuracy is the primary objective

**Advantages:**
- Strong feature representation
- Faster convergence
- Better generalization

---

**2. Self-Built CNN**
- Trained end-to-end on the delivery pickup dataset
- Lightweight and task-specific
- Easier to modify and deploy

**Advantages:**
- Lower computational cost
- Faster training
- Greater architectural flexibility
- More suitable for embedded or edge deployment

---

### Summary
Transfer learning provides superior performance when computational resources are
available, while the self-built CNN offers a balanced solution for **real-time delivery
systems** where efficiency and simplicity are critical.


