{% macro order_category(amount_column) %}
    CASE 
        WHEN {{ amount_column }} < 100 THEN 'Low'
        WHEN {{ amount_column }} BETWEEN 100 AND 500 THEN 'Medium'
        ELSE 'High'
    END
{% endmacro %}