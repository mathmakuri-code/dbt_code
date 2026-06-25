{{
    config(
        materialized='ephemeral'
    )
}}

SELECT *
FROM ANALYTICS_DB.DBT_SCHEMA.MODEL_EMPLOYEE
WHERE SALARY > 50000