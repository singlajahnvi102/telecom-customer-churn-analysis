-- Tenure Analysis?

SELECT 
    AVG(Tenure) AS average_tenure,
    MAX(Tenure) AS maximum_tenure,
    MIN(Tenure) AS minimum_analysis
FROM
    churn_status;