{{ config(materialized='table', alias='emp_new_info') }}

select * from {{ ref('dim_emp_test')}}

--tags 