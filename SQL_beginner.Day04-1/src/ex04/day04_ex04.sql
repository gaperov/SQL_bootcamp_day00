create view v_symmetric_union AS
with
    R as
        (select * from person_visits
        where visit_date = '2022-01-02'),
    S AS
        (select * from person_visits
        where visit_date = '2022-01-06'),
    R_diff_S AS
        (select * from R
        except
        select * from S),
    S_diff_R AS
        (select * from S
        except
        select * from R)
select person_id from R_diff_S
union
select person_id from S_diff_R
order by 1;