-- Variables
-- {% set salary=50000 %}

-- -- if else endif
-- {% if salary>25000%}
-- select 'High salary'
-- {%else%}
-- select 'Low salary'
-- {%endif%}

-- for in endfor and loop.last

-- {%set columns = ['id','name','salary','country']%}
-- select
-- {%for col in columns%}
-- {{col}}
-- {%if not loop.last%}
-- ,
-- {%endif%}
-- {%endfor%}
-- from table

-- dbt inbuilt object

-- 1. target

-- select '{{target.database}}','{{target.schema}}'

-- 2. this - returns db, schema, model

-- select '{{this}}'

-- 3. variables from dbt_project.yml

select
{{var('country')}} as country