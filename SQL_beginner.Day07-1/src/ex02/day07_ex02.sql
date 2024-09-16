with orders AS
    (SELECT
        pizzeria.name, count(*) as count, 'order' as action_type
    FROM
        person_order
    join menu on menu.id = person_order.menu_id
    join pizzeria on pizzeria.id = menu.pizzeria_id
    GROUP BY pizzeria.name
    order by count DESC
    limit 3),
    visits AS
    (SELECT
        pizzeria.name, count(*) as count, 'visit' as action_type
    FROM
        person_visits
    join pizzeria on pizzeria.id = person_visits.pizzeria_id
    group by pizzeria.name
    order by count DESC
    limit 3)
SELECT
    *
FROM
    orders
UNION ALL
SELECT
    *
FROM
    visits
order by action_type asc, count desc;