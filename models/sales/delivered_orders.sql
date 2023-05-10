
SELECT
    order_id
    ,customer_id
    ,{{ process_cost('customer_id') }} AS customer_cost
    ,order_purchase_timestamp
    ,order_approved_at
    ,order_delivered_carrier_date
    ,order_delivered_customer_date
    ,order_estimated_delivery_date

FROM {{ source('data_analytics_olist','orders') }}

WHERE order_status = 'delivered'