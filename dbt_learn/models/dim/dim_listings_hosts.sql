with 
listings as (
    select * from {{ ref('dim_listings') }}
) ,
host as (
    select * from {{ ref('dim_hosts') }}
) 

select 
    l.listing_id,
    l.listing_name,
    l.listing_url,
    l.room_type,
    l.minimum_nights,
    l.price,
    h.host_id,
    h.is_superhost as host_is_superhost,
    l.created_at,
    greatest(l.updated_at,h.updated_at) as updated_at
from listings l
left join host h using(host_id)



