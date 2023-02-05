{{
  config(
    materialized = 'table',tags=["product_price","aapl_location"]
    )
}}

select
"pid",
"model",
CAST(TRANSLATE(price, '₹‡From','          ') as FLOAT) as price_rupee,
"country_code",
"country",
"region",
"income group",
"scraped_date",
CURRENT_TIMESTAMP as created_at
from {{ source('aapl', 'aapl_product_price_list') }}
where country = 'India'