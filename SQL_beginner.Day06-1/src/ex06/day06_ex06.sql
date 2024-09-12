create sequence seq_person_discounts start 1;

select setval('seq_person_discounts', (select count(*) from person_discounts));

alter table person_discounts
    alter column id set default nextval('seq_person_discounts');

insert into person_discounts (person_id, pizzeria_id, discount)
values (4, 4, 15);

delete from person_discounts
where discount = 15;