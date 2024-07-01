select pizza_name from menu
intersect
select pizza_name from menu
order by pizza_name desc;