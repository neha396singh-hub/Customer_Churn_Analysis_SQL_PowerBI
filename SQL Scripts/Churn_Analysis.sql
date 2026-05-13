Churn Analysis---

---1.Overall Churn Rate---
SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate_Percentage
FROM customers;

---2.Churn by Contract Type---
SELECT 
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY Contract
ORDER BY Churn_Rate DESC;

---3.Revenue Lost Due to Churn---
SELECT 
    ROUND(SUM(Monthly_Charges), 2) AS Revenue_Lost
FROM customers
WHERE Churn = 'Yes';

---4.Churn by Tenure Group---
SELECT 
    CASE 
        WHEN Tenure <= 12 THEN '0-12 Months'
        WHEN Tenure BETWEEN 13 AND 24 THEN '13-24 Months'
        ELSE '25+ Months'
    END AS Tenure_Group,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY Tenure_Group
ORDER BY Churn_Rate DESC;

---5.High-Risk Customer Segment---
(A) View High-Risk Customers---
SELECT *
FROM customers
WHERE Contract = 'Month-to-month'
  AND Tenure <= 12
  AND Churn = 'Yes';

(B) Count High-Risk Customers---
SELECT 
    COUNT(*) AS High_Risk_Customers
FROM customers
WHERE Contract = 'Month-to-month'
  AND Tenure <= 12
  AND Churn = 'Yes';

(C) High-Risk Segment with churn rate---
SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
WHERE Contract = 'Month-to-month'
  AND Tenure <= 12;
  
  