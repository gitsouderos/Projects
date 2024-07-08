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

## Conclusion
The project effectively preprocesses and analyzes COVID-19 data, providing valuable insights into trends and country performance. The clustering results help identify countries' strengths and weaknesses in managing the pandemic.
