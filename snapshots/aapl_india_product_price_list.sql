{% snapshot aapl_india_product_price_list_snapshot %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='pid',
          check_cols = 'all',
          invalidate_hard_deletes=True
        )
    }}

    select * from {{ ref('aapl_india_product_price_list') }}

{% endsnapshot %}