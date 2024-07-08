# Deep Learning for Image Analysis

## Project Overview
This project focuses on the implementation and evaluation of neural networks for image analysis, specifically using the MNIST dataset. The project includes the derivation of partial derivatives for neural network training, evaluation of a one-layer feed-forward neural network, and the implementation of a multilayer neural network (MLP).

## Author
- Georgios Tsouderos

## Date
April 2024

## Contents
1. Exercise 1: Partial Derivatives
2. Evaluation of One-Layer Feed Forward Neural Network
3. Implementation of Multilayer Neural Network (MLP)

## Exercise 1: Partial Derivatives
The project begins with deriving expressions for the partial derivatives of the cost function with respect to the biases and weights of the network. The chain rule is used to express these derivatives in terms of the intermediate variables.

### Solution
- Derivation of ∂J/∂bm
- Derivation of ∂J/∂wmj

## Evaluation of One-Layer Feed Forward Neural Network
The performance of a one-layer feed-forward neural network is evaluated using the MNIST dataset. The training and test losses and accuracies are plotted for each iteration.

### Observations
- The final test loss is smaller than the final training loss.
- The training accuracy graph shows a ladder effect, indicating potential issues in the implementation.
- The weight vectors, when reshaped to match the dimensions of the MNIST images, resemble numbers from 0 to 9, representing the filters applied to the images.

## Implementation of Multilayer Neural Network (MLP)
A multilayer neural network with two layers is implemented and evaluated. Hyperparameters such as learning rate, batch size, and epochs are chosen based on the performance on the validation set.

### Hyperparameters
- **Learning rate**: 0.05
- **Batch size**: 64
- **Epochs**: 100

### Observations
- The network converged faster with a higher batch size and learning rate but achieved lower accuracy.
- Reducing the learning rate when reducing the batch size was justified as it helped manage the noisier gradients.
- The training and test performance graphs indicate that the model is well-trained, with the test set performance closely following the training set performance.

### Results with Increased Epochs
- By increasing the epochs to 200 while keeping other hyperparameters the same, the network achieved:
  - Training accuracy: 1.0 (likely rounded up)
  - Test accuracy: 0.98

## Conclusion
The project successfully implemented and evaluated neural networks for image analysis using the MNIST dataset. The results demonstrate the effectiveness of careful hyperparameter tuning and the importance of adequate training iterations.

