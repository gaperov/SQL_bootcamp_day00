select
    pizzeria.name as pizzeria_name
from
    person_visits
join pizzeria on pizzeria.id = person_visits.pizzeria_id
join menu on menu.pizzeria_id = pizzeria.id
where 
    person_visits.visit_date = '2022-01-08' and person_id = 9 and menu.price < 800;