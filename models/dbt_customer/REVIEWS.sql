{{
    config(
        materialized='table'
    )
}}
select * from AIRBNB.RAW.RAW_REVIEWS