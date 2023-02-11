{{
  config(
    materialized = 'view',tags=["product_price","aapl_location"]
    )
}}

select *
from {{ source('aapl_location', 'aapl_india_product_price_list') }}
where  model like  '%iPhone%'