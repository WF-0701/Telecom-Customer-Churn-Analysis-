# Telecom-Customer-Churn-Analysis-
Churn analysis using SQL, Python and Power BI 
Overview:
This project covers churn analysis for telecom industry data from Kaggle. Churn is a major struggle for telecom industry. This analysis is to pin point why customers leave and what can be done to retain them.
Objective:
Understanding the reason why customer churn
Perform data cleaning and prepare data for analysis
Conduct EDA to understand data
Identifying patterns and behaviors related to churn
Developing data driven decision making for customer retention
Tools Used:
Python (Numpy, Pandas , Matplotlib)
SQL(PostgreSQL)
Google Colab
Power BI
Dataset:
IBM Telco Customer Churn Dataset.

Source: https://www.kaggle.com/datasets/blastchar/telco-customer-churn
Project Status:
In Progress



Data Cleaning Initial Assesment:
Initial overview of data revealed that the 'TotalCharges' column was an object type which was supposed to be a float. Furthermore it had 11 missing values that needed to be handled . The column was converted to numeric and the missing value was replaced to zero as the tenure associated with these rows was also 0 which explains charges being null.

The duplicate check identified zero duplicated rows in the dataset. Additionally, all 7,043 customer records have unique customer IDs.

EDA Finding 1: Overall Customer Churn Distribution

The analysis shows that approximately 73.46% of customers were retained,
while 26.54% discontinued their services.

Business Insight:
Approximately one in four customers left the company, indicating a
significant customer retention challenge. Further analysis will
investigate which customer segments and service characteristics are
associated with higher churn rates.
