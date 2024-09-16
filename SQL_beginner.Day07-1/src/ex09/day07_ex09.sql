with formula_and_avg as
    (SELECT
        address,
        round(max(age::numeric) - (min(age::numeric)/max(age::numeric)), 2) as formula,
        round(avg(age::numeric), 2) as average
    FROM
        person
    group by address)
SELECT
    *,
    formula > average as comparison
FROM
    formula_and_avg
order by 1;