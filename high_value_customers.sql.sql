-- Who are the top 10 high risk churned customers by monthly charges?

select b.customerID,b.monthlycharges,Rank() over(order by monthlycharges desc) as high_risk_churn_customer
 from billing as b 
 join churn_status as ch
 on b.customerID=ch.customerID
 where churn='Yes'
 group by b.customerID 
 order by b.monthlycharges desc
 limit 10;