SELECT *
FROM {{ ref('fct_orders') }}
WHERE order_total < 0