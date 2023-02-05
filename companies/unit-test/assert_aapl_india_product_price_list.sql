{{ config(tags=['unit-test']) }}

{% call dbt_unit_testing.test ('aapl_india_product_price_list','apple Product Price List') %}
 {% call dbt_unit_testing.mock_source('aapl', 'aapl_product_price_list') %}
     select 1 as pid ,
      'iPhone 13' as model , 
      'From A$1,199' as price,
      'au' as country_code  ,
      'Australia' as country ,
      'East Asia & Pacific' as region  ,
      'High income' as "income group",
      '2022-01-02 21:52:06.630535' as scraped_date 
        union all 
      select 2 as pid ,
      'iPhone 13' as model , 
      'From ₹69900.00‡' as price,
      'in' as country_code  ,
      'India' as country ,
      'South Asia' as region  ,
      'Lower middle income' as "income group" ,
      '2022-01-02 21:52:21.513688' as scraped_date 
  {% endcall %}

  {% call dbt_unit_testing.expect() %}
    select  2 as pid ,
    'iPhone 13' as model , 
    cast('69900.00' as FLOAT) as price_rupee,
    'in' as country_code  ,
    'India' as country ,
    'South Asia' as region  ,
    'Lower middle income' as "income group" ,
    '2022-01-02 21:52:21.513688' as scraped_date,
     CURRENT_TIMESTAMP as created_at
  {% endcall %}

{% endcall %}