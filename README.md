# Telecom-Customer-Churn-Analysis-
Churn analysis using SQL, Python and Power BI 
Overview:
This project covers churn analysis for telecom industry data from Kaggle. Churn is a major struggle for telecom industry. This analysis is to identify patterns and trends contributing to customer churn, and what can be done to retain them.

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
Completed


Data Cleaning Initial Assesment using Python:
There were total 7,043 rows of data to be analyzed, which were all unique and non null values as 'CustomerId' column was assessed for unique values.
Initial overview of data revealed that the 'TotalCharges' column was an object type which was supposed to be a float. Furthermore it had 11 missing values that needed to be handled . The column was converted to numeric and the missing values were replaced to zero because the tenure associated with these rows was also 0 which explains charges being null.


EDA Finding 1: Overall Customer Churn Distribution

The analysis shows that approximately 73.46% of customers were retained, while 26.54% discontinued their services.

Business Insight:
Approximately one in four customers left the company, indicating a significant customer retention challenge. Further analysis will
investigate which customer segments and service characteristics are associated with higher churn rates.

EDA Finding 2 : Churn vs Contract Type

The bar chart shows that the 2 year contract types have less churn and month to month based consumers tend to churn on a higher level

Business Insight:
The company could invest in more loyalty incentives for month to month consumers or get more incentives for long term commitment plans so the churn rate would improve as customer with long term contracts naturally stay for longer.

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

Python notebook link: 
https://github.com/WF-0701/Telecom-Customer-Churn-Analysis-/blob/main/Notebooks/Customer_churn_analysis(Python).ipynb

SQL Analysis:

After completing the Python analysis, I used DuckDB SQL to investigate customer churn further, particularly across different customer tenure groups.The SQL analysis supported the earlier findings: customers with shorter tenure were more likely to leave.
The tenure segmentation revealed the following churn rates:

Customer Segment and their Churn Rates

New Customer (0–11 months),48.28%
Moderate (12–23 months),29.51%
Intermediate (24–47 months),20.87%
Long-term Customer (48+ months),9.64%

The results show a significant difference between new and long-term customers. Almost half of the new customers in this analysis left the company, compared with fewer than one in ten long-term customers.

Business Recommendation based on SQL Analysis:

The company can run follow-ups or surveys for consumers in their first 11 months to gauge an understanding of their satisfaction levels in terms of pricing, coverage or overall experience. This will help pin point what is the driving force for these customers to leave.

Hex/SQL Notebook link: https://github.com/WF-0701/Telecom-Customer-Churn-Analysis-/blob/main/Notebooks/Churn%20Analysis(Hex%20notebook).ipynb

SQL queries script: https://github.com/WF-0701/Telecom-Customer-Churn-Analysis-/blob/main/SQL/Customer%20Churn%20Analysis.sql


Power BI Dashboard:

I used Power BI to bring the analysis together in an interactive dashboard.

The dashboard includes four key performance indicators:

Total Customers,
Churned Customers,
Retained Customers,
Overall Churn Rate.

It also includes four visualizations covering:

Churn by Contract Type,
Churn Rate by Tenure Segment,
Churn by Payment Method,
Average Monthly Charges by Churn Status.

The dashboard provides a visual summary of the analysis and makes it easier to identify customer groups that may require additional attention.

![Customer Churn Dashboard](dashboard%20for%20git.png)

Conclusion:

Working through this project helped me understand how Python, SQL and Power BI can be used together to investigate a business problem.

One of the biggest takeaways from the analysis was how strongly customer tenure was associated with churn. New customers were considerably more likely to leave than long-term customers, highlighting the importance of customer onboarding and early engagement.

The analysis also showed how contract type, payment method and monthly charges can provide additional insight into customer behaviour.
Ultimately, the goal is not just to identify how many customers are leaving, but to understand where a business can focus its efforts to improve retention.
