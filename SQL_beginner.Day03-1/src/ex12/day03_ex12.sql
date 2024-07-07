insert into person_order
select
    generate_series (
        (select
            max(id) + 1
        from
            person_order),
        ((select
            max(id)
        from
            person_order) + (select
                                count(*)
                            from
                                person))
    ),
    generate_series(
        (select
            min(id)
        from
            person),
        (select
            max(id)
        from
            person)
    ),
    (select
        id
    from
        menu
    where
        menu.pizza_name = 'greek pizza'),
    timestamp '2022-02-25';