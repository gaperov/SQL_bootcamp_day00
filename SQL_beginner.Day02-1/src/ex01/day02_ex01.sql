SELECT
    days as missing_days
FROM
    (SELECT
        visit_date
    FROM
        person_visits
    WHERE
        person_id = 1 or person_id = 2) as person_visits
right join
    (SELECT
        days::date
    from
        generate_series('2022-01-01'::timestamp, '2022-01-10', '1 day') as days) as dates
on dates.days::date = person_visits.visit_date
where
    person_visits.visit_date is NULL;