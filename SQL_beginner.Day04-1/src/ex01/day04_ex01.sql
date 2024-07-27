select
    name
FROM
    v_person_female
union
SELECT
    NAME
FROM
    v_person_male
order BY 1;