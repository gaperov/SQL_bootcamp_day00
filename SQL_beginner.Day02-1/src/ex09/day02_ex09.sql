with women as
    (select
        name, id
    from
        person
    where
        gender = 'female'),
    orders as
    (select
        person_id
    from
        person_order
    join menu on menu.id = person_order.menu_id
    where
        menu.pizza_name in ('pepperoni pizza', 'cheese pizza')
    group by 
        person_id
    having
        count(distinct menu.pizza_name) = 2)
select
    women.name
from
    women
join orders on orders.person_id = women.id;