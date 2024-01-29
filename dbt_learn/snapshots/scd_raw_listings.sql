/*-snapshots are used to handle slowly changing dimensions,
There are two strategies used in snapshot 1. timestamp, 2. change 
*/
{% snapshot scd_raw_listings %}
    {{
        config(
            target_schema='raw',
            unique_key='id',
            strategy='timestamp',
            updated_at='updated_at',
            invalidate_hard_deletes=True            
        )
    }}

    select * from {{ source('airbnb', 'listings') }}
 {% endsnapshot %}