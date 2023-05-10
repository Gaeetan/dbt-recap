
SELECT
    order_id
    ,customer_id
    ,order_purchase_timestamp
    ,order_approved_at

FROM {{ ref('int_delivered_orders') }}

WHERE order_estimated_delivery_date < order_delivered_customer_date
