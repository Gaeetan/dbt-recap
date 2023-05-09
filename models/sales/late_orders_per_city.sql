
SELECT
    customers.customer_city
    ,count(*) AS order_count

FROM {{ ref('late_delivered_orders') }} AS orders

JOIN data_analytics_olist.customers AS customers USING(customer_id)

GROUP BY customers.customer_city
