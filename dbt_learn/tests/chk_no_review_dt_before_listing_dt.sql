--- singular test on a model 

/* checks there is no review date that is submitted before its listing was created */

select *
from {{ ref("dim_listings") }} l
inner join {{ ref("fct_reviews") }} r using (listing_id)
where l.created_at >= r.review_date
