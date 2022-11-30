CREATE SEQUENCE IF NOT EXISTS public.tasks_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

CREATE TABLE IF NOT EXISTS public.tasks
(
    id          integer NOT NULL DEFAULT nextval('tasks_seq'::regclass),
    name        character varying(20) COLLATE pg_catalog."default",
    description character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT tasks_pkey PRIMARY KEY (id)
);

insert into tasks(name,description) values('task1','this is task 1');
insert into tasks(name,description) values('task2','this is task 2');
insert into tasks(name,description) values('task3','this is task 3');

select * from tasks;