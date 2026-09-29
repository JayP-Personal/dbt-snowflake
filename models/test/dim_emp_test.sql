select 
    id, 
    lower(name) as name, 
    salary, 
    case when (country='United States' or country='US')
        then 'usa'
        else lower(country)
    end as country
from emp_test1