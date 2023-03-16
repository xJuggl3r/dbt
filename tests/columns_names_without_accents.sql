{% set column_name = 'first_name' %}

SELECT *
FROM dim_customers
{# {{ ref('dim_customers') }} #}
WHERE {{ column_name }} ~ '[^[:alnum:]]'
