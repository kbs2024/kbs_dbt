/*Singular tests are stored under tests folder and it will be executed on a model*/


select 
    *
from 
    {{ ref('dim_listings') }}
where minimum_nights < 1
