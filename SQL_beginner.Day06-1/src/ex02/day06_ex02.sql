SELECT
    person.name, 
    menu.pizza_name, 
    menu.price, 
    round(menu.price*0.01*(100-person_discounts.discount)) as discount_price,
    pizzeria.name as pizzeria_name
FROM
    person_order
JOIN person on person.id = person_order.person_id
JOIN menu on menu.id = person_order.menu_id
JOIN pizzeria on pizzeria.id = menu.pizzeria_id
JOIN person_discounts on person_discounts.person_id = person.id and person_discounts.pizzeria_id = pizzeria.id
order by 1, 2;