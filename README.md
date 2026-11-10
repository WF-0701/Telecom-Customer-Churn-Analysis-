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
SQL(DuckDB)
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

EDA Finding 2 : Churn vs Contract Type

The bar chart shows that the 2 year contract types have less churn and month to month based consumers tend to churn on a higher level

Business Insight:
The company could invest in more loyalty incentives for month to month consumers or get more incentives for long term commitment plans so the churn rate would improve.

EDA Finding 3: Churn vs Customer Tenure

The analysis suggested that the churn rate is higher for customers whose tenure is less than 25 months.

Business Insight:
The company should look into more engagement programs for these customers and ensure smooth activations to enhance loyalty and in turn reduce churn.

EDA Finding 4: Churn vs Monthly Charges

The analysis suggested that the churn is higher among the customers who pay more. Typically between $55 and $95.

Business Insight:

The company can provide personalized service or exclusive deals to these customers to reduce churn. Also there should be an investigation or a survey on customer satisfaction among these consumers to understand whether its just pricing or overall perceived value is what is causing these consumers to leave. 

EDA Finding 5: Churn vs Payment Method

The analysis suggests that the customers paying through Electronic cheques have significantly higher rate of churn as compared to other payment methods.

Business Insight:

The company could introduce automatic convenient payment methods which may improve churn rate.

SQL Analysis:

The SQL Analysis confirmed what Python analysis revealed. The customers whose tenure is between 0-11 months are more likely to leave the company. As the customers with this tenure are leaving at an alarming rate of 48.5%. SQL Analysis also shows that as the tenure increases customers are less likely to leave.

Business Recommendation based on SQL Analysis:

The company can run follow-ups or surveys for consumers in their first 11 months to gauge an understanding of their satisfaction levels in terms of pricing, coverage or overall experience. This will help pin point what is the driving force for these customers to leave.
