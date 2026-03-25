-- Q8. Which payment method has the highest churn rate?

SELECT 
    b.paymentmethod,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS paymentmethod__churn_rate_percent
FROM
    churn_status AS ch
        JOIN
    billing AS b ON b.customerID = ch.customerID
GROUP BY b.paymentmethod
ORDER BY paymentmethod__churn_rate_percent DESC;

-- Customers paying by Electronic check churn at 45.29% — 3x higher than automatic payment methods! Customers on automatic payments are more loyal because payments happen automatically without hassle! 
