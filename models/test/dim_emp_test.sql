select 
    id, 
    lower(name) as name, 
    salary, 
    case when (country='United States' or country='US')
        then 'usa'
        else lower(country)
    end as country,
    {{dbt_utils.generate_surrogate_key(['id','name'])}} as surrogate_key,
    {{audit_columns()}}
from {{ source('raw', 'emp_test1') }}