# Image Compression Using Deep Learning Techniques

## Project Overview
This dissertation explores the application of deep learning techniques for image compression, leveraging convolutional neural networks (CNNs). Traditional methods like JPEG have been the cornerstone of image compression, but the rise of AI, specifically deep learning, has introduced new dimensions to this field. This project aims to develop a deep learning-based image compression algorithm and compare its performance with established methods.

## Objective
To design and implement a deep learning model for image compression using convolutional neural networks, and evaluate its performance against traditional image compression standards.

## Key Components

### Data Preprocessing
- **Dataset Used**: RAISE_127 dataset, comprising 8156 RAW images, categorized into:
  - Outdoor photos
  - Indoor photos
  - Landscape photos
  - Nature photos
  - People photos
  - Object photos
  - Building photos
- **Preprocessing Steps**:
  - Converted images to grayscale.
  - Resized images to 180x180 pixels.
  - Normalized pixel values to the range [0, 1].

### Model Architecture
The proposed model consists of two main convolutional neural networks:
1. **Compact Convolutional Neural Network (ComCNN)**:
   - Learns the optimal compact representation of an input image while preserving its structural information.
2. **Reconstruction Convolutional Neural Network (RecCNN)**:
   - Reconstructs the compressed image from the encoded representation.

The workflow involves encoding the output of ComCNN using a standard JPEG encoder before feeding it into RecCNN for reconstruction.

### Training
- **Training Dataset**: 500 randomly selected images from the RAISE_127 dataset.
- **Validation Set**: 10% of the training dataset.
- **Test Set**: Berkeley Segmentation Dataset (BSD300), consisting of 100 JPEG images.
- The training process did not include data augmentations or patch extractions.

### Experimental Procedure
The experimental setup follows the implementation by Feng Jiang et al., with modifications to improve model performance:
- **Learning Rate Adjustments**: Various learning rates and their exponential decay were tested.
- **Model Enhancements**: Added layers such as max pooling to the RecCNN architecture.

### Results
- **Evaluation Metrics**:
  - Peak Signal-to-Noise Ratio (PSNR)
  - Structural Similarity Index (SSIM)

#### Performance on BSD300 Test Set:
- **PSNR**:
  - Average PSNR for the proposed model: **24 dB**
  - Average PSNR for JPEG: **32.75 dB**
- **SSIM**:
  - Average SSIM for the proposed model: **0.74**
  - Average SSIM for JPEG: **0.88**

### Challenges and Difficulties
The performance metrics for the proposed model were lower than anticipated due to several challenges:
- **Training Data Limitations**: Only 500 images were used for training, which may not have been sufficient to capture the variability in image content and structure.
- **Model Complexity**: The relatively simple architecture of the ComCNN and RecCNN may not have been adequate to learn the intricate details necessary for high-quality image reconstruction.
- **Optimization Difficulties**: Finding the optimal hyperparameters for deep learning models is inherently challenging and may require more extensive experimentation and computational resources.
- **Loss Functions**: The choice of loss functions and the balance between different components of the loss may not have been optimal for achieving the best trade-off between compression and reconstruction quality.

### Conclusions
The study confirms that deep learning techniques, particularly CNNs, hold promise for the future of image compression. Although the proposed model did not outperform traditional JPEG compression in terms of PSNR and SSIM, it serves as a foundation for future research aimed at refining and optimizing deep learning approaches for image compression.

## Future Work
Future exploration will include:
- **In-depth study of different neural network models**: Experimenting with various architectures and hyperparameters.
- **Optimization of the presented method**: Improving the current model to enhance its performance and efficiency.
- **Integration with other AI techniques**: Combining convolutional autoencoders and generative adversarial networks (GANs) for superior compression results.

