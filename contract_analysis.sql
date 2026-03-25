-- Q6. Which contract type has the highest churn rate?

SELECT 
    b.contract,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS contract__churn_rate_percent
FROM
    churn_status AS ch
        JOIN
    billing AS b ON ch.customerID = b.customerID
GROUP BY b.contract
ORDER BY contract__churn_rate_percent DESC;

-- Month-to-month customers churn at 42.71% — 15x higher than two year contract customers (2.85%)! Longer contracts = much higher loyalty! 🔑 This is the biggest finding in the whole project!
