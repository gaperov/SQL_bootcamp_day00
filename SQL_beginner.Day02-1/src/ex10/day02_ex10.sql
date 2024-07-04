select
    person1.name as person_name1,
    person2.name as person_name2,
    person1.address as common_address
from
    person as person1
join person as person2 on person2.address = person1.address
where
    person1.id > person2.id
order by 1,2,3;