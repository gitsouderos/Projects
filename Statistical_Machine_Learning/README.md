# Statistical Machine Learning Project

## Authors
- Giorgos Tsouderos
- Vencel David Koczka
- Aiman Baig
- Tomas Grahn

## Date
March 16, 2024

## Abstract
The goal of this project is to predict increased bike demand using feature engineering and machine learning models. Four models were trained and optimized: logistic regression, quadratic discriminant analysis, K-nearest neighbors, and random forest. The quadratic discriminant analysis model proved to be the best with an F-Beta score (β=1.5) of 0.5767 on a hold-out dataset.

## Introduction
Capital Bikeshare is a 24-hour public bicycle-sharing system. The District Department of Transportation wants to predict if there will be an increased demand for bikes at certain hours to adjust bike availability accordingly. This project explores data, applies feature engineering, and evaluates four machine learning models to predict bike demand increases.

## Data Analysis
### Numerical and Categorical Features
- **Categorical:** Hour of day, Day of week, Month, Holiday, Weekday, Summertime, Snow, Increase stock.
- **Numerical:** Temperature, Dew, Humidity, Precipitation, Snow depth, Wind speed, Cloud cover, Visibility.

### Trends in Time
- **Daily:** High demand from 8am to 2pm and 3pm to 7pm.
- **Weekly:** Slight peak on Saturday and Sunday.
- **Monthly:** Highest demand in April, June, and September; lowest in January, February, and December.

### Weekdays & Holidays
- Slightly more demand on weekends.
- No significant difference between holiday and non-holiday demand.

### Trends for Weather
- No correlation with snow.
- Higher demand at temperatures above 25 degrees.

### Basic Analysis and Naive Classifier
- Data is 82% low demand and 18% high demand.
- A naive classifier predicting low demand would have an accuracy of 82% but an F-Beta score of 0.

### Feature Engineering
- Removed features: Snow, Holiday, Snow depth, Precipitation, Dew.
- Added features: Rush hour (3pm to 7pm), Good temperature (above 25 degrees).

## Implementation of Methods
### Logistic Regression
- Trained using grid search and cross-validation.
- Achieved accuracy of 0.8469 but low recall and F-Beta score.

### Discriminant Analysis: QDA
- Quadratic discriminant analysis performed best, especially in recall.
- Achieved F-Beta score of 0.7049 without shrinkage.

### K-Nearest Neighbor
- Minkowski distance used with k=2.
- Achieved F-Beta score of 0.4745.

### Tree-Based Methods
- Random forest performed best among tree-based methods.
- Achieved F-Beta score of 0.5366 with optimal hyperparameters.

## Conclusion
- The QDA method was chosen for production due to its high F-Beta score.
- Random forest is recommended for higher precision and accuracy needs.
- Further improvements can be made using neural networks and more feature engineering.

## Appendix
You can find more detailed information in the pdf file.
