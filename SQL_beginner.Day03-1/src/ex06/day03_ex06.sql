select
    menu1.pizza_name,
    (select
        name
    from
        pizzeria
    where
        pizzeria.id = menu1.pizzeria_id) as pizzeria_name_1,
    (select
        name
    from
        pizzeria
    where
        pizzeria.id = menu2.pizzeria_id) as pizzeria_name_2,
    menu1.price
from
    menu as menu1
join menu as menu2 on menu2.price = menu1.price and menu1.pizza_name = menu2.pizza_name and menu1.pizzeria_id > menu2.pizzeria_id
order by 1;