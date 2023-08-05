{% macro rolling_average(column_name, periods, partition_by=None, order_by=None) -%}
  avg({{ column_name }}) over (
    {% if partition_by -%}
      partition by {{ partition_by }}
    {% endif -%}
    {% if order_by -%}
      order by {{ order_by }}
    {% endif -%}
    rows between {{ periods }} preceding and current row
  )
{% endmacro %}
