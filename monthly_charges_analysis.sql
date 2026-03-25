--  How do monthly charges differ for churned vs non-churned customers?

SELECT 
    ch.churn,
    ROUND(AVG(b.monthlycharges), 2) AS average_monthly_charges,
    MAX(b.monthlycharges) AS maximum_billing_charges,
    MIN(b.monthlycharges) AS minimum_monthly_charges
FROM
    churn_status AS ch
        JOIN
    billing AS b ON b.customerID = ch.customerID
GROUP BY ch.churn;


-- Churned customers pay on average ₹74.44/month vs non-churned customers who pay ₹61.31/month. Higher paying customers are more likely to leave — they expect better service for their money! 🔑
