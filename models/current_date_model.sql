SELECT 
    order_id,
    {{ get_current_date() }} AS today_date
from ANALYTICS_DB.REPORTING_SCHEMA.ORDERS

