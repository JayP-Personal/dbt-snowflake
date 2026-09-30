{{ 
    config(
        materialized='incremental', 
        unique_key='empid'
    )
}}
select * from {{source('raw','employee_test2')}}

{% if is_incremental() %}

where loadtimestamp >

(
    select max(loadtimestamp)

    from {{ this }}
)

{%endif%}