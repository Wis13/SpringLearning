insert into usr (id, active, password, username)
    values (1, true, '1', 'admin');

insert into user_role (user_id, roles) VALUES (1, 'USER'), (1, 'ADMIN');