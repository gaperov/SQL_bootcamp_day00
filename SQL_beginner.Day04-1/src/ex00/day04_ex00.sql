CREATE VIEW v_person_female AS
    select * from person
    WHERE
        gender = 'female';
CREATE VIEW v_person_male AS
    select * from person
    WHERE
        gender = 'male';