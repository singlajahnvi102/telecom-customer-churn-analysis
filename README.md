#  Telecom Customer Churn Analysis

##  Problem Statement
Customer churn is a big issue in telecom companies. When customers leave, it directly impacts revenue and increases the cost of acquiring new customers.
In this project, I used SQL to analyze telecom customer data and understand why customers are leaving and what can be done to reduce churn.

---

##  Objective
- Understand customer behavior and churn patterns  
- Identify high-risk customers  
- Analyze impact of contracts, services, and payment methods  
- Estimate revenue loss due to churn  
- Suggest practical business recommendations  

---

## 📁 Dataset Overview
- Total Customers: 7,032  
- Features: 21  
- Overall Churn Rate: **26.58%** (around 1 in 4 customers left)

---

## 🏗️ Data Preparation

- Created a database called `telecom_customer`
- Converted raw data into a **normalized structure (3NF)**
- Divided data into 4 tables:
  - customers  
  - services  
  - billing  
  - churn_status  
- Connected tables using `customerID` as primary key  

---

## 🧹 Data Cleaning

- Checked missing values using SQL (`CASE WHEN`)
- Checked duplicates using `GROUP BY` and `HAVING`
- Found that:
  - No missing values  
  - No duplicate customer IDs  

So the dataset was clean and ready for analysis.

---

## 📊 Analysis Questions

### Core Questions
1. Which contract type has the highest churn?  
2. Which internet service has the highest churn?  
3. Do senior citizens churn more?  
4. Does having a partner or dependents affect churn?  
5. Which payment method has the highest churn?  
6. How do monthly charges differ for churned vs non-churned customers?
7. what is overall churn rate?
8. what is gender wise churn distribution? 

### Advanced SQL Questions
7. Churn rate by tenure group (using CTE)  
8. Top high-risk customers (using window functions)  
9. Cumulative revenue loss due to churn  
10. Which service combination leads to higher churn  

---

## 🔥 Key Insights

- Overall churn rate is **26.58%**
- Customers with **month-to-month contracts** churn the most (42.71%)
- **Fiber optic users** have high churn (41.89%)
- **Electronic check users** show highest churn (45.29%)
- Estimated revenue loss is around **$139K per month**

### High-Risk Segments
- Senior citizens have higher churn (41.68%)  
- New customers (less than 1 year) churn the most (47.68%)  
- Customers with higher monthly charges are more likely to leave  

---

## 💡 Recommendations

- Encourage customers to switch to long-term contracts  
- Improve experience for senior citizens (simple billing, better support)  
- Focus more on new customers in the first few months  
- Improve fiber optic service quality  
- Promote auto-pay options to reduce churn  

---

## 🛠️ Tools Used
- SQL (Joins, CTEs, Window Functions)  
- Data Cleaning  
- Exploratory Data Analysis  
- Business Insight Generation  

---

## 🔗 Project Link
👉 [View Full Project](https://github.com/singlajahnvi102/telecom-customer-churn-analysis)
