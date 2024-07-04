select
    coalesce(person.name, '-'),person_visits.visit_date, coalesce(pizzeria.name, '-')
from
    person
full outer join
    (SELECT
        *
    FROM
        person_visits
    where visit_date between '2022-01-01' and '2022-01-03') as person_visits
on person_visits.person_id = person.id
full outer join
    pizzeria
on pizzeria.id = person_visits.pizzeria_id
order by 1, 2, 3;