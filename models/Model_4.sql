{{
    config(
        materialized='ephemeral'
    )
}}

SELECT *
FROM ANALYTICS_DB.REPORTING_SCHEMA.MODEL_EMPLOYEE
WHERE SALARY > 50000