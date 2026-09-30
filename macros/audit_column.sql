{%macro audit_columns()%}
current_timestamp() as loadtime,
'jason' as user
{%endmacro%}