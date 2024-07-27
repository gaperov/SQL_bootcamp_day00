create view v_generated_dates AS
    SELECT
        days.date as generated_date
    FROM
        generate_series(timestamp '2022-01-01', '2022-01-31', '1 day') as days
    order BY
        generated_date;