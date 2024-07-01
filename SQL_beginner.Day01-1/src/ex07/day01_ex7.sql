select
    order_date,
    (select
        concat (name, ' (age:', age, ')')
    from
        person
    where person.id = person_order.person_id) as person_information
from
    person_order
order by
    order_date asc, person_information asc;