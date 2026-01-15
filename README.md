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
- **Normal Pickup** – a single, undamaged item is correctly picked
  
- **Damaged Package** – visible damage on the package

- 
- **Multiple Items Picked** – more than one item is picked unintentionally

  

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
