set enable_seqscan to off; --отключает использование планировщиком планов последовательного сканирования

explain analyze SELECT
    pizza_name, pizzeria.name as pizzeria_name
FROM
    menu
join pizzeria on pizzeria.id = menu.pizzeria_id;