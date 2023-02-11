{{
  config(
   tags=["aapl_india_product_price_list"]
    )
}}

select * from {{ ref('aapl_india_product_price_list') }} where price_rupee < 0

