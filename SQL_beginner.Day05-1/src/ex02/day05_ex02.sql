create index idx_person_name on person (UPPER(name));
set enable_seqscan to off;
explain analyze SELECT
                    *
                FROM
                    person
                where UPPER(name) = 'DMITRIY';