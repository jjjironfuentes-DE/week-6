
-- Final fact model: orders
-- Combines enriched order data for analytical reporting.
-- One row represents one order.

SELECT
    order_id,
    customer_id,
    customer_name,
    city,
    product_id,
    product_name,
    category,
    order_date,
    quantity,
    unit_price,
    order_total,
    payment_status

FROM {{ ref('int_orders_enriched') }}
