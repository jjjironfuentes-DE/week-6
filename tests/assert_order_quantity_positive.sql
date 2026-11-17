SELECT *
FROM {{ ref('fct_orders') }}
WHERE quantity <= 0