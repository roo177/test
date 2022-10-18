-- Table: public.t_001_projects

-- DROP TABLE IF EXISTS public.t_001_projects;

CREATE TABLE IF NOT EXISTS public.t_001_projects
(
    r01_p_order smallint,
    p_code character varying(3) COLLATE pg_catalog."default" NOT NULL,
    r03_s_name character varying(150) COLLATE pg_catalog."default",
    r04_l_name character varying(255) COLLATE pg_catalog."default",
    r05_employer character varying(255) COLLATE pg_catalog."default",
    r06_contractor character varying(255) COLLATE pg_catalog."default",
    r07_owners_engineer character varying(255) COLLATE pg_catalog."default",
    r08_location character varying(150) COLLATE pg_catalog."default",
    r09_cont_date timestamp with time zone,
    r11_update_date timestamp with time zone,
    r12_dd_cb timestamp with time zone,
    r13_dd_ab timestamp with time zone,
    r14_pm character varying(30) COLLATE pg_catalog."default",
    r15_pm_tel character varying(25) COLLATE pg_catalog."default",
    r20_cont_type character varying(50) COLLATE pg_catalog."default",
    r21_cont_pr_1 double precision,
    r22_cont_pr_1_cr character varying(255) COLLATE pg_catalog."default",
    r23_cont_pr_2 double precision,
    r24_cont_pr_2_cr character varying(255) COLLATE pg_catalog."default",
    r25_cont_pr_3 double precision,
    r26_cont_pr_3_cr character varying(255) COLLATE pg_catalog."default",
    r31_addw_pr_1 double precision,
    r32_addw_pr_1_cr character varying(255) COLLATE pg_catalog."default",
    r33_addw_pr_2 double precision,
    r34_addw_pr_2_cr character varying(255) COLLATE pg_catalog."default",
    r35_addw_pr_3 double precision,
    r36_addw_pr_3_cr character varying(255) COLLATE pg_catalog."default",
    r40_ntp_date timestamp with time zone,
    r41_dur_project smallint,
    r42_dur_project_int character varying(10) COLLATE pg_catalog."default",
    r43_dur_te smallint,
    r44_dur_te_int character varying(10) COLLATE pg_catalog."default",
    r45_dur_oa smallint,
    r46_dur_oa_int character varying(10) COLLATE pg_catalog."default",
    r47_dur_maintenance smallint,
    r48_dur_maint_int character varying(10) COLLATE pg_catalog."default",
    r49_date_cur_end timestamp with time zone,
    r50_date_cur_oa timestamp with time zone,
    r51_mw_name_1 character varying(255) COLLATE pg_catalog."default",
    r52_mw_expln_1 character varying(255) COLLATE pg_catalog."default",
    r53_mw_name_2 character varying(255) COLLATE pg_catalog."default",
    r54_mw_expln_2 character varying(255) COLLATE pg_catalog."default",
    r55_mw_name_3 character varying(255) COLLATE pg_catalog."default",
    r56_mw_expln_3 character varying(255) COLLATE pg_catalog."default",
    r57_mw_name_4 character varying(255) COLLATE pg_catalog."default",
    r58_mw_expln_4 character varying(255) COLLATE pg_catalog."default",
    r59_mw_name_5 character varying(255) COLLATE pg_catalog."default",
    r60_mw_expln_5 character varying(255) COLLATE pg_catalog."default",
    r61_mw_name_6 character varying(255) COLLATE pg_catalog."default",
    r62_mw_expln_6 character varying(255) COLLATE pg_catalog."default",
    r63_mw_name_7 character varying(255) COLLATE pg_catalog."default",
    r64_mw_expln_7 character varying(255) COLLATE pg_catalog."default",
    r65_mw_name_8 character varying(255) COLLATE pg_catalog."default",
    r66_mw_expln_8 character varying(255) COLLATE pg_catalog."default",
    r71_designer_1 character varying(255) COLLATE pg_catalog."default",
    r72_designer_2 character varying(255) COLLATE pg_catalog."default",
    r73_designer_3 character varying(255) COLLATE pg_catalog."default",
    r75_perc_adv numeric(6,2),
    r76_perc_cmp numeric(6,2),
    r77_perc_opa numeric(6,2),
    r81_sec_dep_1 numeric(18,0),
    r82_sec_dep_1_cr character varying(5) COLLATE pg_catalog."default",
    r83_sec_dep_2 numeric(18,0),
    r84_sec_dep_2_cr character varying(5) COLLATE pg_catalog."default",
    r85_sec_dep_3 numeric(18,0),
    r86_sec_dep_3_cr character varying(5) COLLATE pg_catalog."default",
    r91_password character varying(10) COLLATE pg_catalog."default",
    r92_g_maps character varying(150) COLLATE pg_catalog."default",
    CONSTRAINT t_001_projects_pkey PRIMARY KEY (p_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_001_projects
    OWNER to ictasadmin;

GRANT ALL ON TABLE public.t_001_projects TO ictasadmin;