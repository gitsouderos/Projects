# Deep Learning for Image Analysis

## Project Overview
This project involves the implementation and evaluation of convolutional neural networks (CNNs) for image classification and biomedical image segmentation. The project focuses on the MNIST dataset for digit classification and the Warwick Biomedical Dataset for cell segmentation.

## Author
- Georgios Tsouderos

## Date
June 2024

## MNIST Classification
### Initial Model Implementation
The project began with implementing a basic CNN for the MNIST digit classification task. The architecture included:
- 5 convolutional layers with max pooling.
- 2 fully connected layers.
- Batch normalization and 25% dropout.
- Kaiming He weight initialization.
- ADAM optimizer and ReLU activation function.
- Batch size of 64, with 26 training epochs and early stopping.
- A learning rate scheduler starting at 0.001, decreasing by a factor of 0.2 every 8 epochs.

### Results and Observations
- **Training and Performance**: The initial model achieved a high training accuracy, but there was a noticeable overfitting, as indicated by a large gap between training and test performance.
- **Optimization**: Switching to the Adam optimizer improved convergence speed, but overfitting persisted. The final test accuracy was 98.2%, with room for hyperparameter optimization.

### Model Improvements
- **Learning Rate Adjustment**: Reducing the learning rate to 0.001 improved the test accuracy to 99% and reduced overfitting.
- **Batch Normalization**: Adding batch normalization layers further stabilized the training process, maintaining a 99% accuracy.
- **Learning Rate Scheduler**: Introducing a learning rate scheduler increased the performance to 99.2%.

## Segmentation of the Warwick Biomedical Dataset
### Initial Model Implementation
For the biomedical image segmentation task, the following architecture was implemented:
- Multiple convolutional and deconvolutional layers with batch normalization.
- Dropout for regularization.
- AdaptiveAvgPool3d and Flatten for the final classification layer.
- Adam optimizer with a learning rate of 0.01 and a batch size of 32.
- The model was trained for 100 epochs.

### Results and Observations
- **Dice Score**: The initial model achieved a dice score of 0.66 on the test set, indicating underfitting.
- **Visualization**: Visual inspection of predicted masks showed that the model captured the general structure but missed finer details.

### Model Improvements
- **Batch Normalization**: Adding batch normalization after every convolutional and deconvolutional layer improved the dice score to 0.82.
- **Batch Size Adjustment**: Reducing the batch size to 16 further improved the dice score to 0.85.
- **Learning Rate Scheduler**: Modifying the learning rate scheduler to slow down the learning rate reduction increased the dice score to 0.88.

## Results and Discussion
- **MNIST Classification**: The best model achieved a 99.2% test accuracy, with significant improvements from batch normalization and learning rate scheduling, reducing overfitting and enhancing generalization.
- **Warwick Biomedical Dataset Segmentation**: The best model achieved a dice score of 0.88. The model showed excellent performance on some images, but certain cases with artifacts indicated room for further improvements.

## Conclusion
The project demonstrates the effectiveness of CNNs for image classification and segmentation tasks. Significant improvements were achieved through careful hyperparameter tuning and the use of advanced techniques such as batch normalization and learning rate scheduling.
