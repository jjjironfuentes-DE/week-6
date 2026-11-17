SELECT
    product_id,
    product_name,
    category,
    supplier_id,
    cost_price,
    selling_price
FROM {{ source('raw_data', 'products') }}