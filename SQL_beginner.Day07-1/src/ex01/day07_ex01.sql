SELECT
    (SELECT
        name
    FROM
        person
    WHERE
        person.id = person_visits.person_id),
    count(*) as count_of_visits
FROM
    person_visits
join person on person.id = person_visits.person_id
group by person_id
order by count_of_visits desc, person_id asc
limit 4;