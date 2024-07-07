insert into person_visits
values (
    (select
        max(id)+1
    from
        person_visits),
    (select
        id
    from
        person
    where
        person.name = 'Denis'),
    (select
        id
    from
        pizzeria
    where
        pizzeria.name = 'Dominos'),
    '2022-02-24'
);
insert into person_visits
values (
    (select
        max(id)+1
    from
        person_visits),
    (select
        id
    from
        person
    where
        person.name = 'Irina'),
    (select
        id
    from
        pizzeria
    where
        pizzeria.name = 'Dominos'),
    '2022-02-24'
);