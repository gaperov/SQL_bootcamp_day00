comment on table person_discounts is 'Personal discount for visitors in each pizzeria';
comment on column person_discounts.id is 'ID for personal discounts';
comment on column person_discounts.person_id is 'Person ID number';
comment on column person_discounts.pizzeria_id is 'Pizzeria ID number';
comment on column person_discounts.discount is 'Discount value in percent';

SELECT obj_description(oid)
FROM pg_class
WHERE relkind = 'r'