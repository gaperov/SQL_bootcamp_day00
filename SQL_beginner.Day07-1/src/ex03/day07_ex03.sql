with orders AS
    (SELECT
        pizzeria.name, count(*) as total_count
    FROM
        person_order
    join menu on menu.id = person_order.menu_id
    join pizzeria on pizzeria.id = menu.pizzeria_id
    GROUP BY pizzeria.name),
    visits AS
    (SELECT
        pizzeria.name, count(*) as total_count
    FROM
        person_visits
    join pizzeria on pizzeria.id = person_visits.pizzeria_id
    group by pizzeria.name)
SELECT
    result.name, sum(result.total_count) as total_count
FROM
    (SELECT
        *
    FROM
        orders
    UNION all
    SELECT
        *
    FROM
        visits) as result
group by result.name
order by total_count desc;