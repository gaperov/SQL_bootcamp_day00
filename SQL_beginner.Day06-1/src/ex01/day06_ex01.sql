WITH number_of_orders as
    (SELECT
        person_order.person_id, menu.pizzeria_id, count(*) as count
    FROM
        person_order
    JOIN
        menu on menu.id = person_order.menu_id
    group BY
        person_order.person_id, menu.pizzeria_id
    ),
    discount AS
    (SELECT
        person_id, pizzeria_id,
        (CASE
            when count = 1
                then 10.5
            when count = 2
                then 22
            else
                30
            end) as discount
    from
        number_of_orders)
insert into person_discounts (id, person_id, pizzeria_id, discount)
select
    row_number() over() as id, person_id, pizzeria_id, discount
from
    discount;