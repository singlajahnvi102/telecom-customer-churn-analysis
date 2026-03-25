create database telecom_customer;
use telecom_customer;
RENAME TABLE `wa_fn-usec_-telco-customer-churn`
TO customer_churn;
CREATE TABLE customers (
    customerID VARCHAR(20) PRIMARY KEY,
    Gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5)
);
CREATE TABLE services (
    customerID VARCHAR(20) PRIMARY KEY,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    FOREIGN KEY (customerID)
        REFERENCES customers (customerID)
);
CREATE TABLE billing (
    customerID VARCHAR(20) PRIMARY KEY,
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(20),
    PaymentMethod VARCHAR(20),
    MonthlyCharges DECIMAL(10 , 2 ),
    TotalCharges DOUBLE,
    FOREIGN KEY (customerID)
        REFERENCES customers (customerID)
);
insert into customers
select customerID,gender,SeniorCitizen,Partner,Dependents from customer_churn;

insert into services
select  customerID, PhoneService, MultipleLines, InternetService, OnlineSecurity, onlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies 
from customer_churn;

ALTER TABLE billing 
modify PaymentMethod VARCHAR(50);

INSERT INTO billing
SELECT customerID, Contract,PaperlessBilling, PaymentMethod, MonthlyCharges, TotalCharges
from customer_churn;

INSERT INTO churn_status 
select customerID,Tenure,Churn from customer_churn;




