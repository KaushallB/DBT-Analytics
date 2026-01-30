{{ config(materialized='table') }}

{% set statuses = ['placed', 'shipped', 'completed', 'return_pending', 'returned'] %}

WITH transformed_orders AS (
    SELECT 
        order_id,
        DATE_TRUNC('month', order_date) AS order_month,
        status
    FROM {{ref('staging_orders')}}
),

final_new AS (
    SELECT 
        order_month,
        {% for status in statuses %}
            COUNT(
                CASE WHEN status = '{{ status }}'
                THEN order_id
                END
            ) AS {{ status }}_count{% if not loop.last %},{% endif %}

        {% endfor %}
    FROM transformed_orders
    GROUP BY order_month
    ORDER BY order_month
)

SELECT * FROM final_new