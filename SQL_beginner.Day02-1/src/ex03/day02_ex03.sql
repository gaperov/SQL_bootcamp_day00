with visits as
    (select
        visit_date
    from
        person_visits
    where person_id = 1 or person_id = 2),
    dates as
    (select
        days::date as missing_days
    from generate_series('2022-01-01'::timestamp, '2022-01-10', '1 day') as days)
select
    dates.missing_days
from
    dates
left join
    visits
on visits.visit_date = dates.missing_days
where visits.visit_date is NULL
order by dates.missing_days;