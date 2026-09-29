select 
    id, 
    lower(name) as name, 
    salary, 
    case when (country='United States' or country='US')
        then 'usa'
        else lower(country)
    end as country
from {{ source('raw', 'emp_test1') }}