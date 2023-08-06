with

dates as (
  select * from {{ ref('dim_dates') }}
),

events as (
  select * from {{ ref('fct_events') }}
),

hourly_events as (
  select
    dates.calendar_date,
    coalesce(count(*), 0) as count_events
  from dates
  left join events on dates.calendar_date = date_trunc(day, events.created_at)
  group by dates.calendar_date
),

hourly_events_with_rolling_avg as (
  select
    calendar_date,
    count_events,
    {{
      rolling_average(
        column_name='count_events',
        periods=5,
        order_by='calendar_date'
      )
    }} as count_events_5_day_avg
  from hourly_events
  order by calendar_date
)

select * from hourly_events_with_rolling_avg
