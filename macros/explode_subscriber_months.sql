{% macro explode_subscriber_months(
    model,
    group_by_cols,
    first_month,
    last_month
) -%}
  select
    {% for col in group_by_cols -%}
      {{ model }}.{{ col }},
    {% endfor -%}
    months.date_month
  from {{ model }}
  inner join (
    select calendar_date as date_month
    from {{ ref('dim_dates') }}
    where day_of_month = 1
  ) as months on
    months.date_month >= {{ model }}.{{ first_month }}
    and months.date_month < {{ model }}.{{ last_month }}
{% endmacro %}
