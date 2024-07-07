insert into person_order
values (
    (select
        max(id)+1
    from
        person_order),
    (select
        id
    from
        person
    where
        person.name = 'Denis'),
    (select
        id
    from
        menu
    where
        menu.pizza_name = 'sicilian pizza'),
    '2022-02-24'
);
insert into person_order
values (
    (select
        max(id)+1
    from
        person_order),
    (select
        id
    from
        person
    where
        person.name = 'Irina'),
    (select
        id
    from
        menu
    where
        menu.pizza_name = 'sicilian pizza'),
    '2022-02-24'
);