{{
    config(
        materialized='incremental',
        unique_key='emp_id'
    )
}}

SELECT *
FROM {{ source('raw','MODEL_EMPLOYEE') }}

{% if is_incremental() %}

WHERE emp_id >
(
    SELECT MAX(emp_id)
    FROM {{ this }}
)

{% endif %}