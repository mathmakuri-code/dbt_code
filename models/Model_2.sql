{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM ANALYTICS_DB.DBT_SCHEMA.MODEL_EMPLOYEE