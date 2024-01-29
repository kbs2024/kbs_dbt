/* custom generic test macro , once marco is defined use it in schema.yml file against the table to check for duplicates,
for example: check duplicates in dim_listings by listing_id 
*/

{% test chk_duplicates(model, column_name) %}

    select count(*),{{column_name}}
    from {{model}}
    group by {{column_name}}
    having count(*)> 1

{% endtest %}