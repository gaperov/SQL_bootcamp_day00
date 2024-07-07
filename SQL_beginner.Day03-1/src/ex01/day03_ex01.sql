SELECT
    id as menu_id
FROM
    menu
except
select
    menu_id
FROM
    person_order
order by menu_id;