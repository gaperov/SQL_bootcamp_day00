select name, rating from pizzeria
left join person_visits on person_visits.pizzeria_id = pizzeria.id
where person_visits.pizzeria_id is NULL;