
SELECT
    customer_id
    ,customer_unique_id
    ,customer_zip_code_prefix
    ,{{ zip('customer_zip_code_prefix') }} AS city_name
    ,customer_city
    ,customer_state

FROM {{ source('data_analytics_olist','customers')}}

WHERE
    customer_zip_code_prefix IN (59650, 63430)
