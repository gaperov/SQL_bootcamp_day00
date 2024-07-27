insert into person_visits
values (
    (select max(id)+1 from person_visits),
    (select id from person where name = 'Dmitriy'),
    (select pizzeria_id from menu where price < 800 and pizzeria_id <> (
        select id from pizzeria where name = 'Papa Johns'
    ) LIMIT 1),
    '2022-01-08'
);
refresh materialized view mv_dmitriy_visits_and_eats;