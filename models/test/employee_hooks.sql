{{
    config(
        materialized='table',

        pre_hook="truncate table employee_hooks",

        post_hook = "
            insert into audit_log
            values(
                current_timestamp(),
                'employee_model',
                'success'
            )
        "
    )
}}

select * from emp_test1