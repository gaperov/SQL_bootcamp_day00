with visited_by_men as
    (select
        pizzeria.name as pizzeria_name
    from
        pizzeria
    join menu on menu.pizzeria_id = pizzeria.id
    join person_order on person_order.menu_id = menu.id
    join person on person.id = person_order.person_id
    WHERE
        person.gender = 'male'),
    visited_by_women as
    (select
        pizzeria.name as pizzeria_name
    from
        pizzeria
    join menu on menu.pizzeria_id = pizzeria.id
    join person_order on person_order.menu_id = menu.id
    join person on person.id = person_order.person_id
    WHERE
        person.gender = 'female'),
    only_by_men as
    (select
        pizzeria_name
    from
        visited_by_men
    except
        select 
            pizzeria_name
        from
            visited_by_women),
    only_by_women as
    (select
        pizzeria_name
    from
        visited_by_women
    except
        select 
            pizzeria_name
        from
            visited_by_men)
select
    pizzeria_name
from
    only_by_women
union
select
    pizzeria_name
from
    only_by_men
order by 1;