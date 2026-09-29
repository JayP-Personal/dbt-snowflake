{{ config(tags=['finance']) }}

select * from {{ ref('dim_emp_test')}}