# Data Engineering Project: Profanity in Reddit Posts and Comments

## Project Overview
This project explores the intersection of computational linguistics, social media analytics, and data engineering. It focuses on analyzing user-generated content on Reddit to understand the prevalence and context of profanity. The project employs a robust system architecture to handle large-scale data processing efficiently.

## Authors
- Erik Larsson
- Syed Muhammad Hasan
- Georgios Tsouderos
- Chamal Mihiranga Devasingha
- Zezheng Zhang

## Date
March 2024

## Abstract
The project aims to analyze profanity usage in Reddit posts and comments. It leverages Docker Swarm for container management, MongoDB for data storage, and Apache Spark for distributed data processing. The insights gained contribute to a deeper understanding of online communities and their language use.

## Background
Profanity is often viewed negatively in everyday and professional settings. However, its usage varies across different communities, such as gaming communities. This project investigates the prevalence of profanity in various Reddit communities, using the WebWebis-TLDR-17 Corpus, which contains over 3.8 million preprocessed Reddit posts.

## System Architecture
The system architecture for this project includes the following components:
- **Data Storage**: MongoDB is used due to its fault tolerance, ease of setup, and flexible schema.
- **Data Processing**: Apache Spark is utilized for its in-memory processing and ability to handle large datasets. PySpark, a Python API for Spark, is employed to facilitate data analysis.
- **Container Management**: Docker is used to manage the distributed architecture, with each service (MongoDB, Spark, Jupyter Notebook) running as a container. Docker Swarm manages load balancing and task distribution among worker nodes.

### MultiNode Cluster Architecture
A cluster of 5 nodes, each with 32 vCPUs and 16GB memory, was set up to handle the data processing tasks. Docker Compose was used to orchestrate the services, ensuring that Jupyter Notebooks, Spark Master UI, and MongoDB Client were accessible.

## Experimental Procedure

### Strong Scalability Experiment
Strong scalability was tested by running the experiment on the entire dataset and varying the number of workers while keeping the number of cores per worker fixed. The results are summarized in the table below:

| NumCores/Worker | NumWorkers | Duration (min) |
|-----------------|------------|----------------|
| 5               | 16         | 5.8            |
| 5               | 8          | 3.8            |
| 5               | 4          | 4.5            |
| 5               | 2          | 2.0            |
| 5               | 1          | 1.6            |

### Weak Scalability Experiment
Weak scalability was evaluated by increasing the data size proportionally with the number of workers. The results are shown in the table below:

| NumCores/Worker | NumWorkers | Size of Data | Duration (min) |
|-----------------|------------|--------------|----------------|
| 1               | 16         | 160K         | 1.6            |
| 2               | 8          | 80K          | 2.95           |
| 4               | 4          | 40K          | 1.4            |
| 8               | 2          | 20K          | 1.4            |
| 16              | 1          | 10K          | 0.983          |

## Results
The experiments revealed the following:
- **Strong Scalability**: Increasing the number of Spark workers did not always result in better performance due to overheads in managing distributed tasks and network limitations.
- **Weak Scalability**: There were indications of weak scalability, but overheads in Spark's task management limited performance gains.

### Output Example
The program successfully censored profanity by replacing inappropriate words with asterisks. However, summarizing profanity usage by subreddit proved computationally expensive, leading to high time complexity and failed experiments.

## Discussion

### Challenges and Caveats
Several issues were encountered:
- **Reduction and Sorting**: Operations involving `reduceByKey` and `sortBy` caused crashes, even with reduced data sizes and optimized configurations.
- **Resource Limitations**: Despite the robust infrastructure, handling large-scale reductions and sorting in Spark was challenging due to network bandwidth and CPU constraints.

## Conclusion
The system did not scale well for summarizing total profanity by subreddit. Simpler operations, like censoring profanity, showed better performance. Further optimization is required for complex tasks. The project demonstrates the potential for analyzing large datasets with Spark and MongoDB, but also highlights the challenges in achieving strong and weak scalability.
