select * from {{ source('dbt_customer', 'raw_listings') }}
