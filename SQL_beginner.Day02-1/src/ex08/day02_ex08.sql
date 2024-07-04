select
    name
from
    person
join person_order on person_order.person_id = person.id
join menu on menu.id = person_order.menu_id
where
    person.gender = 'male' 
    and 
    (menu.pizza_name = 'pepperoni pizza' or menu.pizza_name = 'mushroom pizza')
    and
    (person.address = 'Moscow' or person.address = 'Samara')
order by name desc;