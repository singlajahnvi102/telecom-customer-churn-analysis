-- check Total customerid,total churn customer,percent of churn customer

 SELECT 
    COUNT(customerID) AS total_customers,
    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(customerID),
            2) AS churn_rate_percent
FROM
    churn_status;
    
-- What is the gender distribution and which gender churns more?

SELECT 
    c.gender,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS gender_churn_rate_percent
FROM
    churn_status AS ch
        JOIN
    customers AS c ON c.customerID = ch.customerID
GROUP BY c.gender;

-- Business Insight from this: Even though there are slightly more male customers, females churn slightly more (939 vs 930).
--  But the difference is very small — so gender is not a major factor in churn!


-- Do senior citizen churn more ?

SELECT 
    c.SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS senior_citizen__churn_rate_percent
FROM
    churn_status AS ch
        JOIN
    customers AS c ON c.customerID = ch.customerID
GROUP BY c.SeniorCitizen;

-- Senior citizens churn at 41.68% — almost double the rate of non-senior citizens (23.65%). This is a very important finding! 

-- does having a partner or dependents affect churn rate?


SELECT 
    c.dependents,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS dependents__churn_rate_percent
FROM
    churn_status AS ch
        JOIN
    customers AS c ON c.customerID = ch.customerID
GROUP BY c.dependents;

-- Customers without dependents churn at 31.28% — double the rate of customers with dependents (15.53%). Customers with family responsibilities are more loyal! 

SELECT 
    c.partner,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS partner__churn_rate_percent
FROM
    churn_status AS ch
        JOIN
    customers AS c ON c.customerID = ch.customerID
GROUP BY c.partner;


-- Customers without a partner churn at 32.98% — much higher than customers with a partner (19.72%). Single customers are less loyal!

-- What is the maximum,minimum andaverage tgenure of customers?

SELECT 
    AVG(Tenure) AS average_tenure,
    MAX(Tenure) AS maximum_tenure,
    MIN(Tenure) AS minimum_tenure
FROM
    churn_status;


-- "Tenure is measured in months. Maximum tenure is 72 months (6 years), minimum is 1 month, and average is 32 months (2.7 years)