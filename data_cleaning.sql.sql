use telecom_customer;
select SUM(CASE when customerID is null THEN 1 else 0 END) as null_CustomerID,
SUM(CASE when gender is null THEN 1 else 0 END) as null_gender,
SUM(CASE when SeniorCitizen is null THEN 1 else 0 END) as null_SeniorCitizen,
SUM(CASE when Partner is null THEN 1 else 0 END) as null_Partner,
SUM(CASE when Dependents is null THEN 1 else 0 END) as null_Dependents
from customers;

-- Check null values of services table

select SUM(CASE when customerID is null THEN 1 else 0 END) as null_CustomerID,
SUM(CASE when PhoneService is null THEN 1 else 0 END) as null_PhoneService,
SUM(CASE when Multiplelines is null THEN 1 else 0 END) as null_Multiplelines,
SUM(CASE when OnlineSecurity is null THEN 1 else 0 END) as null_OnlineSecurity,
SUM(CASE when onlineBackup is null THEN 1 else 0 END) as null_onlineBackup,
SUM(CASE when DeviceProtection is null THEN 1 else 0 END) as null_DeviceProtection,
SUM(CASE when TechSupport is null THEN 1 else 0 END) as null_TechSupport,
SUM(CASE when StreamingTV is null THEN 1 else 0 END) as null_StreamingTV,
SUM(CASE when StreamingMovies  is null THEN 1 else 0 END) as null_StreamingMovies
from services;

-- check null values of billing

select SUM(CASE when customerID is null THEN 1 else 0 END) as null_CustomerID,
SUM(CASE when  Contract is null THEN 1 else 0 END) as null_Contract,
SUM(CASE when PaperlessBilling is null THEN 1 else 0 END) as null_PaperlessBilling,
SUM(CASE when PaymentMethod is null THEN 1 else 0 END) as null_PaymentMethod,
SUM(CASE when MonthlyCharges is null THEN 1 else 0 END) as null_MonthlyCharges,
SUM(CASE when TotalCharges is null THEN 1 else 0 END) as null_TotalCharges
from billing;

-- check null values of churn status

select SUM(CASE when customerID is null THEN 1 else 0 END) as null_CustomerID,
SUM(CASE when  tenure is null THEN 1 else 0 END) as null_tenure,
SUM(CASE when churn is null THEN 1 else 0 END) as null_Churn
from churn_status;

