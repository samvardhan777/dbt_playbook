{{
  config(
   tags=["aapl_india_product_price_list"]
    )
}}

select pid from {{ ref('aapl_india_product_price_list') }} where country = 'India'
except 
select pid from {{ ref('aapl_product_price_list') }} where country = 'India'
union all 
select pid from {{ ref('aapl_product_price_list') }} where country = 'India'
except 
select pid from {{ ref('aapl_india_product_price_list') }}  where country = 'India'
