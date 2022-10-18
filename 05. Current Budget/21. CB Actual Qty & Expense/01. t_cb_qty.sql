-- Table: public.t_cb_qty

-- DROP TABLE IF EXISTS public.t_cb_qty;

CREATE TABLE IF NOT EXISTS public.t_cb_qty
(
    rep_month character varying(255) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    exp_cb_mon timestamp with time zone NOT NULL,
    exp_cb_qty numeric(15,9),
    CONSTRAINT t_cb_qty_pkey PRIMARY KEY (rep_month, pc, l_1, l_2, l_3, l_4, l_5, l_6, exp_cb_mon),
    CONSTRAINT pcode FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT rep_month FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_qty
    OWNER to ictasadmin;