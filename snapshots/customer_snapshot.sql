{% snapshot customer_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='customer_id',
        strategy='check',
        check_cols=['customer_name', 'email', 'city']
    )
}}

SELECT
    customer_id,
    customer_name,
    email,
    city,
    signup_date
FROM {{ source('raw_data', 'customers') }}

{% endsnapshot %}