{{
    config(
        materialized='table'
    )
}}

select c.FirstName,
       c.LastName,
       soh.SalesOrderID
from {{ref('stg_adventureworks_customers')}} as c 
left join {{ref("stg_adventureworkslt_sales_order_header")}} as soh on soh.CustomerID = c.CustomerID