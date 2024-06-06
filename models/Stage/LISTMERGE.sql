{{
    config(
        materialized='table'
    )
}}

select 
--From Listings
L.ID, L.LISTING_URL, L.NAME, L.ROOM_TYPE, L.MINIMUM_NIGHTS, L.HOST_ID, L.PRICE,
--Reviews
R.LISTING_ID, R.DATE, R.REVIEWER_NAME, R.COMMENTS, R.SENTIMENT
from {{ ref('LISTINGS') }} L
inner join
 {{ ref('REVIEWS') }} R
 on l.host_id = r.listing_id
