# Linear Regression Analysis

## Project Overview
This project involves the implementation and evaluation of linear regression models to predict car mileage based on various features. The analysis includes deriving partial derivatives, evaluating the performance of linear regression models, and examining the effects of different learning rates and normalization on the model's performance.

## Author
- Georgios Tsouderos

## Date
April 2024

## Contents
1. Partial Derivatives
2. Derivations
3. Evaluation of Linear Regression Models

## Partial Derivatives
The project begins with deriving expressions for the partial derivatives of the cost function with respect to the biases and weights of the model using the chain rule.

### Solution
- Derivation of ∂J/∂b
- Derivation of ∂J/∂wj

## Derivations
The project continues by deriving expressions for:
- ∂J/∂zi
- ∂zi/∂b
- ∂zi/∂wj

These derivations are fundamental for understanding how the model updates its parameters during training.

## Evaluation of Linear Regression Models
The performance of two linear regression models is evaluated using a car dataset, with the goal of predicting miles per gallon (MPG).

### Model 1: Single Feature (Horsepower)
- **Learning rate (α)**: 0.01
- **Iterations**: 2000
- **Loss**: J = 23.9436
- **Mathematical Expression**:
  \[
  z(x) = -6.1 * x + 23.45
  \]

### Model 2: Multiple Features
- **Learning rate (α)**: 0.01
- **Iterations**: 2000
- **Loss**: J = 10.8810
- **Mathematical Expression**:
  \[
  z(X) = X * [-0.51, 1.3, -0.7, -5.1, 0.12, 2.7, 1.1]^T + 23.45
  \]

### Plots of Cost vs Iterations for Varying Learning Rates
Plots were generated to study the relationship between the learning rate and the number of iterations:
- Learning rates tested: [1, 0.1, 0.01, 0.001, 0.0001]
- Observations:
  - Learning rate α = 1 resulted in the cost going to infinity.
  - Lower learning rates showed stable convergence but required more iterations.

### Experiments Without Normalizing the Input
When fitting the linear regression model without normalizing the input data, the loss function diverged to infinity. This demonstrates the importance of normalization in preventing exploding or vanishing gradients and ensuring stable training.

### Scatter Plot of Regression Model
A scatter plot was used to visualize the performance of the model:
- The plot confirmed that less horsepower is indicative of more miles per gallon, though this is a correlation, not causation.
- The model fitted the regression line well, but a non-linear classifier might have performed better due to the distinct curve in the data.

## Conclusion
The project successfully implemented and evaluated linear regression models for predicting car mileage. The analysis highlights the importance of hyperparameter tuning, normalization, and careful evaluation of model performance.

