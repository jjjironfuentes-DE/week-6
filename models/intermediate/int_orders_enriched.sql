
-- Intermediate model: enriched orders
-- Joins orders with customer and product information.
-- Calculates the total value of each order using a reusable macro.
-- One row represents one order.

SELECT
    o.order_id,
    o.customer_id,
    c.customer_name,
    c.city,
    o.product_id,
    p.product_name,
    p.category,
    o.order_date,
    o.quantity,
    o.unit_price,
    {{ calculate_order_total('o.quantity', 'o.unit_price') }} AS order_total,
    o.payment_status

FROM {{ ref('stg_orders') }} AS o

LEFT JOIN {{ ref('stg_customers') }} AS c
    ON o.customer_id = c.customer_id

LEFT JOIN {{ ref('stg_products') }} AS p
    ON o.product_id = p.product_id
