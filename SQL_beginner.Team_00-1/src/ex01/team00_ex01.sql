with Recursive whole_tour as (
    -- Base part: find all routes starts with 'a'
    SELECT
        cost as total_cost,
        point1 as path,
        point1,
        point2
    FROM
        routes
    where
        point1 = 'a'
    
    UNION

    -- Recursive part: find next point in the tour
    SELECT
        parent.total_cost + child.cost,
        concat(parent.path, ',', child.point1),
        child.point1,
        child.point2
    FROM
        routes as child
    join whole_tour as parent on parent.point2 = child.point1
    where
        path not like concat('%', child.point1, '%') -- Check if already passed throug the point
)
SELECT
    total_cost,
    concat('{',path,',',point2,'}') as tour
FROM
    whole_tour
where
    point2 = 'a'
    and
    length(path) = 7 -- Path before concat in current SELECT consist of 7 symbols including letters and ','
    and
    total_cost in (
    (SELECT min(total_cost) FROM whole_tour where length(path) = 7 and point2 = 'a'),
    (SELECT max(total_cost) FROM whole_tour where length(path) = 7 and point2 = 'a')
    )
order by 1, 2;