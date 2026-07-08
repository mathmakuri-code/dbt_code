{{
    config(
        materialized='table'
    )
}}

SELECT *
FROM {{ source('raw','MODEL_EMPLOYEE') }}