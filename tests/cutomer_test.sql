SELECT *

FROM {{ ref('delivered_orders') }}

WHERE order_id IS NULL
  -- AND price < 0
