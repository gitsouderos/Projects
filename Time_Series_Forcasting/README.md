# Data Mining Implementation Project 2023

## Project Overview
This project utilizes Python to analyze COVID-19 data, focusing on preprocessing, analyzing trends, and clustering countries based on their performance in handling the virus. The project was implemented using Google Colab for an interactive coding environment.

## Objective
To preprocess COVID-19 data, analyze trends, and cluster countries based on positivity rate, mortality rate, and cases per capita using K-means clustering.

## Key Observations

### Data Preprocessing
- **Handling Missing Values**: Filled missing 'Daily tests' values with the average of the previous four days.
- **Cumulative to Daily Counts**: Converted cumulative 'Deaths' and 'Cases' to daily counts.

### Analysis
- **Trend Analysis**:
  - **Daily Trends**: High demand for COVID-19 tests observed during specific periods.
  - **Correlation**: Significant correlations found between 'Daily tests', 'Cases', and 'Deaths'.
- **Country Statistics**:
  - **Average Statistics**: Provided insights into the average number of tests, cases, and deaths per country.
  - **Correlation Matrix**: Highlighted strong correlations between various features.

### Clustering
- **K-means Clustering**: Countries were clustered into four groups based on their COVID-19 statistics:
  - **Cluster 0**: Countries with moderate cases and low positivity rates.
  - **Cluster 1**: Countries with low mortality and positivity rates.
  - **Cluster 2**: Algeria, with high positivity and mortality rates.
  - **Cluster 3**: Countries with high mortality rates relative to their positivity rates.

### Observations on Clusters
- **Cluster 1**: Low mortality and positivity rates, indicating good performance in handling the virus.
- **Cluster 0**: Moderate cases but low positivity, showing effective testing and containment.
- **Cluster 3**: High mortality despite lower case numbers, indicating challenges in medical response.
- **Cluster 2 (Algeria)**: High positivity and mortality rates, highlighting severe impacts and inadequate testing.

### Predicting Positivity Rate in Greece

#### Methods
Support Vector Machines (SVMs) were used to predict the COVID-19 positivity rate in Greece for three days after the analysis. The SVMs were trained using a grid search to find the best parameters, including the kernel type, regularization parameter (C), gamma, and epsilon.

#### Implementation Details
1. **Data Preparation**: The dataset was preprocessed to include only the relevant features for Greece. Missing 'Daily tests' values were filled, and the 'Positivity Rate' was calculated.
2. **Feature Engineering**: Lagged features of the 'Positivity Rate' were created to use previous days' positivity rates as predictors for future values.
3. **Model Training**: The SVM model was trained using grid search to optimize hyperparameters:
   - **Kernel types**: RBF, polynomial, and linear.
   - **C values**: 0.1, 1, 10, 100.
   - **Gamma values**: 0.1, 1, 10, 100.
   - **Epsilon values**: 0.1, 0.2, 0.3, 0.4, 0.5.
4. **Evaluation**: The model was evaluated using Mean Squared Error (MSE) on both training and test datasets.

#### Results
- **Train MSE**: 0.0029
- **Test MSE**: 0.0050

The results indicate that the SVM model performed well on the training data but had some difficulty accurately predicting on the test data. The relatively low MSE suggests the model is effective, though there are challenges in predicting sudden changes in the positivity rate.

## Conclusion
The project effectively preprocesses and analyzes COVID-19 data, providing valuable insights into trends and country performance. The clustering results help identify countries' strengths and weaknesses in managing the pandemic. The SVM model's prediction of the positivity rate in Greece demonstrates its utility, despite some limitations in handling abrupt changes.
