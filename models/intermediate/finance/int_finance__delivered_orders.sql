
SELECT
    order_id
    ,customer_id
    ,customer_cost
    ,order_purchase_timestamp
    ,order_approved_at
    ,order_delivered_carrier_date
    ,order_delivered_customer_date
    ,order_estimated_delivery_date

FROM {{ ref('stg_olist__orders') }}

WHERE order_status = 'delivered'