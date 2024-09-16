SELECT
    person_id, count(*) as count_of_visits
FROM
    person_visits
group by person_id
order by count_of_visits desc, person_id asc;