select
    menu.pizza_name, pizzeria.name as pizzeria_name
from
    person_order
join
    menu on menu.id = person_order.menu_id
join
    pizzeria on pizzeria.id = menu.pizzeria_id
where
    person_id = 4 or person_id = 1
order by 1, 2;