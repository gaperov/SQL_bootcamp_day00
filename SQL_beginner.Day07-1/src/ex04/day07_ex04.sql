SELECT
    person.name, count(person_visits.pizzeria_id) as count_of_visits
FROM
    person_visits
join person on person.id = person_visits.person_id
group by person.name
having count(person_visits.pizzeria_id) > 3;