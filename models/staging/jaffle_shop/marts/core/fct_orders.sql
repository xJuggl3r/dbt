with payments as (
    select
        order_id,
        sum(amount) as amount
    from {{ ref('stg_payments') }}
    group by 1
)

select
    o.order_id,
    o.customer_id,
    p.amount
from {{ ref('stg_orders') }} o
left join payments p
    on o.order_id = p.order_id