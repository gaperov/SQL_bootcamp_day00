with visited_by_men as
    (select
        pizzeria.name as pizzeria_name
    from
        pizzeria
    join person_visits on person_visits.pizzeria_id = pizzeria.id
    join person on person.id = person_visits.person_id
    WHERE
        person.gender = 'male'),
    visited_by_women as
    (select
        pizzeria.name as pizzeria_name
    from
        pizzeria
    join person_visits on person_visits.pizzeria_id = pizzeria.id
    join person on person.id = person_visits.person_id
    WHERE
        person.gender = 'female'),
    more_by_men as
    (select
        pizzeria_name
    from
        visited_by_men
    except all
        select 
            pizzeria_name
        from
            visited_by_women),
    more_by_women as
    (select
        pizzeria_name
    from
        visited_by_women
    except all
        select 
            pizzeria_name
        from
            visited_by_men)
select
    pizzeria_name
from
    more_by_women
union all
select
    pizzeria_name
from
    more_by_men
order by 1;