{% set column_name = 'first_name' %}

SELECT *
FROM {{ ref('dim_customers') }}
WHERE REGEXP_CONTAINS(first_name, r'[^\w]+')
