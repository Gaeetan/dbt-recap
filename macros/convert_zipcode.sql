{% macro zip(zipcode) %}
    CASE
        WHEN {{ zipcode }} = 59650 THEN 'Paris'
        ELSE 'Tokyo'
    END
{% endmacro %}
