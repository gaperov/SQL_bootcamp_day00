SELECT DISTINCT
    person.name
FROM
    person_order
join person on person.id = person_order.person_id
order by 1;