{% macro process_cost(customer_id) %}
   CONCAT({{ customer_id }}, '* 327 + 3')
{% endmacro %}
