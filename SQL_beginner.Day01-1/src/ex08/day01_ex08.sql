select
    order_date,
    concat (person.name, ' (age:', person.age, ')') as person_information
from
    person_order
natural join
    (select
        id as person_id, name, age
    from person) as person
order by
    order_date asc, person_information asc;