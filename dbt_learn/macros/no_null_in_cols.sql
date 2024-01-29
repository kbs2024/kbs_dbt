{% macro no_nulls_in_cols(model) %}  
-- Marcro is a jinja template 

    select * from {{model}} where 
    {% for col in adapter.get_columns_in_relation(model) -%} 
    {{col.column}} is null or 
    {% endfor %}
    false  --- To terminate the loop. 
    
{% endmacro %}
