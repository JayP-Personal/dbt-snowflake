{% snapshot employee_check_snapshot %}

{{
    config(
        target_schema='DBT_PROJECT_SNAPSHOTS',
        unique_key='id',
        strategy='check',
        check_cols=['department','salary']
    )
}}

select *
from {{ source('raw', 'emp_test1')}}

{% endsnapshot %}