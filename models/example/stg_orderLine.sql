WITH stg_orderLine AS (
SELECT 
  productpartNumber, 
  SUM(value) AS total_value
FROM 
  dbt_learn_Test.OrderLine_v4
GROUP BY 
  productpartNumber
ORDER BY 
  total_value DESC
)
Select * from stg_orderLine
