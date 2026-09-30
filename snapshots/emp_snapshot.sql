{% snapshot employee_test2_snapshot %}

{{
    config(
        target_schema='DBT_PROJECT_SNAPSHOTS',
        unique_key='EmpId',
        strategy='timestamp',
        updated_at='LoadTimestamp'

    )
}}

select *
from {{ source('raw', 'employee_test2')}}

{% endsnapshot %}