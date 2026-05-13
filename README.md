# 📊 Customer Churn & Retention Analysis

## 📌 Project Overview
This project focuses on analyzing customer churn behavior and identifying high-risk customers using **SQL and Power BI**. The dashboard provides a comprehensive view of customer retention patterns, revenue impact, and key drivers of churn, enabling data-driven decision-making.

---

## 🎯 Key Objectives

- Analyze overall customer churn and retention trends  
- Identify **high-risk customers** based on tenure and contract type  
- Understand the relationship between **monthly charges, tenure, and churn**  
- Segment customers based on **contract and risk category**  
- Provide actionable insights to improve customer retention  

---

## 📊 Key KPIs in the Dashboard

- **Total Customers:** 7032  
- **Churn Rate:** 26.58%  
- **Revenue Lost:** 139.13K  
- **Average Tenure:** 32.42 months  
- **High-Risk Customers:** 1024  

---

## 📈 Dashboard Insights Covered

- **Churn Distribution (Donut Chart)**  
  Shows proportion of churned vs retained customers  

- **Churn by Tenure Group (Column Chart)**  
  Highlights churn concentration in early customer lifecycle  

- **Churn Rate by Contract & Gender (Bar Chart)**  
  Compares churn behavior across contract types and demographics  

- **Monthly Charges vs Tenure (Scatter Plot)**  
  Reveals relationship between pricing, customer duration, and churn  

- **Top Churned Customers (Table)**  
  Identifies high-value customers who have churned  

- **Risk Category Analysis (Bar Chart)**  
  Compares high-risk vs low-risk customer segments  

- **Segment vs Churn Rate (Matrix)**  
  Displays churn rate across different contract segments  

---

## 🗂️ Dataset Information

This project uses an **Telco Customer Churn Dataset** containing detailed information about customers, tenure, payment methods, contract and monthly charges.  

### Key Features:
- Customer ID  
- Gender  
- Tenure  
- Contract Type  
- Monthly Charges  
- Total Charges  
- Churn (Yes/No)  

---

### ⚠ Disclaimer

This dataset is used for **educational and portfolio demonstration purposes only**. All customer names, locations, and transactions are **synthetic and not related to real individuals or businesses**.

---

## 🧹 Data Cleaning and Transformation

- Handled missing and null values  
- Standardized column names and formats  
- Converted data types (numeric, categorical)  
- Created calculated columns:
  - **Tenure Groups**  
  - **Risk Category (High/Low)**  
- Built DAX measures for KPIs:
  - Churn Rate  
  - High-Risk Customers  
  - Revenue Lost  

---

## 🛠️ Tools and Technologies Used

- **MySQL** → Data import, validation and transformation  
- **Power BI** → Data visualization and dashboard creation  
- **DAX (Data Analysis Expressions)** → Measures and calculated columns  

---

## 🔍 Key Business Insights

- 🔴 Customers with **tenure ≤ 12 months** show highest churn  
- 🔴 **Month-to-month contracts** have the highest churn rate (~85%)  
- 🔴 Customers with **high monthly charges** tend to churn early  
- 🔴 **1024 customers** fall under high-risk category  
- 🔴 Significant **revenue loss (139K)** due to churned customers  

---

## 💡 Business Recommendations

- Focus on **early customer engagement (first 6–12 months)**  
- Encourage **long-term contracts** through discounts or incentives  
- Optimize pricing for **high monthly charge customers**  
- Target **high-risk customers** with retention campaigns  
- Provide personalized offers to **high-value customers**  

---

## 📸 Dashboard Preview

![Dashboard](Images/dashboard.png)

---

## 🚀 Project Summary

> This project demonstrates end-to-end data analysis from SQL data preparation to interactive Power BI dashboarding with business-driven insights.
---

## 👩‍💻 Author

**Neha Singh**  
Business Analyst  

---

