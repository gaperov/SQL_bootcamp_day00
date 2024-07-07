with menus AS
    (select
        *
    from
        menu
    WHERE id in (SELECT
                    id
                FROM
                    menu
                except
                select
                    menu_id
                FROM
                    person_order))
select
    menus.pizza_name,
    menus.price,
    (select
        name
    from
        pizzeria
    WHERE
        pizzeria.id = menus.pizzeria_id) as pizzeria_name
from
    menus
order by 1, 2, 3;