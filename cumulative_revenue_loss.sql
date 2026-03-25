--  What is the cumulative revenue lost due to churn?

select ch.tenure,Round(sum(b.monthlycharges),2) as revenue_lost,Round(sum(sum(b.monthlycharges)) over (order by ch.tenure),2) as cumulative_revenue_lost from churn_status as ch
 join billing as b
 on b.customerID=ch.customerID
 where ch.churn='Yes' 
 group by ch.tenure
 order by ch.tenure;
 
 
 -- The company lost a cumulative $139,130 in monthly revenue due to customer churn! New customers (tenure 1) account for the highest single month loss of $22,115
