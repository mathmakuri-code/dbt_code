SELECT 
    order_id,
    CUSTOMER_NAME,
    amount,
    {{ order_category('amount') }} AS order_type
FROM ANALYTICS_DB.REPORTING_SCHEMA.ORDERS