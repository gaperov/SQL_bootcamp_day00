with pizza as
    (SELECT
        pizza_name, price, pizzeria_id
    FROM
        menu
    WHERE
        price between 800 and 1000),
    visit AS
    (SELECT
        visit_date, pizzeria_id
    FROM
        person_visits
    JOIN
        person on person.id = person_visits.person_id
    WHERE
        person.name = 'Kate')
SELECT
    pizza_name,
    price,
    (select
        name as pizzeria_name
    FROM
        pizzeria
    WHERE
        pizzeria.id = visit.pizzeria_id),
    visit.visit_date
FROM
    pizza
join visit on visit.pizzeria_id = pizza.pizzeria_id
order by 1, 2, 3;