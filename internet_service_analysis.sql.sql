--  Which internet service type has the highest churn rate?

SELECT 
    s.InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,
    ROUND(SUM(CASE
                WHEN churn = 'Yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS InternetService__churn_rate_percent
FROM
    churn_status AS ch
        JOIN
    services AS s ON s.customerID = ch.customerID
GROUP BY s.InternetService
ORDER BY InternetService__churn_rate_percent DESC;

-- Fiber optic customers churn at 41.89% — nearly 6x higher than customers with no internet (7.43%)! Fiber optic customers may be dissatisfied with the high cost or service quality! 