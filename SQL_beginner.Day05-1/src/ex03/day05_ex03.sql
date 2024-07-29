create index idx_person_order_multi on person_order (person_id, menu_id, order_date);
set enable_seqscan to off;
explain analyze
SELECT
    person_id, menu_id, order_date
FROM
    person_order
where
    person_id = 8 and menu_id = 19;