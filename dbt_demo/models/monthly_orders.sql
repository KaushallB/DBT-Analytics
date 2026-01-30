{{ config(materialized='table') }}

WITH transformed_orders AS (
    SELECT 
        order_id,
        DATE_TRUNC('month', order_date) AS order_month,
        status
    FROM {{ref('staging_orders')}}
),

final AS (
    SELECT 
        order_month,
        COUNT(order_id) AS total_orders
    FROM transformed_orders
    GROUP BY order_month
)

SELECT * FROM final