{% snapshot employee_snapshot %}

{{
    config(
        target_schema='DBT_MANI',
        unique_key='EMP_ID',

        strategy='check',

        check_cols=['EMP_NAME','DEPT','SALARY']
    )
}}

SELECT *
FROM ANALYTICS_DB.DBT_SCHEMA.EMPLOYEE

{% endsnapshot %}