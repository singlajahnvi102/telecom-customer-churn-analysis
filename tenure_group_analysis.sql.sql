-- Q10. What is the churn rate by tenure group?

with Tenure_Group as(Select churn,customerID,(case when Tenure between 0 and 12 then "New_Customer"
when Tenure between 13 and 24 then 'Mid_Term_Customer'
 when Tenure between 25 and 48 then 'long_term_Customer'
  else 'Loyal_Customer' End)  as Tenure_group  from churn_status)
  
  SELECT 
    Tenure_Group,
    COUNT(customerID) AS Total_customer_id,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customer,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(customerID),
            2) AS tenure_group_churn
FROM
    Tenure_Group
GROUP BY Tenure_group;




-- New customers (0-12 months) churn at 47.68% — highest risk group! Loyal customers (49-72 months) churn at only 9.51% — the longer a customer stays, the more loyal they become! 
  