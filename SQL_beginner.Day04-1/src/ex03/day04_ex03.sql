select
    generated_date as missing_date
from
    v_generated_dates
WHERE
    generated_date not in
        (SELECT
            visit_date
        FROM
            person_visits);