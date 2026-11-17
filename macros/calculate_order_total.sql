{% macro calculate_order_total(quantity, unit_price) %}

    {{ quantity }} * {{ unit_price }}

{% endmacro %}