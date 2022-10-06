with payments as (

    select
        orderid as order_id,
        created as order_date,
        status,
        amount

    from dev_kelly.stripe.payment

)

select * from payments