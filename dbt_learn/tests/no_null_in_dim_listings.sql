--- call the marco against the table to check columns nullability 
--- no_nulls_in_cols is the macro name and dim_listings is the model name

{{no_nulls_in_cols(ref('dim_listings'))}}