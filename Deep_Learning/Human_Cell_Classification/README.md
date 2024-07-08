# Cancer Classification Challenge

## Project Overview
This project focuses on using deep learning techniques to classify oral cancer from images collected through brush scrapes of the mouth. Various neural network architectures were tested and compared to achieve the best possible classification performance on the given dataset.

## Authors
- Jonas Dixon
- Michail Bakalianos
- Georgios Tsouderos
- Mohit Uddin Ahmed

## Introduction
- Oral cancer is increasing globally, linked to alcohol intake, smoking, and HPV.
- Early diagnosis is critical for improving survival rates.
- The project aims to utilize deep learning and neural networks for faster and more accurate detection of oral cancer.

## Dataset
- **Source**: Brush scrapes of the mouth.
- **Patients**: 19 (11 healthy and 8 with cancer).
- **Images**: 
  - 73,419 training images (47,684 healthy, 25,735 cancer).
  - 66,530 test images with unknown labels.
  - Images are 128x128 RGB with an accompanying CSV file containing labels.

## Initial Attempt

### Architecture
- 5 convolutional layers with max pooling.
- 2 fully connected layers.
- Batch normalization and 25% dropout.
- Kaiming He weight initialization.
- ADAM optimizer and ReLU activation function.
- Batch size of 64, 26 training epochs with early stopping.
- Learning rate scheduler starting at 0.001, decreasing by a factor of 0.2 every 8 epochs.

### Results
- Achieved a 78% score on the test dataset.
- Training and validation performance indicated underfitting.
- Large discrepancy between test and validation performance suggested overfitting.
- Potential data leakage due to patient overlap between train and validation sets.

### Improvements
- Augmented data to balance the classes by rotation, flip, brightness, contrast, and saturation modifications.
- Increased dropout to 0.5 to address overfitting.

## Second Attempt

### Architecture
- 5 convolutional layers with max pooling.
- 2 fully connected layers.
- Batch normalization and 40% dropout.
- Kaiming He weight initialization.
- ADAM optimizer and ReLU activation function.
- Batch size of 64, 40 training epochs with early stopping.
- Learning rate scheduler starting at 0.001, decreasing by a factor of 0.2 every 8 epochs.

### Data Augmentation
- Random horizontal and vertical flips to increase variability.
- Normalized images to standardize input data and improve training stability.
- Added ~20k more images to the training set through augmentation.

### Results
- Data augmentation improved accuracy on the training/validation dataset.
- AUC score of 0.94.
- Validation accuracy was slightly better than training accuracy.
- Did not evaluate on the test dataset due to GPU timeout issues.

## Third Attempt

### Architecture
- Deeper network using residual blocks (3 convolution layers each followed by ReLU activation).
- 12 residual blocks.
- Initial convolution layer with ReLU, followed by residual blocks.
- Dropout for regularization and ReLU for activation.
- AdaptiveAvgPool3d and Flatten for final classification layer.

### Training
- Random rotations and flips during data loading.
- 75% split for training and 25% for validation.
- Adam optimizer with a 0.005 learning rate and batch size of 32.
- 40 epochs.

### Results
- Prone to overfitting; trained for 100 epochs to achieve a very low score on the test set.
- Validation scores were higher than test scores.
- Achieved 84.5% score on the test set.

## Conclusion
- Deeper model increased score by 6%.
- Residual layers facilitated the creation of a deeper network.
- Transfer learning could further improve performance.
- Importance/heatmaps and other preprocessing techniques could enhance validation accuracy for smaller models.
- Significant difference between validation and test scores.

