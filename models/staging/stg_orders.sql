SELECT
    order_id,
    customer_id,
    product_id,
    order_date,
    quantity,
    unit_price,
    payment_status
FROM {{ source('raw_data', 'orders') }}