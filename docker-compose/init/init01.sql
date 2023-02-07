CREATE TABLE IF NOT EXISTS public.roles
(
    id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    insert_date_time text COLLATE pg_catalog."default",
    insert_user_id text COLLATE pg_catalog."default",
    is_deleted bool,
    last_update_date_time text COLLATE pg_catalog."default",
    last_update_user_id text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default"



)

    TABLESPACE pg_default;

ALTER TABLE public.roles
    OWNER to postgres;




CREATE TABLE IF NOT EXISTS public.users
(
    id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    insert_date_time text COLLATE pg_catalog."default",
    insert_user_id text COLLATE pg_catalog."default",
    is_deleted bool,
    last_update_date_time text COLLATE pg_catalog."default",
    last_update_user_id text COLLATE pg_catalog."default",
    enabled bool,
    first_name text COLLATE pg_catalog."default",
    gender text COLLATE pg_catalog."default",
    last_name text COLLATE pg_catalog."default",
    user_name text COLLATE pg_catalog."default",
    role_id int,
    pass_word text COLLATE pg_catalog."default",
    CONSTRAINT roles_id_fkey FOREIGN KEY (role_id)
    REFERENCES public.roles (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID

    )

    TABLESPACE pg_default;

ALTER TABLE public.users
    OWNER to postgres;
