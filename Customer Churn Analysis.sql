Customer Churn Analysis:

1.Basic query:
To understand the data structure and if it loaded correctly.

select * from "Telco_Customer_Churn_Cleaned.csv" Limit 10;

2.Overall Customer Churn calculation:
To get an understanding of the customers retained, left and and what rate are they leaving.

Select 
 count(*) as total_customers,

SUM(CASE
    WHEN Churn = True 
    THEN 1
    ELSE 0
    END) as churned_customers,

SUM(CASE
    WHEN Churn = FALSE
    THEN 1
    ELSE 0
    END) as retained_customers,

ROUND(
    100.0 * SUM(CASE
            WHEN Churn = TRUE THEN 1
            ELSE 0
        END) / COUNT(*), 2
    ) AS churn_rate_percentage

FROM
 "Telco_Customer_Churn_Cleaned.csv";

3. Customer Churn by each Contract Type:
To find if contract types have any impact on customers leaving or staying.

SELECT 
 Contract,
 SUM(Case
     WHEN
     Churn = TRUE
     THEN 1
     ELSE 0
     END) as churn_by_contract,

SUM(CASE
    WHEN
    Churn = FALSE
    THEN 1
    ELSE 0
    END) as retain_by_contract,


FROM
"Telco_Customer_Churn_Cleaned.csv"
Group by Contract
;


4.Churn rate by Contract Type:
To understand at what rate the customers are leaving based on their contract types.

WITH churn_data As
(SELECT 
 Contract,
 SUM(Case
     WHEN
     Churn = TRUE
     THEN 1
     ELSE 0
     END) as churn_contract,

SUM(CASE
    WHEN
    Churn = FALSE
    THEN 1
    ELSE 0
    END) as retain_contract,


FROM
"Telco_Customer_Churn_Cleaned.csv"
Group by Contract
)

SELECT
 Contract,
 churn_contract,
 retain_contract,
 (churn_contract*100.0)/(churn_contract+retain_contract)as Churn_rate,
 Round(Churn_rate,2)as rounded_churn
FROM
 churn_data
ORDER BY
 rounded_churn desc;

5.Churn by Monthly Charges:
To understand if higher monthly charges are contributing factor to churn.

SELECT
    COUNT(*) AS total_customers,
    CASE
        WHEN Churn = TRUE THEN 'Yes'
        ELSE 'No'
    END AS Churn,
    ROUND(AVG(MonthlyCharges), 2) AS AverageMonthlyCharges
FROM "Telco_Customer_Churn_Cleaned.csv"
GROUP BY Churn;

6.Churn and Payment Method:
To understand what type of payment methods are being used by churning customers.

WITH Churn_data AS(
SELECT
 Count(*)as total_customers,
 PaymentMethod,
SUM(CASE 
 WHEN Churn = TRUE THEN 1
 ELSE 0
 END) as Churned_Customers,
SUM(CASE 
 WHEN Churn = FALSE THEN 1
 ELSE 0
 END) as Retained_Customers
FROM "Telco_Customer_Churn_Cleaned.csv"
GROUP BY
 PaymentMethod)

SELECT
 PaymentMethod,
 Churned_Customers,
 Retained_Customers,
 ROUND((Churned_Customers*100.0)/(Churned_Customers + Retained_Customers),2)as Churn_rate
 FROM 
 Churn_data
ORDER BY 
 Churn_rate DESC;

7.Churn by Tenure Categories:
Created customer tenure segments to categorize the customers into different tenure and understand churn rate related to each category.

WITH category_data as(
SELECT
    tenure,
    customerID,
    Churn,
    CASE
        WHEN tenure BETWEEN 0 AND 11 THEN 'New Customer'
        WHEN tenure BETWEEN 12 AND 23 THEN 'Moderate'
        WHEN tenure BETWEEN 24 AND 47 THEN 'Intermediate'
        ELSE 'Long-term Customer'
    END AS customer_category
FROM "Telco_Customer_Churn_Cleaned.csv")

SELECT
   customer_category,
   SUM(CASE 
       WHEN Churn = TRUE THEN 1
       ELSE 0
       END) as Churned_CustomersTenure,
   SUM(CASE 
       WHEN Churn = FALSE THEN 1
       ELSE 0
       END) as Retained_CustomersTenure,
    ROUND((Churned_CustomersTenure*100.0)/(Churned_CustomersTenure + Retained_CustomersTenure),2)as Churn_rate
FROM 
   category_data
GROUP BY 
   customer_category
ORDER BY Churn_rate DESC;
