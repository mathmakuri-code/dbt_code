{{ config(materialized='view') }}

SELECT *
FROM {{ source('raw','MODEL_EMPLOYEE') }}